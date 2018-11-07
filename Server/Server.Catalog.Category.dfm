inherited smCategory: TsmCategory
  inherited qryMaster: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENCATEGORY'
    UpdateOptions.UpdateTableName = 'CATEGORY'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from CATEGORY order by code')
    object qryCategoryIDCATEGORY: TStringField
      FieldName = 'IDCATEGORY'
      Origin = 'IDCATEGORY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryCategoryCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryCategoryNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
  end
  inherited dspMaster: TDataSetProvider
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
  end
end
