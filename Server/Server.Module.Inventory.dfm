inherited smInventory: TsmInventory
  OldCreateOrder = True
  inherited qryMaster: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'INVENTORY'
    SQL.Strings = (
      'select * from INVENTORY'
      'where IDINVENTORY = :IDINVENTORY')
    ParamData = <
      item
        Name = 'IDINVENTORY'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  inherited qryConsult: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'INVENTORY'
    SQL.Strings = (
      'select r.idinventory, r.fecha, r.folio,'
      '  p.code || '#39' '#39' || p.name as provisioner,'
      '  f.code || '#39' '#39' || f.name as combustible,'
      '  r.cantidad, r.precio, r.cantidad * r.precio as subtotal,'
      '  r.ajuste,'
      '  (r.cantidad * r.precio) - (r.ajuste * r.precio) as importe'
      'from inventory r'
      '  left join provisioner p on p.idprovisioner = r.idprovisioner'
      '  left join FUEL f on f.idfuel = r.idfuel'
      'where fecha >= :ini and fecha < :fin'
      'order by fecha')
    Left = 112
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
    Left = 112
  end
end
