inherited smTruck: TsmTruck
  OldCreateOrder = True
  inherited qryMaster: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENTRUCK'
    UpdateOptions.UpdateTableName = 'TRUCK'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from TRUCK order by code')
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
  inherited dspMaster: TDataSetProvider
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
  end
end
