inherited smStock: TsmStock
  object dspStock: TDataSetProvider
    DataSet = qryStock
    Left = 24
    Top = 56
  end
  object qryStock: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'REFUEL'
    SQL.Strings = (
      
        'select f.code || '#39' '#39' || f.name as combustible,saldo from STOCK s' +
        ' left join fuel f on f.idfuel = s.idfuel')
    Left = 24
    Top = 8
  end
end
