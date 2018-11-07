inherited smSupplier: TsmSupplier
  OldCreateOrder = True
  inherited qryMaster: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENSUPPLIER'
    UpdateOptions.UpdateTableName = 'SUPPLIER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from SUPPLIER order by code')
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
  inherited dspMaster: TDataSetProvider
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
  end
end
