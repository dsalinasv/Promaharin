inherited smProduct: TsmProduct
  OldCreateOrder = True
  object dspProduct: TDataSetProvider
    DataSet = qryProduct
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
    AfterUpdateRecord = dspAfterUpdateRecord
    Left = 24
    Top = 56
  end
  object qryProduct: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENFUEL'
    UpdateOptions.UpdateTableName = 'PRODUCT'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from PRODUCT order by code')
    Left = 24
    Top = 8
    object qryProductIDPRODUCT: TStringField
      FieldName = 'IDPRODUCT'
      Origin = 'IDPRODUCT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryProductCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryProductNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
  end
end
