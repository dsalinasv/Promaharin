inherited smProvisioner: TsmProvisioner
  OldCreateOrder = True
  inherited qryMaster: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENPROVISIONER'
    UpdateOptions.UpdateTableName = 'PROVISIONER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from PROVISIONER order by code')
    object qryProvisionerIDPROVISIONER: TStringField
      FieldName = 'IDPROVISIONER'
      Origin = 'IDPROVISIONER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryProvisionerCODE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryProvisionerNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object qryProvisionerIDFUEL: TStringField
      FieldName = 'IDFUEL'
      Origin = 'IDFUEL'
      Size = 38
    end
    object qryProvisionerPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
  end
  inherited dspMaster: TDataSetProvider
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
  end
end
