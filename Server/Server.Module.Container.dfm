object smContainer: TsmContainer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 271
  Width = 415
  object DSServer: TDSServer
    OnDisconnect = DSServerDisconnect
    Left = 24
    Top = 11
  end
  object DSHTTPService: TDSHTTPService
    HttpPort = 8888
    Server = DSServer
    Filters = <>
    Left = 24
    Top = 112
  end
  object dscGlobal: TDSServerClass
    OnGetClass = dscGetClass
    Server = DSServer
    LifeCycle = 'Server'
    Left = 24
    Top = 59
  end
  object dscProvider: TDSServerClass
    OnGetClass = dscGetClass
    Server = DSServer
    LifeCycle = 'Invocation'
    Left = 104
    Top = 59
  end
  object dscProduct: TDSServerClass
    OnGetClass = dscGetClass
    Server = DSServer
    LifeCycle = 'Invocation'
    Left = 104
    Top = 11
  end
  object dscReception: TDSServerClass
    OnGetClass = dscGetClass
    Server = DSServer
    LifeCycle = 'Invocation'
    Left = 104
    Top = 112
  end
end
