inherited dmOrder: TdmOrder
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmOrder'
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited frxConsult: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
