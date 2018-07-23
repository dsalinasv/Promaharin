inherited smInventory: TsmInventory
  OldCreateOrder = True
  object dspInventory: TDataSetProvider
    DataSet = qryInventory
    Left = 24
    Top = 56
  end
  object qryInventory: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'INVENTORY'
    SQL.Strings = (
      'select * from INVENTORY'
      'where IDINVENTORY = :IDINVENTORY')
    Left = 24
    Top = 8
    ParamData = <
      item
        Name = 'IDINVENTORY'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  object dspInventoryByDate: TDataSetProvider
    DataSet = qryInventoryByDate
    Left = 112
    Top = 56
  end
  object qryInventoryByDate: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'INVENTORY'
    SQL.Strings = (
      'select r.idinventory, r.fecha,'
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
