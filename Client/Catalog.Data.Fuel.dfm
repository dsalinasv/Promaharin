inherited dmFuel: TdmFuel
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmFuel'
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'dspFuel'
  end
end
