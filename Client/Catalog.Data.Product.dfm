inherited dmProduct: TdmProduct
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmProduct'
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'dspProduct'
  end
end
