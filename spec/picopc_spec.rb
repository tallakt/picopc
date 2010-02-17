require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

MATRIKON = 'Matrikon.OPC.Simulation'

describe PicOpc do
  it 'Should be able to read a tag from Matrikon.OPC.Simulator' do
    po = PicOpc::Client.new MATRIKON
    po.read('Random.Int1').should_not be_nil
    po['Random.Int1'].should_not be_nil
  end
  it 'Should be able to write a tag from Matrikon.OPC.Simulator' do
    tag = 'Bucket Brigade.String'
    po = PicOpc::Client.new MATRIKON
    po.write(tag, 'Hello')
    po[tag].should == 'Hello'
    po.write(tag, 'There')
    po[tag].should == 'There'
    po[tag] = 'Folks'
    po[tag].should == 'Folks'
  end

  it 'Should let through exceptions when passing block' do
    lambda {
      PicOpc.connect MATRIKON do |matrikon|
        raise 'ok'
      end
    }.should raise_exception(RuntimeError) {|ex| ex.message.should == 'ok' }
  end

  it 'Should should return types of the correct type' do
    PicOpc.connect MATRIKON do |m|
      [true, false].should be_member m['Random.Boolean']
      m['Random.Int1'].should be_a_kind_of(Fixnum)
      m['Random.Real8'].should be_a_kind_of(Float)
      m['Random.String'].should be_a_kind_of(String)
      m['Random.String'].should be_a_kind_of(String)
      tmp = m['Random.ArrayOfString']
      tmp.should be_a_kind_of(Array)
      tmp.first.should be_a_kind_of(String)
    end
  end

  it 'Should support reading tags created with the tag function' do
    PicOpc.connect MATRIKON do |m|
      m.tag :int, 'Random.Int1'
      m.int.should be_a_kind_of(Fixnum)
    end
  end

  it 'Should support writing tags created with the tag function' do
    PicOpc.connect MATRIKON do |m|
      m.tag :int, 'Bucket Brigade.Int1'
      m.int = 5
      m.int.should == 5
      m.int = 6
      m.int.should == 6
    end
  end
end
