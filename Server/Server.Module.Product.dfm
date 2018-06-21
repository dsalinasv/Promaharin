inherited smProduct: TsmProduct
  OldCreateOrder = True
  object dspProduct: TDataSetProvider
    DataSet = qryProduct
    Left = 24
    Top = 56
  end
  object qryProduct: TFDQuery
    Connection = smContainer.cntPromharin
    UpdateOptions.UpdateTableName = 'PRODUCT'
    SQL.Strings = (
      'select * from PRODUCT')
    Left = 24
    Top = 8
  end
end
