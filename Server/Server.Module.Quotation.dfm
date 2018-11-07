inherited smQuotation: TsmQuotation
  Height = 208
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select * from QUOTATION'
      'where IDQUOTATION = :IDQUOTATION')
    ParamData = <
      item
        Name = 'IDQUOTATION'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  inherited qryConsult: TFDQuery
    SQL.Strings = (
      'select'
      '  q.idquotation,'
      '  q.fecha,'
      '  c.code || '#39' '#39' || c.name as cliente,'
      '  c.direccion,'
      '  c.telefono,'
      '  u.name as UNIDAD,'
      '  p.code || '#39' '#39' || p.name as producto,'
      '  q.cantidad,'
      '  q.precio,'
      '  q.cantidad * q.precio as importe,'
      '  (select * from concat_condition(q.idquotation)) as condition,'
      '  s.code || '#39' '#39' || s.name as vendedor'
      'from QUOTATION q'
      '  left join CLIENT c on c.idclient = q.idclient'
      '  left join UNIT u on u.idunit = q.idunit'
      '  left join PRODUCT p on p.idproduct = q.idproduct'
      '  left join SELLER s on s.idseller = q.idseller'
      'where fecha >= :ini and fecha < :fin'
      'order by fecha')
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
  object qryName: TFDQuery
    Connection = smContainer.FDConnection
    SQL.Strings = (
      'select * from UNIT')
    Left = 152
    Top = 8
  end
  object dspName: TDataSetProvider
    DataSet = qryName
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 56
  end
  object qryQuotationCondition: TFDQuery
    MasterSource = dsQuotation
    MasterFields = 'IDQUOTATION'
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'QUOTATION_CONDITION'
    SQL.Strings = (
      
        'select * from QUOTATION_CONDITION where IDQUOTATION = :IDQUOTATI' +
        'ON')
    Left = 88
    Top = 160
    ParamData = <
      item
        Name = 'IDQUOTATION'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  object dsQuotation: TDataSource
    DataSet = qryMaster
    Left = 88
    Top = 104
  end
end
