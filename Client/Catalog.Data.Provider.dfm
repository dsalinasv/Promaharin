inherited dmProvider: TdmProvider
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmProvider'
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'dspProvider'
  end
  object dspProduct: TDSProviderConnection
    ServerClassName = 'TsmProduct'
    SQLConnection = dmGlobal.cntPromaharin
    Left = 104
    Top = 16
  end
  object cdsProduct: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduct'
    RemoteServer = dspProduct
    Left = 104
    Top = 64
  end
end
