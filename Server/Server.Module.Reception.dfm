inherited smReception: TsmReception
  OldCreateOrder = True
  object qryReception: TFDQuery
    UpdateOptions.UpdateTableName = 'RECEPTION'
    SQL.Strings = (
      'select * from RECEPTION'
      'where IDRECEPTION = :IDRECEPTION')
    Left = 24
    Top = 8
    ParamData = <
      item
        Name = 'IDRECEPTION'
        ParamType = ptInput
      end>
  end
  object dspReception: TDataSetProvider
    DataSet = qryReception
    Left = 24
    Top = 56
  end
  object qryReceptionByDates: TFDQuery
    UpdateOptions.UpdateTableName = 'RECEPTION'
    SQL.Strings = (
      
        'select r.idreception, r.fecha, p.name as producto, o.name as pro' +
        'veedor, r.cantidad, r.precio, r.cantidad * r.precio as importe  ' +
        'from RECEPTION r'
      '  inner join PRODUCT p on p.idproduct = r.idproduct'
      '  inner join PROVIDER o on o.idprovider = r.idprovider'
      'where fecha between :ini and :fin')
    Left = 112
    Top = 8
    ParamData = <
      item
        Name = 'INI'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIN'
        ParamType = ptInput
      end>
  end
  object dspReceptionByDates: TDataSetProvider
    DataSet = qryReceptionByDates
    Left = 112
    Top = 56
  end
end
