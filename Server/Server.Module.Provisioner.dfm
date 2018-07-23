inherited smProvisioner: TsmProvisioner
  OldCreateOrder = True
  object dspProvisioner: TDataSetProvider
    DataSet = qryProvisioner
    ResolveToDataSet = True
    Options = [poPropogateChanges, poUseQuoteChar]
    AfterUpdateRecord = dspAfterUpdateRecord
    Left = 24
    Top = 56
  end
  object qryProvisioner: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENPROVISIONER'
    UpdateOptions.UpdateTableName = 'PROVISIONER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from PROVISIONER order by code')
    Left = 24
    Top = 8
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
end
