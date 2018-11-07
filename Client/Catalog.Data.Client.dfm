inherited dmClient: TdmClient
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmClient'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
end
