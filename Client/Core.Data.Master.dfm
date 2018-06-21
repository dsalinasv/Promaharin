inherited dmMaster: TdmMaster
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object dspMaster: TDSProviderConnection
    SQLConnection = dmGlobal.cntPromharin
    Left = 24
    Top = 16
  end
  object cdsMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = dspMaster
    Left = 24
    Top = 64
  end
end
