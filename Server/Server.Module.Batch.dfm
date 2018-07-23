inherited smBatch: TsmBatch
  OldCreateOrder = True
  Width = 329
  object dspBatch: TDataSetProvider
    DataSet = qryBatch
    ResolveToDataSet = True
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 56
  end
  object qryBatch: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'BATCH'
    SQL.Strings = (
      'select * from BATCH '
      'where IDBATCH = :IDBATCH'
      'order by codigo asc')
    Left = 24
    Top = 8
    ParamData = <
      item
        Name = 'IDBATCH'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
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
    DataSet = qryBatch
    Left = 88
    Top = 8
  end
  object dspBatchStatus: TDataSetProvider
    DataSet = qryBatchStatus
    ResolveToDataSet = True
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 56
  end
  object qryBatchStatus: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENPROVIDER'
    UpdateOptions.UpdateTableName = 'PROVIDER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from BATCHSTATUS')
    Left = 168
    Top = 8
  end
  object dspBatchByDates: TDataSetProvider
    DataSet = qryBatchByDates
    Left = 256
    Top = 56
  end
  object qryBatchByDates: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'RECEPTION'
    SQL.Strings = (
      
        'select b.idbatch, b.fecha, b.codigo, s.name as status from BATCH' +
        ' b'
      '  left join batchstatus s on b.idbatchstatus = s.idbatchstatus'
      'where fecha >= :ini and fecha < :fin'
      'order by fecha')
    Left = 256
    Top = 8
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
end
