inherited smTruck: TsmTruck
  OldCreateOrder = True
  object dspTruck: TDataSetProvider
    DataSet = qryTruck
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
    AfterUpdateRecord = dspAfterUpdateRecord
    Left = 24
    Top = 56
  end
  object qryTruck: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'TRUCK'
    SQL.Strings = (
      'select * from TRUCK order by code')
    Left = 24
    Top = 8
    object qryTruckIDTRUCK: TStringField
      FieldName = 'IDTRUCK'
      Origin = 'IDTRUCK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryTruckCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryTruckNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object qryTruckIDFUEL: TStringField
      FieldName = 'IDFUEL'
      Origin = 'IDFUEL'
      Size = 38
    end
    object qryTruckPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object qryTruckMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 30
    end
    object qryTruckMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object qryTruckPLACAS: TStringField
      FieldName = 'PLACAS'
      Origin = 'PLACAS'
      Size = 10
    end
    object qryTruckVIGENCIA_TARJETA: TSQLTimeStampField
      FieldName = 'VIGENCIA_TARJETA'
      Origin = 'VIGENCIA_TARJETA'
    end
    object qryTruckVIGENCIA_SEGURO: TSQLTimeStampField
      FieldName = 'VIGENCIA_SEGURO'
      Origin = 'VIGENCIA_SEGURO'
    end
  end
end
