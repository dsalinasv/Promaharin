inherited smSupplier: TsmSupplier
  OldCreateOrder = True
  object dspSupplier: TDataSetProvider
    DataSet = qrySupplier
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
    AfterUpdateRecord = dspAfterUpdateRecord
    Left = 24
    Top = 56
  end
  object qrySupplier: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENSUPPLIER'
    UpdateOptions.UpdateTableName = 'SUPPLIER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from SUPPLIER order by code')
    Left = 24
    Top = 8
    object qrySupplierIDSUPPLIER: TStringField
      FieldName = 'IDSUPPLIER'
      Origin = 'IDSUPPLIER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qrySupplierCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qrySupplierNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
  end
end
