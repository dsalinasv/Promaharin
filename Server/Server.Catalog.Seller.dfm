inherited smSeller: TsmSeller
  inherited qryMaster: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENSELLER'
    UpdateOptions.UpdateTableName = 'SELLER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from seller order by code')
    object qryMasterIDSELLER: TStringField
      FieldName = 'IDSELLER'
      Origin = 'IDSELLER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryMasterCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryMasterNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
  end
end
