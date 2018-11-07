inherited smInputs: TsmInputs
  Width = 280
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select * from INPUTS'
      'where IDINPUTS = :IDINPUTS')
    ParamData = <
      item
        Name = 'IDINPUTS'
        DataType = ftString
        ParamType = ptInput
        Size = 38
        Value = Null
      end>
  end
  inherited qryConsult: TFDQuery
    SQL.Strings = (
      
        'select i.idinputs, c.name as cliente, i.fecha, i.orden, i.factur' +
        'a, n.name as moneda, p.name as producto, cantidad, precio, canti' +
        'dad * precio as entradas, s.name as estado, iduser from INPUTS i'
      '  left join CLIENT c on c.idclient = i.idclient'
      '  left join COIN n on n.idcoin = i.idcoin'
      '  left join PRODUCT p on p.idproduct = i.idproduct'
      '  left join INPUTSTATE s on s.idinputstate = i.idinputstate'
      
        'where fecha >= :ini and fecha < :fin and iduser = :iduser and id' +
        'account = :idaccount'
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
      end
      item
        Name = 'IDUSER'
        DataType = ftString
        ParamType = ptInput
        Size = 38
      end
      item
        Name = 'IDACCOUNT'
        DataType = ftString
        ParamType = ptInput
        Size = 38
      end>
  end
  object qryCoin: TFDQuery
    Connection = smContainer.FDConnection
    SQL.Strings = (
      'select * from COIN')
    Left = 144
    Top = 8
  end
  object dspCoin: TDataSetProvider
    DataSet = qryCoin
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 56
  end
  object qryInputState: TFDQuery
    Connection = smContainer.FDConnection
    SQL.Strings = (
      'select * from INPUTSTATE')
    Left = 208
    Top = 8
  end
  object dspInputState: TDataSetProvider
    DataSet = qryInputState
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 56
  end
end
