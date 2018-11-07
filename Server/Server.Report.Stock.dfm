inherited smStock: TsmStock
  OldCreateOrder = True
  inherited qryMaster: TFDQuery
    Connection = smContainer.FDConnection
    UpdateOptions.UpdateTableName = 'REFUEL'
    SQL.Strings = (
      
        'select f.code || '#39' '#39' || f.name as combustible,saldo from STOCK s' +
        ' left join fuel f on f.idfuel = s.idfuel')
  end
end
