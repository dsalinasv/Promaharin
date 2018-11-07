inherited smRefuel: TsmRefuel
  Height = 221
  inherited qryMaster: TFDQuery
    UpdateOptions.UpdateTableName = 'REFUEL'
    SQL.Strings = (
      'select * from REFUEL'
      'where IDREFUEL = :IDREFUEL')
    ParamData = <
      item
        Name = 'IDREFUEL'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  inherited dspMaster: TDataSetProvider
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
  end
  inherited qryConsult: TFDQuery
    UpdateOptions.UpdateTableName = 'REFUEL'
    SQL.Strings = (
      'select r.idrefuel, r.fecha,'
      '  t.code || '#39' '#39' || t.name as camion,'
      '  (select * from concat_destination(r.idrefuel)) as destino,'
      '  v.code || '#39' '#39' || v.name as chofer,'
      '  f.code || '#39' '#39' || f.name as combustible,'
      '  s.code || '#39' '#39' || s.name as surtidor,'
      '  r.cantidad, r.precio, r.cantidad * r.precio as importe'
      'from REFUEL r'
      '  left join TRUCK t on t.idtruck = r.idtruck'
      '  left join DRIVER v on v.iddriver = r.iddriver'
      '  left join FUEL f on f.idfuel = r.idfuel'
      '  left join SUPPLIER s on s.idsupplier = r.idsupplier'
      'where fecha >= :ini and fecha < :fin'
      'order by fecha')
    Left = 96
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
    Left = 96
  end
  object dsRefuel: TDataSource
    DataSet = qryMaster
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
