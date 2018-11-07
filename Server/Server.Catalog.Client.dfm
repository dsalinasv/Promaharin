inherited smClient: TsmClient
  inherited qryMaster: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENCLIENT'
    UpdateOptions.UpdateTableName = 'CLIENT'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from CLIENT order by CODE')
    object qryMasterIDCLIENT: TStringField
      FieldName = 'IDCLIENT'
      Origin = 'IDCLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryMasterCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryMasterNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object qryMasterDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 50
    end
    object qryMasterTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 10
    end
  end
end
