inherited smAccount: TsmAccount
  inherited qryMaster: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.UpdateTableName = 'ACCOUNT'
    SQL.Strings = (
      
        'select * from ACCOUNT where IDUSER = :IDUSER or :IDUSER is null ' +
        'order by name')
    ParamData = <
      item
        Name = 'IDUSER'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited dspMaster: TDataSetProvider
    Options = [poPropogateChanges, poUseQuoteChar]
  end
  object dspAccountType: TDataSetProvider
    DataSet = qryAccountType
    UpdateMode = upWhereKeyOnly
    Left = 94
    Top = 56
  end
  object qryAccountType: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENPROVIDER'
    UpdateOptions.UpdateTableName = 'BATCHSTATUS'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from ACCOUNTTYPE')
    Left = 94
    Top = 8
  end
end
