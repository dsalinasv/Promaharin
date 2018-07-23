inherited smRefuel: TsmRefuel
  OldCreateOrder = True
  Height = 221
  object dspRefuel: TDataSetProvider
    DataSet = qryRefuel
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 24
    Top = 56
  end
  object qryRefuel: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'REFUEL'
    SQL.Strings = (
      'select * from REFUEL'
      'where IDREFUEL = :IDREFUEL')
    Left = 24
    Top = 8
    ParamData = <
      item
        Name = 'IDREFUEL'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  object dspRefuelByDate: TDataSetProvider
    DataSet = qryRefuelByDate
    Left = 96
    Top = 56
  end
  object qryRefuelByDate: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'REFUEL'
    SQL.Strings = (
      'select r.idrefuel, r.fecha,'
      '  t.code || '#39' '#39' || t.name as camion,'
      '  d.code || '#39' '#39' || d.name as destino,'
      '  v.code || '#39' '#39' || v.name as chofer,'
      '  f.code || '#39' '#39' || f.name as combustible,'
      '  s.code || '#39' '#39' || s.name as surtidor,'
      '  r.cantidad, r.precio, r.cantidad * r.precio as importe'
      'from REFUEL r'
      '  left join TRUCK t on t.idtruck = r.idtruck'
      '  left join DESTINATION d on d.iddestination = r.iddestination'
      '  left join DRIVER v on v.iddriver = r.iddriver'
      '  left join FUEL f on f.idfuel = r.idfuel'
      '  left join SUPPLIER s on s.idsupplier = r.idsupplier'
      'where fecha >= :ini and fecha < :fin'
      'order by fecha')
    Left = 96
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
  object dsRefuel: TDataSource
    DataSet = qryRefuel
    Left = 24
    Top = 112
  end
  object qryRefuelDestination: TFDQuery
    MasterSource = dsRefuel
    MasterFields = 'IDREFUEL'
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'REFUEL_DESTINATION'
    SQL.Strings = (
      'select * from REFUEL_DESTINATION where IDREFUEL = :IDREFUEL')
    Left = 24
    Top = 168
    ParamData = <
      item
        Name = 'IDREFUEL'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
end
