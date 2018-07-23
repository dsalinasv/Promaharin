inherited smDriver: TsmDriver
  OldCreateOrder = True
  object dspDriver: TDataSetProvider
    DataSet = qryDriver
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 24
    Top = 56
  end
  object qryDriver: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENDRIVER'
    UpdateOptions.UpdateTableName = 'DRIVER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from DRIVER order by code')
    Left = 24
    Top = 8
    object qryDriverIDDRIVER: TStringField
      FieldName = 'IDDRIVER'
      Origin = 'IDDRIVER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryDriverCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryDriverNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
  end
end
