inherited smDestination: TsmDestination
  inherited qryMaster: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENDESTINATION'
    UpdateOptions.UpdateTableName = 'DESTINATION'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from DESTINATION order by code')
    object qryDestinationIDDESTINATION: TStringField
      FieldName = 'IDDESTINATION'
      Origin = 'IDDESTINATION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryDestinationCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryDestinationNAME: TStringField
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
