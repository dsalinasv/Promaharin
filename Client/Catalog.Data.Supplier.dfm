inherited dmSupplier: TdmSupplier
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmSupplier'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'dspSupplier'
  end
end
