#!/usr/bin/env ruby

# http://www.ruby-forum.com/topic/61294

require 'win32ole'
require File.dirname(__FILE__) + "/olegen_opc_automation"

module PicOpc
  class PicOpcException < StandardError
    attr_reader :cause

    def initialize cause
      @cause = cause
    end

    def self.[](e)
      raise e if e.class == PicOpcException
      e2 = new(e)
      raise e2, "OPC/OLE Exception: #{e.message}", e.backtrace
    end
  end

  def PicOpc.connect(opc_server_name, options = {})
    po = Client.new opc_server_name, options
    begin
      yield po
    ensure
      po.cleanup
    end
  end

  class Client

    def initialize(opc_server_name, options = {}) 
      begin
        @opc_automation = OPC_Automation_1.new
        @opc_automation.Connect opc_server_name, 'localhost'
        @groups = @opc_automation.OPCGroups
        @group = @groups.add 'picopc_group'
        @opc_items = @group.OPCItems
        @items = {}
        @handle = 1
        if options[:cache]
          @source = OPCDataSource::OPCCache
        else
          @source = OPCDataSource::OPCDevice
        end
        @prefix = options[:prefix].to_s || ''
      rescue Exception => e
        PicOpcException[e] # wrap all exceptions in this type
      end
    end

    def cleanup
      begin
        @groups.RemoveAll
        @opc_automation.Disconnect
      rescue Exception => e
        PicOpcException[e] # wrap all exceptions in this type
      end
    end

    def add_item(name)
      if not @items.key? name
        @items[name] = @opc_items.AddItem(@prefix + name, @handle)
        @handle += 1
      end
      @items[name]
    end


    def read(name)
      begin
        item = add_item name
        return_value = WIN32OLE_VARIANT.new 0, WIN32OLE::VARIANT::VT_VARIANT|WIN32OLE::VARIANT::VT_BYREF
        item.read @source, return_value
        return_value.value
      rescue Exception => e
        PicOpcException[e] # wrap all exceptions in this type
      end
    end


    def write(name, value)
      begin
        item = add_item name
        item.write value
      rescue Exception => e
        PicOpcException[e] # wrap all exceptions in this type
      end
    end

    def [](name)
      read name
    end

    def []=(name, value)
      write name, value
    end

    def tag(name, reference) 
      # Get a handle to the singleton class of obj
      metaclass = class << self; self; end

      metaclass.send :define_method, name do
        read reference
      end

      metaclass.send :define_method, (name.to_s + '=').to_sym do |value|
        write reference, value
      end
    end
  end
end
