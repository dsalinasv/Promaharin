inherited smDestination: TsmDestination
  OldCreateOrder = True
  object dspDestination: TDataSetProvider
    DataSet = qryDestination
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspAfterUpdateRecord
    Left = 24
    Top = 56
  end
  object qryDestination: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENDESTINATION'
    UpdateOptions.UpdateTableName = 'DESTINATION'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from DESTINATION order by code')
    Left = 24
    Top = 8
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
end
