inherited dmProvider: TdmProvider
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmProvider'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
  object dspProduct: TDSProviderConnection
    ServerClassName = 'TsmProduct'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
    Left = 104
    Top = 16
  end
  object cdsProduct: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaster'
    RemoteServer = dspProduct
    Left = 104
    Top = 64
  end
end
