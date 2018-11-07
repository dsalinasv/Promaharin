inherited smCaterer: TsmCaterer
  inherited qryMaster: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GENCATERER'
    UpdateOptions.UpdateTableName = 'CATERER'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from CATERER order by CODE')
    object qryMasterIDCATERER: TStringField
      FieldName = 'IDCATERER'
      Origin = 'IDCATERER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object qryMasterCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qryMasterNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object qryMasterDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 50
    end
    object qryMasterCOLONIA: TStringField
      FieldName = 'COLONIA'
      Origin = 'COLONIA'
      Size = 50
    end
    object qryMasterCODIGOPOSTAL: TIntegerField
      FieldName = 'CODIGOPOSTAL'
      Origin = 'CODIGOPOSTAL'
    end
    object qryMasterESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object qryMasterCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
    end
    object qryMasterRFC: TStringField
      FieldName = 'RFC'
      Origin = 'RFC'
    end
  end
end
