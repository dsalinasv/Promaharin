inherited dmAccount: TdmAccount
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmAccount'
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'IDUSER'
        ParamType = ptInput
      end>
    AfterInsert = cdsMasterAfterInsert
  end
  object cdsAccountType: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAccountType'
    RemoteServer = dspMaster
    Left = 96
    Top = 64
  end
end
