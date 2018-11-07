inherited smReception: TsmReception
  OldCreateOrder = True
  Height = 153
  inherited qryMaster: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'RECEPTION'
    SQL.Strings = (
      'select * from RECEPTION'
      'where IDRECEPTION = :IDRECEPTION')
    ParamData = <
      item
        Name = 'IDRECEPTION'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  inherited qryConsult: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'RECEPTION'
    SQL.Strings = (
      
        'select r.idreception, r.fecha, p.code || '#39' '#39' || p.name as produc' +
        'to, o.code || '#39' '#39' || o.name as proveedor, r.cantidad, r.precio, ' +
        'r.cantidad * r.precio as importe  from RECEPTION r'
      '  left join PRODUCT p on p.idproduct = r.idproduct'
      '  left join PROVIDER o on o.idprovider = r.idprovider'
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
