inherited smProduct: TsmProduct
  inherited qryMaster: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENFUEL'
    UpdateOptions.UpdateTableName = 'PRODUCT'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from PRODUCT order by code')
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
  inherited dspMaster: TDataSetProvider
    ResolveToDataSet = True
  end
end
