inherited smDriver: TsmDriver
  OldCreateOrder = True
  inherited qryMaster: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENDRIVER'
    UpdateOptions.UpdateTableName = 'DRIVER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from DRIVER order by code')
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
  inherited dspMaster: TDataSetProvider
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
  end
end
