inherited smOutputs: TsmOutputs
  Height = 154
  Width = 216
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select * from OUTPUTS'
      'where IDOUTPUTS = :IDOUTPUTS')
    ParamData = <
      item
        Name = 'IDOUTPUTS'
        ParamType = ptInput
      end>
  end
  inherited qryConsult: TFDQuery
    SQL.Strings = (
      
        'select o.idoutputs, o.fecha, o.payee, o.memo, c.code || '#39' '#39' || c' +
        '.name as categoria, p.name metodo, outflow as salidas, case taxe' +
        'd when 1 then outflow / 1.16 else 0 end as iva, iduser from OUTP' +
        'UTS o'
      '  left join CATEGORY c on c.idcategory = o.idcategory'
      '  left join PAYMETHOD p on p.idpaymethod = o.idpaymethod'
      
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
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IDACCOUNT'
        DataType = ftString
        ParamType = ptInput
        Size = 38
      end>
  end
  object dspPayMethod: TDataSetProvider
    DataSet = qryPayMethod
    UpdateMode = upWhereKeyOnly
    Left = 158
    Top = 56
  end
  object qryPayMethod: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENPROVIDER'
    UpdateOptions.UpdateTableName = 'BATCHSTATUS'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from PAYMETHOD')
    Left = 158
    Top = 8
  end
end
