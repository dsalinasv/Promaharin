inherited dmTruck: TdmTruck
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmTruck'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'dspTruck'
  end
  object dspFuel: TDSProviderConnection
    ServerClassName = 'TsmFuel'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
    Left = 104
    Top = 16
  end
  object cdsFuel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuel'
    RemoteServer = dspFuel
    Left = 104
    Top = 64
  end
end
