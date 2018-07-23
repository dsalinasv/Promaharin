inherited smFuel: TsmFuel
  OldCreateOrder = True
  object dspFuel: TDataSetProvider
    DataSet = qryFuel
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
    AfterUpdateRecord = dspAfterUpdateRecord
    Left = 24
    Top = 56
  end
  object qryFuel: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENFUEL'
    UpdateOptions.UpdateTableName = 'FUEL'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from FUEL order by code')
    Left = 24
    Top = 8
    object qryFuelIDFUEL: TStringField
      FieldName = 'IDFUEL'
      Origin = 'IDFUEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryFuelCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryFuelNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object qryFuelPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
  end
end
