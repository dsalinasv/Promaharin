inherited smProvider: TsmProvider
  OldCreateOrder = True
  object dspProvider: TDataSetProvider
    DataSet = qryProvider
    Left = 24
    Top = 56
  end
  object qryProvider: TFDQuery
    Connection = smContainer.cntPromharin
    UpdateOptions.UpdateTableName = 'PROVIDER'
    SQL.Strings = (
      'select * from PROVIDER')
    Left = 24
    Top = 8
  end
end
