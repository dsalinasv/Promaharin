inherited smBatch: TsmBatch
  Width = 329
  inherited qryMaster: TFDQuery
    UpdateOptions.UpdateTableName = 'BATCH'
    SQL.Strings = (
      'select * from BATCH '
      'where IDBATCH = :IDBATCH'
      'order by codigo asc')
    ParamData = <
      item
        Name = 'IDBATCH'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  inherited dspMaster: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
  end
  inherited qryConsult: TFDQuery
    UpdateOptions.UpdateTableName = 'BATCH'
    SQL.Strings = (
      
        'select b.idbatch, b.fecha, b.codigo, s.name as status from BATCH' +
        ' b'
      '  left join batchstatus s on b.idbatchstatus = s.idbatchstatus'
      'where fecha >= :ini and fecha < :fin'
      'order by fecha')
    Left = 256
    ParamData = <
      item
        Name = 'INI'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIN'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  inherited dspConsult: TDataSetProvider
    Left = 256
  end
  object qryBatchDetail: TFDQuery
    MasterSource = dsBatch
    MasterFields = 'IDBATCH'
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'BATCHDETAIL'
    SQL.Strings = (
      'select * from BATCHDETAIL where IDBATCH = :IDBATCH')
    Left = 88
    Top = 56
    ParamData = <
      item
        Name = 'IDBATCH'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  object dsBatch: TDataSource
    DataSet = qryMaster
    Left = 88
    Top = 8
  end
  object dspBatchStatus: TDataSetProvider
    DataSet = qryBatchStatus
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 56
  end
  object qryBatchStatus: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENPROVIDER'
    UpdateOptions.UpdateTableName = 'BATCHSTATUS'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from BATCHSTATUS')
    Left = 168
    Top = 8
  end
end
