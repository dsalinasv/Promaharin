inherited smProvider: TsmProvider
  OldCreateOrder = True
  object dspProvider: TDataSetProvider
    DataSet = qryProvider
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
    AfterUpdateRecord = dspAfterUpdateRecord
    Left = 24
    Top = 56
  end
  object qryProvider: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENPROVIDER'
    UpdateOptions.UpdateTableName = 'PROVIDER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from PROVIDER order by code')
    Left = 24
    Top = 8
    object qryProviderIDPROVIDER: TStringField
      FieldName = 'IDPROVIDER'
      Origin = 'IDPROVIDER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryProviderCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryProviderNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object qryProviderRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 50
    end
    object qryProviderTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
    end
    object qryProviderCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 30
    end
    object qryProviderDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 50
    end
    object qryProviderIDPRODUCT: TStringField
      FieldName = 'IDPRODUCT'
      Origin = 'IDPRODUCT'
      Size = 38
    end
    object qryProviderPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
  end
end
