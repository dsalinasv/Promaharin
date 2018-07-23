inherited dmDestination: TdmDestination
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmDestination'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'dspDestination'
  end
end
