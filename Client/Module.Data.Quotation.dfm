inherited dmQuotation: TdmQuotation
  Height = 256
  Width = 216
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmQuotation'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'IDQUOTATION'
        ParamType = ptInput
        Size = 38
      end>
    OnCalcFields = cdsMasterCalcFields
    object cdsMasterIDQUOTATION: TStringField
      FieldName = 'IDQUOTATION'
      Origin = 'IDQUOTATION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsMasterFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object cdsMasterIDCLIENT: TStringField
      FieldName = 'IDCLIENT'
      Origin = 'IDCLIENT'
      Size = 38
    end
    object cdsMasterCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object cdsMasterIDUNIT: TStringField
      FieldName = 'IDUNIT'
      Origin = 'IDUNIT'
      Size = 38
    end
    object cdsMasterIDPRODUCT: TStringField
      FieldName = 'IDPRODUCT'
      Origin = 'IDPRODUCT'
      Size = 38
    end
    object cdsMasterPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object cdsMasterIMPORTE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IMPORTE'
      Calculated = True
    end
    object cdsMasterqryQuotationCondition: TDataSetField
      FieldName = 'qryQuotationCondition'
    end
  end
  inherited cdsConsult: TClientDataSet
    Active = True
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FIN'
        ParamType = ptInput
      end>
  end
  inherited fdsConsult: TfrxDBDataset
    FieldAliases.Strings = (
      'IDQUOTATION=IDQUOTATION'
      'FECHA=FECHA'
      'CLIENTE=CLIENTE'
      'DIRECCION=DIRECCION'
      'TELEFONO=TELEFONO'
      'UNIDAD=UNIDAD'
      'PRODUCTO=PRODUCTO'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'IMPORTE=IMPORTE'
      'CONDITION=CONDITION'
      'VENDEDOR=VENDEDOR')
  end
  inherited frxConsult: TfrxReport
    ReportOptions.CreateDate = 43346.895021689800000000
    ReportOptions.LastChange = 43346.895021689800000000
    Datasets = <
      item
        DataSet = fdsConsult
        DataSetName = 'fdsConsult'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 664.819327000000000000
        object Memo2: TfrxMemoView
          Left = 52.913420000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PROTEINAS MARINAS Y HARINAS DE SINALOA S.A. DE C.V.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 272.126160000000000000
          Top = 30.236240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COTIZACI'#211'N')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 120.944960000000000000
          Width = 427.086890000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Me es grato poner a su disposici'#243'n la siguiente cotizaci'#243'n:')
          ParentFont = False
        end
        object fdsConsultFECHA: TfrxMemoView
          IndexTag = 1
          Left = 415.748300000000000000
          Top = 49.133890000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsConsult."FECHA"]')
          ParentFont = False
        end
        object fdsConsultCLIENTE: TfrxMemoView
          IndexTag = 1
          Left = 7.559060000000000000
          Top = 56.692950000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."CLIENTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdsConsultDIRECCION: TfrxMemoView
          IndexTag = 1
          Left = 7.559060000000000000
          Top = 79.370130000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."DIRECCION"]')
        end
        object fdsConsultTELEFONO: TfrxMemoView
          IndexTag = 1
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."TELEFONO"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 192.756030000000000000
        Width = 664.819327000000000000
        object fdsConsultCANTIDAD: TfrxMemoView
          IndexTag = 1
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'U/M')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          Left = 151.181200000000000000
          Width = 302.362400000000000000
          Height = 34.015770000000000000
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          Left = 453.543600000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PRECIO'
            'UNITARIO')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          Left = 555.590910000000000000
          Width = 109.606370000000000000
          Height = 34.015770000000000000
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE'
            'TOTAL')
          ParentFont = False
        end
        object fdsConsultCANTIDAD1: TfrxMemoView
          IndexTag = 1
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          DataField = 'CANTIDAD'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsConsult."CANTIDAD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdsConsultPRODUCTO: TfrxMemoView
          IndexTag = 1
          Left = 151.181200000000000000
          Top = 34.015770000000000000
          Width = 302.362400000000000000
          Height = 26.456710000000000000
          DataField = 'PRODUCTO'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsConsult."PRODUCTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdsConsultPRECIO: TfrxMemoView
          IndexTag = 1
          Left = 453.543600000000000000
          Top = 34.015770000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          DataField = 'PRECIO'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsConsult."PRECIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdsConsultIMPORTE: TfrxMemoView
          IndexTag = 1
          Left = 555.590910000000000000
          Top = 34.015770000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          DataField = 'IMPORTE'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsConsult."IMPORTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdsConsultUNIDAD: TfrxMemoView
          IndexTag = 1
          Left = 79.370130000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          DataField = 'UNIDAD'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsConsult."UNIDAD"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 68.031540000000000000
        Top = 808.819420000000000000
        Width = 664.819327000000000000
        object Memo11: TfrxMemoView
          Left = 60.472480000000000000
          Width = 559.370440000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Blvd. Macapule No. 2358 Norte, Fraccionamiento Vi'#241'edos, Los Moch' +
              'is'
            'Ahome, Sinaloa M'#233'xico, CP: 81228, Tel/ (668) 811-5165'
            'Correo electr'#243'nico: administracion@promaharin.com'
            'www.promaharin.com')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 566.929500000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 472.441250000000000000
        Top = 313.700990000000000000
        Width = 664.819327000000000000
        object Memo10: TfrxMemoView
          Left = 60.472480000000000000
          Top = 347.716760000000000000
          Width = 559.370440000000000000
          Height = 105.826840000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Atentamente'
            ''
            ''
            '_____________________________________________________'
            '[fdsConsult."VENDEDOR"]'
            'PROTEINAS MARINAS Y HARINAS DE SINALOA S.A. DE C.V.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 56.692950000000000000
          Top = 298.582870000000000000
          Width = 559.370440000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '2.-Enviar el comprobante de pago al correo de'
            
              'administraci'#243'n@promaharin.com con sus datos fiscales y direcci'#243'n' +
              ' de envi'#243'.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 128.504020000000000000
          Top = 207.874150000000000000
          Width = 487.559370000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PROTEINAS MARINAS Y HARINAS DE SINALOA S.A. DE C.V.'
            ''
            'NUMERO DE CUENTA : 70075775200'
            'CLAVE INTERBANCARIA: 002743700757752004')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 211.653680000000000000
          Top = 128.504020000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PROCESO PARA PEDIDO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 56.692950000000000000
          Top = 166.299320000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '1.-Hacer el dep'#243'sito por el importe total, en la cuenta de banco' +
              ' BANAMEX a')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 211.653680000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONDICIONES COMERCIALES')
          ParentFont = False
        end
        object fdsConsultCONDITION: TfrxMemoView
          IndexTag = 1
          Left = 56.692950000000000000
          Top = 22.677180000000000000
          Width = 563.149970000000000000
          Height = 90.708720000000000000
          DataField = 'CONDITION'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."CONDITION"]')
        end
      end
    end
  end
  object cdsUnit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspName'
    RemoteServer = dspMaster
    Left = 96
    Top = 16
  end
  object cdsQuotationCondition: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMasterqryQuotationCondition
    Params = <>
    Left = 24
    Top = 208
    object cdsQuotationConditionIDQUOTATIONCONDITION: TStringField
      FieldName = 'IDQUOTATIONCONDITION'
      Required = True
      Size = 38
    end
    object cdsQuotationConditionIDQUOTATION: TStringField
      FieldName = 'IDQUOTATION'
      Size = 38
    end
    object cdsQuotationConditionIDCONDITION: TStringField
      FieldName = 'IDCONDITION'
      Size = 38
    end
    object cdsQuotationConditionCONDITION: TStringField
      FieldKind = fkLookup
      FieldName = 'CONDITION'
      LookupDataSet = cdsCondition
      LookupKeyFields = 'IDCONDITION'
      LookupResultField = 'NAME'
      KeyFields = 'IDQUOTATIONCONDITION'
      Lookup = True
    end
  end
  object dspCondition: TDSProviderConnection
    ServerClassName = 'TsmCondition'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
    Left = 160
    Top = 16
  end
  object cdsCondition: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMaster'
    RemoteServer = dspCondition
    OnCalcFields = cdsMasterCalcFields
    Left = 168
    Top = 24
  end
end
