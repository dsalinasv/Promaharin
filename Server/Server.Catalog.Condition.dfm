inherited smCondition: TsmCondition
  inherited qryMaster: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENCONDITION'
    UpdateOptions.UpdateTableName = 'CONDITION'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from CONDITION order by code')
    object qryMasterIDCONDITION: TStringField
      FieldName = 'IDCONDITION'
      Origin = 'IDCONDITION'
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
