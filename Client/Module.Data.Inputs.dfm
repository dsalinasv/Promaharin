inherited dmInputs: TdmInputs
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmInputs'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'IDINPUTS'
        ParamType = ptInput
        Size = 38
      end>
    AfterInsert = cdsMasterAfterInsert
    OnCalcFields = cdsMasterCalcFields
    object cdsMasterIDINPUTS: TStringField
      FieldName = 'IDINPUTS'
      Required = True
      Size = 38
    end
    object cdsMasterIDACCOUNT: TStringField
      FieldName = 'IDACCOUNT'
      Size = 38
    end
    object cdsMasterIDCLIENT: TStringField
      FieldName = 'IDCLIENT'
      Size = 38
    end
    object cdsMasterFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object cdsMasterORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object cdsMasterFACTURA: TIntegerField
      FieldName = 'FACTURA'
    end
    object cdsMasterIDCOIN: TStringField
      FieldName = 'IDCOIN'
      Size = 38
    end
    object cdsMasterIDPRODUCT: TStringField
      FieldName = 'IDPRODUCT'
      Size = 38
    end
    object cdsMasterCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object cdsMasterPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object cdsMasterIDINPUTSTATE: TStringField
      FieldName = 'IDINPUTSTATE'
      Size = 38
    end
    object cdsMasterIDUSER: TStringField
      FieldName = 'IDUSER'
      Size = 38
    end
    object cdsMasterIMPORTE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IMPORTE'
      Calculated = True
    end
  end
  inherited cdsConsult: TClientDataSet
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
      end
      item
        DataType = ftString
        Name = 'IDUSER'
        ParamType = ptInput
        Size = 38
      end
      item
        DataType = ftString
        Name = 'IDACCOUNT'
        ParamType = ptInput
        Size = 38
      end>
  end
  inherited fdsConsult: TfrxDBDataset
    FieldAliases.Strings = (
      'IDINPUTS=IDINPUTS'
      'CLIENTE=CLIENTE'
      'FECHA=FECHA'
      'ORDEN=ORDEN'
      'FACTURA=FACTURA'
      'MONEDA=MONEDA'
      'PRODUCTO=PRODUCTO'
      'ENTRADAS=ENTRADAS'
      'ESTADO=ESTADO'
      'IDUSER=IDUSER')
  end
  inherited frxConsult: TfrxReport
    ReportOptions.CreateDate = 43388.952617442130000000
    ReportOptions.LastChange = 43388.952617442130000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Datasets = <
      item
        DataSet = fdsConsult
        DataSetName = 'fdsConsult'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.000000000000000000
      PaperHeight = 216.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 978.898270000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 978.898270000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 978.898270000000000000
        object Memo2: TfrxMemoView
          Width = 978.897637795275600000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 249.322378033931300000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 249.322378033931300000
          Width = 66.560607598019320000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 315.882985631950600000
          Width = 67.743993018913870000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ORDEN')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 383.626978650864500000
          Width = 74.055381930351490000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FACTURA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 457.682360581216000000
          Width = 72.083072895527230000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MONEDA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 529.765433476743200000
          Width = 256.817152366263500000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUCTO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 786.582585843006700000
          Width = 77.605538193035150000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENTRADAS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Left = 864.188124036041900000
          Width = 114.709513759233700000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ESTADO')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 978.898270000000000000
        DataSet = fdsConsult
        DataSetName = 'fdsConsult'
        RowCount = 0
        object Memo11: TfrxMemoView
          Width = 249.322378033931300000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."CLIENTE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 249.322378033931300000
          Width = 66.560607598019320000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."FECHA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 315.882985631950600000
          Width = 67.743993018913870000
          Height = 18.897650000000000000
          DataField = 'ORDEN'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."ORDEN"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 383.626978650864500000
          Width = 74.055381930351490000
          Height = 18.897650000000000000
          DataField = 'FACTURA'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."FACTURA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          Left = 457.682360581216000000
          Width = 72.083072895527230000
          Height = 18.897650000000000000
          DataField = 'MONEDA'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."MONEDA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          Left = 529.765433476743200000
          Width = 256.817152366263500000
          Height = 18.897650000000000000
          DataField = 'PRODUCTO'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."PRODUCTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          Left = 786.582585843006700000
          Width = 77.605538193035150000
          Height = 18.897650000000000000
          DataField = 'ENTRADAS'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."ENTRADAS"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          Left = 864.188124036041900000
          Width = 114.709513759233700000
          Height = 18.897650000000000000
          DataField = 'ESTADO'
          DataSet = fdsConsult
          DataSetName = 'fdsConsult'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsConsult."ESTADO"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 978.898270000000000000
        object Memo19: TfrxMemoView
          Align = baWidth
          Width = 978.898270000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo20: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo21: TfrxMemoView
          Align = baRight
          Left = 903.307670000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object cdsCoin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCoin'
    RemoteServer = dspMaster
    Left = 160
    Top = 64
  end
  object cdsInputState: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInputState'
    RemoteServer = dspMaster
    Left = 160
    Top = 112
  end
end
