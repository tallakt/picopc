require 'win32ole'
require 'win32ole/property'

# 
module OPCNamespaceTypes
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  OPCHierarchical = 1
  OPCFlat = 2
end

# 
module OPCDataSource
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  OPCCache = 1
  OPCDevice = 2
end

# 
module OPCAccessRights
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  OPCReadable = 1
  OPCWritable = 2
end

# 
module OPCServerState
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  OPCRunning = 1
  OPCFailed = 2
  OPCNoconfig = 3
  OPCSuspended = 4
  OPCTest = 5
  OPCDisconnected = 6
end

# 
module OPCErrors
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  OPCInvalidHandle = -1073479679
  OPCBadType = -1073479676
  OPCPublic = -1073479675
  OPCBadRights = -1073479674
  OPCUnknownItemID = -1073479673
  OPCInvalidItemID = -1073479672
  OPCInvalidFilter = -1073479671
  OPCUnknownPath = -1073479670
  OPCRange = -1073479669
  OPCDuplicateName = -1073479668
  OPCUnsupportedRate = 262157
  OPCClamp = 262158
  OPCInuse = 262159
  OPCInvalidConfig = -1073479664
  OPCNotFound = -1073479663
  OPCInvalidPID = -1073479165
end

# 
module OPCQuality
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  OPCQualityMask = 192
  OPCQualityBad = 0
  OPCQualityUncertain = 64
  OPCQualityGood = 192
end

# 
module OPCQualityStatus
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  OPCStatusMask = 252
  OPCStatusConfigError = 4
  OPCStatusNotConnected = 8
  OPCStatusDeviceFailure = 12
  OPCStatusSensorFailure = 16
  OPCStatusLastKnown = 20
  OPCStatusCommFailure = 24
  OPCStatusOutOfService = 28
  OPCStatusLastUsable = 68
  OPCStatusSensorCal = 80
  OPCStatusEGUExceeded = 84
  OPCStatusSubNormal = 88
  OPCStatusLocalOverride = 216
end

# 
module OPCQualityLimits
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  OPCLimitMask = 3
  OPCLimitOk = 0
  OPCLimitLow = 1
  OPCLimitHigh = 2
  OPCLimitConst = 3
end

# OPCServer Object
module IOPCAutoServer
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # DATE StartTime
  # Time the Server Started
  def StartTime()
    ret = _getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # DATE CurrentTime
  def CurrentTime()
    ret = _getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # DATE LastUpdateTime
  # Last time the server sent data
  def LastUpdateTime()
    ret = _getproperty(1610743810, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 MajorVersion
  def MajorVersion()
    ret = _getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 MinorVersion
  def MinorVersion()
    ret = _getproperty(1610743812, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 BuildNumber
  def BuildNumber()
    ret = _getproperty(1610743813, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR VendorInfo
  # Server Vendor's name
  def VendorInfo()
    ret = _getproperty(1610743814, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 ServerState
  # Returns an OPCServerState
  def ServerState()
    ret = _getproperty(1610743815, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR ServerName
  # Returns this server's name
  def ServerName()
    ret = _getproperty(1610743816, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR ServerNode
  # Returns this server's node
  def ServerNode()
    ret = _getproperty(1610743817, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR ClientName
  # Identify the client
  def ClientName()
    ret = _getproperty(1610743818, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 LocaleID
  def LocaleID()
    ret = _getproperty(1610743820, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 Bandwidth
  # Might possibly be Percent utilization
  def Bandwidth()
    ret = _getproperty(1610743822, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroups OPCGroups
  # The collection of OPCGroup Objects
  def OPCGroups()
    ret = _getproperty(0, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT PublicGroupNames
  # Returns an array of names
  def PublicGroupNames()
    ret = _getproperty(1610743824, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID ClientName
  # Identify the client
  def ClientName=(arg0)
    ret = _setproperty(1610743818, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID LocaleID
  def LocaleID=(arg0)
    ret = _setproperty(1610743820, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT GetOPCServers
  # Returns an array of Server names, optionally on another node
  #   VARIANT arg0 --- Node [IN]
  def GetOPCServers(arg0=nil)
    ret = _invoke(1610743825, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Connect
  # Connect to a named OPC Server
  #   BSTR arg0 --- ProgID [IN]
  #   VARIANT arg1 --- Node [IN]
  def Connect(arg0, arg1=nil)
    ret = _invoke(1610743826, [arg0, arg1], [VT_BSTR, VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Disconnect
  # End Connection with OPC Server
  def Disconnect()
    ret = _invoke(1610743827, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCBrowser CreateBrowser
  # Create a new OPCBrowser Object
  def CreateBrowser()
    ret = _invoke(1610743828, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR GetErrorString
  # Convert an error code to a descriptive string
  #   I4 arg0 --- ErrorCode [IN]
  def GetErrorString(arg0)
    ret = _invoke(1610743829, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT QueryAvailableLocaleIDs
  # The LocaleIDs supported by this server
  def QueryAvailableLocaleIDs()
    ret = _invoke(1610743830, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID QueryAvailableProperties
  #   BSTR arg0 --- ItemID [IN]
  #   I4 arg1 --- Count [OUT]
  #   I4 arg2 --- PropertyIDs [OUT]
  #   BSTR arg3 --- Descriptions [OUT]
  #   I2 arg4 --- DataTypes [OUT]
  def QueryAvailableProperties(arg0, arg1, arg2, arg3, arg4)
    ret = _invoke(1610743831, [arg0, arg1, arg2, arg3, arg4], [VT_BSTR, VT_BYREF|VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_BSTR, VT_BYREF|VT_ARRAY|VT_I2])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID GetItemProperties
  #   BSTR arg0 --- ItemID [IN]
  #   I4 arg1 --- Count [IN]
  #   I4 arg2 --- PropertyIDs [IN]
  #   VARIANT arg3 --- PropertyValues [OUT]
  #   I4 arg4 --- Errors [OUT]
  def GetItemProperties(arg0, arg1, arg2, arg3, arg4)
    ret = _invoke(1610743832, [arg0, arg1, arg2, arg3, arg4], [VT_BSTR, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID LookupItemIDs
  #   BSTR arg0 --- ItemID [IN]
  #   I4 arg1 --- Count [IN]
  #   I4 arg2 --- PropertyIDs [IN]
  #   BSTR arg3 --- NewItemIDs [OUT]
  #   I4 arg4 --- Errors [OUT]
  def LookupItemIDs(arg0, arg1, arg2, arg3, arg4)
    ret = _invoke(1610743833, [arg0, arg1, arg2, arg3, arg4], [VT_BSTR, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_BSTR, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Automation Groups Collection
module OPCGroups
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # IOPCAutoServer Parent
  # Returns the parent OPCServer
  def Parent()
    ret = _getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL DefaultGroupIsActive
  def DefaultGroupIsActive()
    ret = _getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 DefaultGroupUpdateRate
  def DefaultGroupUpdateRate()
    ret = _getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # R4 DefaultGroupDeadband
  def DefaultGroupDeadband()
    ret = _getproperty(1610743813, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 DefaultGroupLocaleID
  def DefaultGroupLocaleID()
    ret = _getproperty(1610743815, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 DefaultGroupTimeBias
  def DefaultGroupTimeBias()
    ret = _getproperty(1610743817, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 Count
  # Number of items in the Collection
  def Count()
    ret = _getproperty(1610743819, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupIsActive
  def DefaultGroupIsActive=(arg0)
    ret = _setproperty(1610743809, [arg0], [VT_BOOL])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupUpdateRate
  def DefaultGroupUpdateRate=(arg0)
    ret = _setproperty(1610743811, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupDeadband
  def DefaultGroupDeadband=(arg0)
    ret = _setproperty(1610743813, [arg0], [VT_R4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupLocaleID
  def DefaultGroupLocaleID=(arg0)
    ret = _setproperty(1610743815, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupTimeBias
  def DefaultGroupTimeBias=(arg0)
    ret = _setproperty(1610743817, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroup Item
  # Returns an OPCGroup by index (starts at 1) or name
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def Item(arg0)
    ret = _invoke(0, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroup Add
  # Adds an OPCGroup to the collection
  #   VARIANT arg0 --- Name [IN]
  def Add(arg0=nil)
    ret = _invoke(1610743822, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroup GetOPCGroup
  # Returns an OPCGroup specified by server handle or name
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def GetOPCGroup(arg0)
    ret = _invoke(1610743823, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID RemoveAll
  # Remove all groups and their items
  def RemoveAll()
    ret = _invoke(1610743824, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Remove
  # Removes an OPCGroup specified by server handle or name
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def Remove(arg0)
    ret = _invoke(1610743825, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroup ConnectPublicGroup
  # Adds an existing public OPCGroup to the collection
  #   BSTR arg0 --- Name [IN]
  def ConnectPublicGroup(arg0)
    ret = _invoke(1610743826, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID RemovePublicGroup
  # Removes a public OPCGroup specified by server handle or name
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def RemovePublicGroup(arg0)
    ret = _invoke(1610743827, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID GlobalDataChange EVENT in DIOPCGroupsEvent
  #   I4 arg0 --- TransactionID [IN]
  #   I4 arg1 --- GroupHandle [IN]
  #   I4 arg2 --- NumItems [IN]
  #   I4 arg3 --- ClientHandles [IN]
  #   VARIANT arg4 --- ItemValues [IN]
  #   I4 arg5 --- Qualities [IN]
  #   DATE arg6 --- TimeStamps [IN]
  def GlobalDataChange(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    ret = _invoke(1, [arg0, arg1, arg2, arg3, arg4, arg5, arg6], [VT_I4, VT_I4, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_DATE])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# Collection of OPC Group objects
module IOPCGroups
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # IOPCAutoServer Parent
  # Returns the parent OPCServer
  def Parent()
    ret = _getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL DefaultGroupIsActive
  def DefaultGroupIsActive()
    ret = _getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 DefaultGroupUpdateRate
  def DefaultGroupUpdateRate()
    ret = _getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # R4 DefaultGroupDeadband
  def DefaultGroupDeadband()
    ret = _getproperty(1610743813, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 DefaultGroupLocaleID
  def DefaultGroupLocaleID()
    ret = _getproperty(1610743815, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 DefaultGroupTimeBias
  def DefaultGroupTimeBias()
    ret = _getproperty(1610743817, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 Count
  # Number of items in the Collection
  def Count()
    ret = _getproperty(1610743819, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupIsActive
  def DefaultGroupIsActive=(arg0)
    ret = _setproperty(1610743809, [arg0], [VT_BOOL])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupUpdateRate
  def DefaultGroupUpdateRate=(arg0)
    ret = _setproperty(1610743811, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupDeadband
  def DefaultGroupDeadband=(arg0)
    ret = _setproperty(1610743813, [arg0], [VT_R4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupLocaleID
  def DefaultGroupLocaleID=(arg0)
    ret = _setproperty(1610743815, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultGroupTimeBias
  def DefaultGroupTimeBias=(arg0)
    ret = _setproperty(1610743817, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroup Item
  # Returns an OPCGroup by index (starts at 1) or name
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def Item(arg0)
    ret = _invoke(0, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroup Add
  # Adds an OPCGroup to the collection
  #   VARIANT arg0 --- Name [IN]
  def Add(arg0=nil)
    ret = _invoke(1610743822, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroup GetOPCGroup
  # Returns an OPCGroup specified by server handle or name
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def GetOPCGroup(arg0)
    ret = _invoke(1610743823, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID RemoveAll
  # Remove all groups and their items
  def RemoveAll()
    ret = _invoke(1610743824, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Remove
  # Removes an OPCGroup specified by server handle or name
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def Remove(arg0)
    ret = _invoke(1610743825, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroup ConnectPublicGroup
  # Adds an existing public OPCGroup to the collection
  #   BSTR arg0 --- Name [IN]
  def ConnectPublicGroup(arg0)
    ret = _invoke(1610743826, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID RemovePublicGroup
  # Removes a public OPCGroup specified by server handle or name
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def RemovePublicGroup(arg0)
    ret = _invoke(1610743827, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Automation Group
module OPCGroup
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # IOPCAutoServer Parent
  # Returns the parent OPCServer
  def Parent()
    ret = _getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR Name
  def Name()
    ret = _getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL IsPublic
  # True if this group is public
  def IsPublic()
    ret = _getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL IsActive
  # True if this group is active
  def IsActive()
    ret = _getproperty(1610743812, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL IsSubscribed
  # True if this group will get asynchronous data updates
  def IsSubscribed()
    ret = _getproperty(1610743814, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 ClientHandle
  def ClientHandle()
    ret = _getproperty(1610743816, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 ServerHandle
  def ServerHandle()
    ret = _getproperty(1610743818, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 LocaleID
  def LocaleID()
    ret = _getproperty(1610743819, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 TimeBias
  def TimeBias()
    ret = _getproperty(1610743821, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # R4 DeadBand
  def DeadBand()
    ret = _getproperty(1610743823, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 UpdateRate
  # Rate data can be returned to an application (in mSec)
  def UpdateRate()
    ret = _getproperty(1610743825, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCItems OPCItems
  # Returns the OPCItems collection
  def OPCItems()
    ret = _getproperty(0, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Name
  def Name=(arg0)
    ret = _setproperty(1610743809, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID IsActive
  # True if this group is active
  def IsActive=(arg0)
    ret = _setproperty(1610743812, [arg0], [VT_BOOL])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID IsSubscribed
  # True if this group will get asynchronous data updates
  def IsSubscribed=(arg0)
    ret = _setproperty(1610743814, [arg0], [VT_BOOL])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID ClientHandle
  def ClientHandle=(arg0)
    ret = _setproperty(1610743816, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID LocaleID
  def LocaleID=(arg0)
    ret = _setproperty(1610743819, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID TimeBias
  def TimeBias=(arg0)
    ret = _setproperty(1610743821, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DeadBand
  def DeadBand=(arg0)
    ret = _setproperty(1610743823, [arg0], [VT_R4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID UpdateRate
  # Rate data can be returned to an application (in mSec)
  def UpdateRate=(arg0)
    ret = _setproperty(1610743825, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID SyncRead
  #   I2 arg0 --- Source [IN]
  #   I4 arg1 --- NumItems [IN]
  #   I4 arg2 --- ServerHandles [IN]
  #   VARIANT arg3 --- Values [OUT]
  #   I4 arg4 --- Errors [OUT]
  #   VARIANT arg5 --- Qualities [OUT]
  #   VARIANT arg6 --- TimeStamps [OUT]
  def SyncRead(arg0, arg1, arg2, arg3, arg4, arg5=nil, arg6=nil)
    ret = _invoke(1610743828, [arg0, arg1, arg2, arg3, arg4, arg5, arg6], [VT_I2, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_VARIANT, VT_BYREF|VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID SyncWrite
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   VARIANT arg2 --- Values [IN]
  #   I4 arg3 --- Errors [OUT]
  def SyncWrite(arg0, arg1, arg2, arg3)
    ret = _invoke(1610743829, [arg0, arg1, arg2, arg3], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncRead
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   I4 arg2 --- Errors [OUT]
  #   I4 arg3 --- TransactionID [IN]
  #   I4 arg4 --- CancelID [OUT]
  def AsyncRead(arg0, arg1, arg2, arg3, arg4)
    ret = _invoke(1610743830, [arg0, arg1, arg2, arg3, arg4], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_I4, VT_BYREF|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncWrite
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   VARIANT arg2 --- Values [IN]
  #   I4 arg3 --- Errors [OUT]
  #   I4 arg4 --- TransactionID [IN]
  #   I4 arg5 --- CancelID [OUT]
  def AsyncWrite(arg0, arg1, arg2, arg3, arg4, arg5)
    ret = _invoke(1610743831, [arg0, arg1, arg2, arg3, arg4, arg5], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_I4, VT_BYREF|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncRefresh
  #   I2 arg0 --- Source [IN]
  #   I4 arg1 --- TransactionID [IN]
  #   I4 arg2 --- CancelID [OUT]
  def AsyncRefresh(arg0, arg1, arg2)
    ret = _invoke(1610743832, [arg0, arg1, arg2], [VT_I2, VT_I4, VT_BYREF|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncCancel
  #   I4 arg0 --- CancelID [IN]
  def AsyncCancel(arg0)
    ret = _invoke(1610743833, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DataChange EVENT in DIOPCGroupEvent
  #   I4 arg0 --- TransactionID [IN]
  #   I4 arg1 --- NumItems [IN]
  #   I4 arg2 --- ClientHandles [IN]
  #   VARIANT arg3 --- ItemValues [IN]
  #   I4 arg4 --- Qualities [IN]
  #   DATE arg5 --- TimeStamps [IN]
  def DataChange(arg0, arg1, arg2, arg3, arg4, arg5)
    ret = _invoke(1, [arg0, arg1, arg2, arg3, arg4, arg5], [VT_I4, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_DATE])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncReadComplete EVENT in DIOPCGroupEvent
  #   I4 arg0 --- TransactionID [IN]
  #   I4 arg1 --- NumItems [IN]
  #   I4 arg2 --- ClientHandles [IN]
  #   VARIANT arg3 --- ItemValues [IN]
  #   I4 arg4 --- Qualities [IN]
  #   DATE arg5 --- TimeStamps [IN]
  #   I4 arg6 --- Errors [IN]
  def AsyncReadComplete(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    ret = _invoke(2, [arg0, arg1, arg2, arg3, arg4, arg5, arg6], [VT_I4, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_DATE, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncWriteComplete EVENT in DIOPCGroupEvent
  #   I4 arg0 --- TransactionID [IN]
  #   I4 arg1 --- NumItems [IN]
  #   I4 arg2 --- ClientHandles [IN]
  #   I4 arg3 --- Errors [IN]
  def AsyncWriteComplete(arg0, arg1, arg2, arg3)
    ret = _invoke(3, [arg0, arg1, arg2, arg3], [VT_I4, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncCancelComplete EVENT in DIOPCGroupEvent
  #   I4 arg0 --- CancelID [IN]
  def AsyncCancelComplete(arg0)
    ret = _invoke(4, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Group Object
module IOPCGroup
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # IOPCAutoServer Parent
  # Returns the parent OPCServer
  def Parent()
    ret = _getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR Name
  def Name()
    ret = _getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL IsPublic
  # True if this group is public
  def IsPublic()
    ret = _getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL IsActive
  # True if this group is active
  def IsActive()
    ret = _getproperty(1610743812, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL IsSubscribed
  # True if this group will get asynchronous data updates
  def IsSubscribed()
    ret = _getproperty(1610743814, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 ClientHandle
  def ClientHandle()
    ret = _getproperty(1610743816, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 ServerHandle
  def ServerHandle()
    ret = _getproperty(1610743818, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 LocaleID
  def LocaleID()
    ret = _getproperty(1610743819, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 TimeBias
  def TimeBias()
    ret = _getproperty(1610743821, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # R4 DeadBand
  def DeadBand()
    ret = _getproperty(1610743823, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 UpdateRate
  # Rate data can be returned to an application (in mSec)
  def UpdateRate()
    ret = _getproperty(1610743825, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCItems OPCItems
  # Returns the OPCItems collection
  def OPCItems()
    ret = _getproperty(0, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Name
  def Name=(arg0)
    ret = _setproperty(1610743809, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID IsActive
  # True if this group is active
  def IsActive=(arg0)
    ret = _setproperty(1610743812, [arg0], [VT_BOOL])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID IsSubscribed
  # True if this group will get asynchronous data updates
  def IsSubscribed=(arg0)
    ret = _setproperty(1610743814, [arg0], [VT_BOOL])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID ClientHandle
  def ClientHandle=(arg0)
    ret = _setproperty(1610743816, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID LocaleID
  def LocaleID=(arg0)
    ret = _setproperty(1610743819, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID TimeBias
  def TimeBias=(arg0)
    ret = _setproperty(1610743821, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DeadBand
  def DeadBand=(arg0)
    ret = _setproperty(1610743823, [arg0], [VT_R4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID UpdateRate
  # Rate data can be returned to an application (in mSec)
  def UpdateRate=(arg0)
    ret = _setproperty(1610743825, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID SyncRead
  #   I2 arg0 --- Source [IN]
  #   I4 arg1 --- NumItems [IN]
  #   I4 arg2 --- ServerHandles [IN]
  #   VARIANT arg3 --- Values [OUT]
  #   I4 arg4 --- Errors [OUT]
  #   VARIANT arg5 --- Qualities [OUT]
  #   VARIANT arg6 --- TimeStamps [OUT]
  def SyncRead(arg0, arg1, arg2, arg3, arg4, arg5=nil, arg6=nil)
    ret = _invoke(1610743828, [arg0, arg1, arg2, arg3, arg4, arg5, arg6], [VT_I2, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_VARIANT, VT_BYREF|VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID SyncWrite
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   VARIANT arg2 --- Values [IN]
  #   I4 arg3 --- Errors [OUT]
  def SyncWrite(arg0, arg1, arg2, arg3)
    ret = _invoke(1610743829, [arg0, arg1, arg2, arg3], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncRead
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   I4 arg2 --- Errors [OUT]
  #   I4 arg3 --- TransactionID [IN]
  #   I4 arg4 --- CancelID [OUT]
  def AsyncRead(arg0, arg1, arg2, arg3, arg4)
    ret = _invoke(1610743830, [arg0, arg1, arg2, arg3, arg4], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_I4, VT_BYREF|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncWrite
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   VARIANT arg2 --- Values [IN]
  #   I4 arg3 --- Errors [OUT]
  #   I4 arg4 --- TransactionID [IN]
  #   I4 arg5 --- CancelID [OUT]
  def AsyncWrite(arg0, arg1, arg2, arg3, arg4, arg5)
    ret = _invoke(1610743831, [arg0, arg1, arg2, arg3, arg4, arg5], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_I4, VT_BYREF|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncRefresh
  #   I2 arg0 --- Source [IN]
  #   I4 arg1 --- TransactionID [IN]
  #   I4 arg2 --- CancelID [OUT]
  def AsyncRefresh(arg0, arg1, arg2)
    ret = _invoke(1610743832, [arg0, arg1, arg2], [VT_I2, VT_I4, VT_BYREF|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncCancel
  #   I4 arg0 --- CancelID [IN]
  def AsyncCancel(arg0)
    ret = _invoke(1610743833, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# Collection of OPC Item objects
module OPCItems
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # OPCGroup Parent
  # Returns the parent OPCGroup
  def Parent()
    ret = _getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 DefaultRequestedDataType
  def DefaultRequestedDataType()
    ret = _getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR DefaultAccessPath
  def DefaultAccessPath()
    ret = _getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL DefaultIsActive
  def DefaultIsActive()
    ret = _getproperty(1610743813, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 Count
  # Number of items in the Collection
  def Count()
    ret = _getproperty(1610743815, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultRequestedDataType
  def DefaultRequestedDataType=(arg0)
    ret = _setproperty(1610743809, [arg0], [VT_I2])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultAccessPath
  def DefaultAccessPath=(arg0)
    ret = _setproperty(1610743811, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DefaultIsActive
  def DefaultIsActive=(arg0)
    ret = _setproperty(1610743813, [arg0], [VT_BOOL])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCItem Item
  # Returns an OPCItem by index (starts at 1)
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def Item(arg0)
    ret = _invoke(0, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCItem GetOPCItem
  # Returns an OPCItem specified by server handle
  #   I4 arg0 --- ServerHandle [IN]
  def GetOPCItem(arg0)
    ret = _invoke(1610743818, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCItem AddItem
  # Adds an OPCItem object to the collection
  #   BSTR arg0 --- ItemID [IN]
  #   I4 arg1 --- ClientHandle [IN]
  def AddItem(arg0, arg1)
    ret = _invoke(1610743819, [arg0, arg1], [VT_BSTR, VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AddItems
  # Adds OPCItem objects to the collection
  #   I4 arg0 --- NumItems [IN]
  #   BSTR arg1 --- ItemIDs [IN]
  #   I4 arg2 --- ClientHandles [IN]
  #   I4 arg3 --- ServerHandles [OUT]
  #   I4 arg4 --- Errors [OUT]
  #   VARIANT arg5 --- RequestedDataTypes [IN]
  #   VARIANT arg6 --- AccessPaths [IN]
  def AddItems(arg0, arg1, arg2, arg3, arg4, arg5=nil, arg6=nil)
    ret = _invoke(1610743820, [arg0, arg1, arg2, arg3, arg4, arg5, arg6], [VT_I4, VT_BYREF|VT_ARRAY|VT_BSTR, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_VARIANT, VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Remove
  # Removes OPCItem objects from the collection
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   I4 arg2 --- Errors [OUT]
  def Remove(arg0, arg1, arg2)
    ret = _invoke(1610743821, [arg0, arg1, arg2], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Validate
  # ?
  #   I4 arg0 --- NumItems [IN]
  #   BSTR arg1 --- ItemIDs [IN]
  #   I4 arg2 --- Errors [OUT]
  #   VARIANT arg3 --- RequestedDataTypes [IN]
  #   VARIANT arg4 --- AccessPaths [IN]
  def Validate(arg0, arg1, arg2, arg3=nil, arg4=nil)
    ret = _invoke(1610743822, [arg0, arg1, arg2, arg3, arg4], [VT_I4, VT_BYREF|VT_ARRAY|VT_BSTR, VT_BYREF|VT_ARRAY|VT_I4, VT_VARIANT, VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID SetActive
  # Set the active state of OPCItem objects
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   BOOL arg2 --- ActiveState [IN]
  #   I4 arg3 --- Errors [OUT]
  def SetActive(arg0, arg1, arg2, arg3)
    ret = _invoke(1610743823, [arg0, arg1, arg2, arg3], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BOOL, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID SetClientHandles
  # Set the Client handles of OPCItem objects
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   I4 arg2 --- ClientHandles [IN]
  #   I4 arg3 --- Errors [OUT]
  def SetClientHandles(arg0, arg1, arg2, arg3)
    ret = _invoke(1610743824, [arg0, arg1, arg2, arg3], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID SetDataTypes
  # Set the Data Types of OPCItem objects
  #   I4 arg0 --- NumItems [IN]
  #   I4 arg1 --- ServerHandles [IN]
  #   I4 arg2 --- RequestedDataTypes [IN]
  #   I4 arg3 --- Errors [OUT]
  def SetDataTypes(arg0, arg1, arg2, arg3)
    ret = _invoke(1610743825, [arg0, arg1, arg2, arg3], [VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Item object
module OPCItem
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # OPCGroup Parent
  # Returns the parent OPCGroup
  def Parent()
    ret = _getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 ClientHandle
  def ClientHandle()
    ret = _getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 ServerHandle
  def ServerHandle()
    ret = _getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR AccessPath
  def AccessPath()
    ret = _getproperty(1610743812, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 AccessRights
  def AccessRights()
    ret = _getproperty(1610743813, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR ItemID
  def ItemID()
    ret = _getproperty(1610743814, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BOOL IsActive
  def IsActive()
    ret = _getproperty(1610743815, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 RequestedDataType
  def RequestedDataType()
    ret = _getproperty(1610743817, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT Value
  def Value()
    ret = _getproperty(0, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 Quality
  def Quality()
    ret = _getproperty(1610743820, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # DATE TimeStamp
  def TimeStamp()
    ret = _getproperty(1610743821, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 CanonicalDataType
  def CanonicalDataType()
    ret = _getproperty(1610743822, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 EUType
  def EUType()
    ret = _getproperty(1610743823, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT EUInfo
  def EUInfo()
    ret = _getproperty(1610743824, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID ClientHandle
  def ClientHandle=(arg0)
    ret = _setproperty(1610743809, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID IsActive
  def IsActive=(arg0)
    ret = _setproperty(1610743815, [arg0], [VT_BOOL])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID RequestedDataType
  def RequestedDataType=(arg0)
    ret = _setproperty(1610743817, [arg0], [VT_I2])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Read
  #   I2 arg0 --- Source [IN]
  #   VARIANT arg1 --- Value [OUT]
  #   VARIANT arg2 --- Quality [OUT]
  #   VARIANT arg3 --- TimeStamp [OUT]
  def Read(arg0, arg1=nil, arg2=nil, arg3=nil)
    ret = _invoke(1610743825, [arg0, arg1, arg2, arg3], [VT_I2, VT_BYREF|VT_VARIANT, VT_BYREF|VT_VARIANT, VT_BYREF|VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Write
  #   VARIANT arg0 --- Value [IN]
  def Write(arg0)
    ret = _invoke(1610743826, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Group Events
module DIOPCGroupEvent
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # VOID DataChange
  #   I4 arg0 --- TransactionID [IN]
  #   I4 arg1 --- NumItems [IN]
  #   I4 arg2 --- ClientHandles [IN]
  #   VARIANT arg3 --- ItemValues [IN]
  #   I4 arg4 --- Qualities [IN]
  #   DATE arg5 --- TimeStamps [IN]
  def DataChange(arg0, arg1, arg2, arg3, arg4, arg5)
    ret = _invoke(1, [arg0, arg1, arg2, arg3, arg4, arg5], [VT_I4, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_DATE])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncReadComplete
  #   I4 arg0 --- TransactionID [IN]
  #   I4 arg1 --- NumItems [IN]
  #   I4 arg2 --- ClientHandles [IN]
  #   VARIANT arg3 --- ItemValues [IN]
  #   I4 arg4 --- Qualities [IN]
  #   DATE arg5 --- TimeStamps [IN]
  #   I4 arg6 --- Errors [IN]
  def AsyncReadComplete(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    ret = _invoke(2, [arg0, arg1, arg2, arg3, arg4, arg5, arg6], [VT_I4, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_DATE, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncWriteComplete
  #   I4 arg0 --- TransactionID [IN]
  #   I4 arg1 --- NumItems [IN]
  #   I4 arg2 --- ClientHandles [IN]
  #   I4 arg3 --- Errors [IN]
  def AsyncWriteComplete(arg0, arg1, arg2, arg3)
    ret = _invoke(3, [arg0, arg1, arg2, arg3], [VT_I4, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AsyncCancelComplete
  #   I4 arg0 --- CancelID [IN]
  def AsyncCancelComplete(arg0)
    ret = _invoke(4, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Groups Event
module DIOPCGroupsEvent
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # VOID GlobalDataChange
  #   I4 arg0 --- TransactionID [IN]
  #   I4 arg1 --- GroupHandle [IN]
  #   I4 arg2 --- NumItems [IN]
  #   I4 arg3 --- ClientHandles [IN]
  #   VARIANT arg4 --- ItemValues [IN]
  #   I4 arg5 --- Qualities [IN]
  #   DATE arg6 --- TimeStamps [IN]
  def GlobalDataChange(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
    ret = _invoke(1, [arg0, arg1, arg2, arg3, arg4, arg5, arg6], [VT_I4, VT_I4, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_DATE])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Browser
module OPCBrowser
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # I4 Organization
  # Returns one of OPCNamespaceTypes
  def Organization()
    ret = _getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR Filter
  # Filter narrows the search results
  def Filter()
    ret = _getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 DataType
  # Data type used in ShowLeafs (any Variant type)
  def DataType()
    ret = _getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 AccessRights
  # Access Rights used in ShowLeafs ()
  def AccessRights()
    ret = _getproperty(1610743813, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR CurrentPosition
  # Position in the Tree
  def CurrentPosition()
    ret = _getproperty(1610743815, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 Count
  # Number of items in the Collection
  def Count()
    ret = _getproperty(1610743816, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Filter
  # Filter narrows the search results
  def Filter=(arg0)
    ret = _setproperty(1610743809, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID DataType
  # Data type used in ShowLeafs (any Variant type)
  def DataType=(arg0)
    ret = _setproperty(1610743811, [arg0], [VT_I2])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID AccessRights
  # Access Rights used in ShowLeafs ()
  def AccessRights=(arg0)
    ret = _setproperty(1610743813, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR Item
  #   VARIANT arg0 --- ItemSpecifier [IN]
  def Item(arg0)
    ret = _invoke(1610743818, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID ShowBranches
  # Get all of the branch names that match the filter
  def ShowBranches()
    ret = _invoke(1610743819, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID ShowLeafs
  # Get all of the leaf names that match the filter
  #   VARIANT arg0 --- Flat [IN]
  def ShowLeafs(arg0=nil)
    ret = _invoke(1610743820, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID MoveUp
  # Move up a level in the tree
  def MoveUp()
    ret = _invoke(1610743821, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID MoveToRoot
  # Move up to the top (root) of the tree
  def MoveToRoot()
    ret = _invoke(1610743822, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID MoveDown
  # Move down into this branch
  #   BSTR arg0 --- Branch [IN]
  def MoveDown(arg0)
    ret = _invoke(1610743823, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID MoveTo
  # Move to this absolute position
  #   BSTR arg0 --- Branches [IN]
  def MoveTo(arg0)
    ret = _invoke(1610743824, [arg0], [VT_BYREF|VT_ARRAY|VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR GetItemID
  # Converts a leaf name to an ItemID
  #   BSTR arg0 --- Leaf [IN]
  def GetItemID(arg0)
    ret = _invoke(1610743825, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT GetAccessPaths
  # Returns an array of Access Paths for an ItemID
  #   BSTR arg0 --- ItemID [IN]
  def GetAccessPaths(arg0)
    ret = _invoke(1610743826, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Server Event
module DIOPCServerEvent
  include WIN32OLE::VARIANT
  attr_reader :lastargs

  # VOID ServerShutDown
  #   BSTR arg0 --- Reason [IN]
  def ServerShutDown(arg0)
    ret = _invoke(1, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end

# OPC Automation Server
class OPC_Automation_1 # OPCServer
  include WIN32OLE::VARIANT
  attr_reader :lastargs
  attr_reader :dispatch
  attr_reader :clsid
  attr_reader :progid

  def initialize(obj = nil)
    @clsid = "{28E68F9A-8D75-11D1-8DC3-3C302A000000}"
    @progid = "OPC.Automation.1"
    if obj.nil?
      @dispatch = WIN32OLE.new @progid
    else
      @dispatch = obj
    end
  end

  def method_missing(cmd, *arg)
    @dispatch.method_missing(cmd, *arg)
  end

  # DATE StartTime
  # Time the Server Started
  def StartTime()
    ret = @dispatch._getproperty(1610743808, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # DATE CurrentTime
  def CurrentTime()
    ret = @dispatch._getproperty(1610743809, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # DATE LastUpdateTime
  # Last time the server sent data
  def LastUpdateTime()
    ret = @dispatch._getproperty(1610743810, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 MajorVersion
  def MajorVersion()
    ret = @dispatch._getproperty(1610743811, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 MinorVersion
  def MinorVersion()
    ret = @dispatch._getproperty(1610743812, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I2 BuildNumber
  def BuildNumber()
    ret = @dispatch._getproperty(1610743813, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR VendorInfo
  # Server Vendor's name
  def VendorInfo()
    ret = @dispatch._getproperty(1610743814, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 ServerState
  # Returns an OPCServerState
  def ServerState()
    ret = @dispatch._getproperty(1610743815, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR ServerName
  # Returns this server's name
  def ServerName()
    ret = @dispatch._getproperty(1610743816, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR ServerNode
  # Returns this server's node
  def ServerNode()
    ret = @dispatch._getproperty(1610743817, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR ClientName
  # Identify the client
  def ClientName()
    ret = @dispatch._getproperty(1610743818, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 LocaleID
  def LocaleID()
    ret = @dispatch._getproperty(1610743820, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # I4 Bandwidth
  # Might possibly be Percent utilization
  def Bandwidth()
    ret = @dispatch._getproperty(1610743822, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCGroups OPCGroups
  # The collection of OPCGroup Objects
  def OPCGroups()
    ret = @dispatch._getproperty(0, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT PublicGroupNames
  # Returns an array of names
  def PublicGroupNames()
    ret = @dispatch._getproperty(1610743824, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID ClientName
  # Identify the client
  def ClientName=(arg0)
    ret = @dispatch._setproperty(1610743818, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID LocaleID
  def LocaleID=(arg0)
    ret = @dispatch._setproperty(1610743820, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT GetOPCServers
  # Returns an array of Server names, optionally on another node
  #   VARIANT arg0 --- Node [IN]
  def GetOPCServers(arg0=nil)
    ret = @dispatch._invoke(1610743825, [arg0], [VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Connect
  # Connect to a named OPC Server
  #   BSTR arg0 --- ProgID [IN]
  #   VARIANT arg1 --- Node [IN]
  def Connect(arg0, arg1=nil)
    ret = @dispatch._invoke(1610743826, [arg0, arg1], [VT_BSTR, VT_VARIANT])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID Disconnect
  # End Connection with OPC Server
  def Disconnect()
    ret = @dispatch._invoke(1610743827, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # OPCBrowser CreateBrowser
  # Create a new OPCBrowser Object
  def CreateBrowser()
    ret = @dispatch._invoke(1610743828, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # BSTR GetErrorString
  # Convert an error code to a descriptive string
  #   I4 arg0 --- ErrorCode [IN]
  def GetErrorString(arg0)
    ret = @dispatch._invoke(1610743829, [arg0], [VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VARIANT QueryAvailableLocaleIDs
  # The LocaleIDs supported by this server
  def QueryAvailableLocaleIDs()
    ret = @dispatch._invoke(1610743830, [], [])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID QueryAvailableProperties
  #   BSTR arg0 --- ItemID [IN]
  #   I4 arg1 --- Count [OUT]
  #   I4 arg2 --- PropertyIDs [OUT]
  #   BSTR arg3 --- Descriptions [OUT]
  #   I2 arg4 --- DataTypes [OUT]
  def QueryAvailableProperties(arg0, arg1, arg2, arg3, arg4)
    ret = @dispatch._invoke(1610743831, [arg0, arg1, arg2, arg3, arg4], [VT_BSTR, VT_BYREF|VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_BSTR, VT_BYREF|VT_ARRAY|VT_I2])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID GetItemProperties
  #   BSTR arg0 --- ItemID [IN]
  #   I4 arg1 --- Count [IN]
  #   I4 arg2 --- PropertyIDs [IN]
  #   VARIANT arg3 --- PropertyValues [OUT]
  #   I4 arg4 --- Errors [OUT]
  def GetItemProperties(arg0, arg1, arg2, arg3, arg4)
    ret = @dispatch._invoke(1610743832, [arg0, arg1, arg2, arg3, arg4], [VT_BSTR, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_VARIANT, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID LookupItemIDs
  #   BSTR arg0 --- ItemID [IN]
  #   I4 arg1 --- Count [IN]
  #   I4 arg2 --- PropertyIDs [IN]
  #   BSTR arg3 --- NewItemIDs [OUT]
  #   I4 arg4 --- Errors [OUT]
  def LookupItemIDs(arg0, arg1, arg2, arg3, arg4)
    ret = @dispatch._invoke(1610743833, [arg0, arg1, arg2, arg3, arg4], [VT_BSTR, VT_I4, VT_BYREF|VT_ARRAY|VT_I4, VT_BYREF|VT_ARRAY|VT_BSTR, VT_BYREF|VT_ARRAY|VT_I4])
    @lastargs = WIN32OLE::ARGV
    ret
  end

  # VOID ServerShutDown EVENT in DIOPCServerEvent
  #   BSTR arg0 --- Reason [IN]
  def ServerShutDown(arg0)
    ret = @dispatch._invoke(1, [arg0], [VT_BSTR])
    @lastargs = WIN32OLE::ARGV
    ret
  end
end
