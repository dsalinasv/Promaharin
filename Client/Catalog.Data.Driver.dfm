inherited dmDriver: TdmDriver
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmDriver'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'dspDriver'
  end
end
