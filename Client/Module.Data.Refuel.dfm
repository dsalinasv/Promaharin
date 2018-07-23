inherited dmRefuel: TdmRefuel
  Height = 279
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmRefuel'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'IDREFUEL'
        ParamType = ptInput
        Size = 38
      end>
    ProviderName = 'dspRefuel'
    AfterInsert = cdsMasterAfterInsert
    OnCalcFields = cdsMasterCalcFields
    object cdsMasterIDREFUEL: TStringField
      FieldName = 'IDREFUEL'
      Origin = 'IDREFUEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsMasterFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object cdsMasterIDTRUCK: TStringField
      FieldName = 'IDTRUCK'
      Origin = 'IDTRUCK'
      Size = 38
    end
    object cdsMasterIDDESTINATION: TStringField
      FieldName = 'IDDESTINATION'
      Origin = 'IDDESTINATION'
      Size = 38
    end
    object cdsMasterIDDRIVER: TStringField
      FieldName = 'IDDRIVER'
      Origin = 'IDDRIVER'
      Size = 38
    end
    object cdsMasterIDSUPPLIER: TStringField
      FieldName = 'IDSUPPLIER'
      Origin = 'IDSUPPLIER'
      Size = 38
    end
    object cdsMasterIDFUEL: TStringField
      FieldName = 'IDFUEL'
      Origin = 'IDFUEL'
      Size = 38
    end
    object cdsMasterCANTIDAD: TFloatField
      DefaultExpression = '0'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object cdsMasterPRECIO: TFloatField
      DefaultExpression = '0'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object cdsMasterIMPORTE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IMPORTE'
      DisplayFormat = '$,0.00;-$,0.00'
      Calculated = True
    end
    object cdsMasterqryRefuelDestination: TDataSetField
      FieldName = 'qryRefuelDestination'
    end
  end
  object cdsRefuelByDate: TClientDataSet
    Aggregates = <>
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
    ProviderName = 'dspRefuelByDate'
    RemoteServer = dspMaster
    AfterInsert = cdsMasterAfterInsert
    OnCalcFields = cdsMasterCalcFields
    Left = 112
    Top = 64
    object cdsRefuelByDateIDREFUEL: TStringField
      FieldName = 'IDREFUEL'
      Required = True
      Size = 38
    end
    object cdsRefuelByDateFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object cdsRefuelByDateCAMION: TStringField
      FieldName = 'CAMION'
      ReadOnly = True
      Size = 50
    end
    object cdsRefuelByDateDESTINO: TStringField
      FieldName = 'DESTINO'
      ReadOnly = True
      Size = 50
    end
    object cdsRefuelByDateCHOFER: TStringField
      FieldName = 'CHOFER'
      ReadOnly = True
      Size = 50
    end
    object cdsRefuelByDateSURTIDOR: TStringField
      FieldName = 'SURTIDOR'
      ReadOnly = True
      Size = 50
    end
    object cdsRefuelByDateCOMBUSTIBLE: TStringField
      FieldName = 'COMBUSTIBLE'
      ReadOnly = True
      Size = 61
    end
    object cdsRefuelByDateCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00'
    end
    object cdsRefuelByDatePRECIO: TFloatField
      FieldName = 'PRECIO'
      DisplayFormat = '$,0.00;-$,0.00'
    end
    object cdsRefuelByDateIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      ReadOnly = True
      DisplayFormat = '$,0.00;-$,0.00'
    end
  end
  object frxRefuelByDate: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43269.964377395800000000
    ReportOptions.LastChange = 43269.977291562500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 112
    Top = 160
    Datasets = <
      item
        DataSet = fdsRefuelByDate
        DataSetName = 'fdsRefuelByDate'
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
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
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
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 980.410082000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de recargas de combustible')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Width = 978.897791570000000000
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
          Left = 37.795300000000000000
          Width = 74.653477920000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 112.448777920000000000
          Width = 151.181102360000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CAMION')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 415.569066470000000000
          Width = 151.181102360000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CHOFER')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 773.208035990000000000
          Width = 75.008449460000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'LITROS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 848.216485450000000000
          Width = 64.238867520000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COSTO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 912.455352970000000000
          Width = 70.221968600000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
          Style = 'Header'
        end
        object fdsRefuelByDateDESTINO: TfrxMemoView
          Left = 264.567100000000000000
          Width = 151.181102360000000000
          Height = 22.677180000000000000
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESTINO')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181102360000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMBUSTIBLE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo20: TfrxMemoView
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Memo.UTF8W = (
            '#')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 980.410082000000000000
        DataSet = fdsRefuelByDate
        DataSetName = 'fdsRefuelByDate'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsRefuelByDate."FECHA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 112.448777920000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataField = 'CAMION'
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsRefuelByDate."CAMION"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 415.569066470000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataField = 'CHOFER'
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsRefuelByDate."CHOFER"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 773.208035990000000000
          Width = 75.008449460000000000
          Height = 18.897650000000000000
          DataField = 'CANTIDAD'
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRefuelByDate."CANTIDAD"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 848.216485450000000000
          Width = 64.238867520000000000
          Height = 18.897650000000000000
          DataField = 'PRECIO'
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRefuelByDate."PRECIO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 912.455352970000000000
          Width = 70.221968600000000000
          Height = 18.897650000000000000
          DataField = 'IMPORTE'
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsRefuelByDate."IMPORTE"]')
          ParentFont = False
          Style = 'Data'
        end
        object fdsRefuelByDateDESTINO1: TfrxMemoView
          Left = 264.567100000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataField = 'DESTINO'
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Memo.UTF8W = (
            '[fdsRefuelByDate."DESTINO"]')
        end
        object fdsRefuelByDateCOMBUSTIBLE: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataField = 'COMBUSTIBLE'
          DataSet = fdsRefuelByDate
          DataSetName = 'fdsRefuelByDate'
          Memo.UTF8W = (
            '[fdsRefuelByDate."COMBUSTIBLE"]')
        end
        object Memo19: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Line]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 275.905690000000000000
        Width = 980.410082000000000000
        object Memo15: TfrxMemoView
          Align = baWidth
          Width = 980.410082000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo16: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 904.819482000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 980.410082000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 912.378108980000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsRefuelByDate."IMPORTE">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 771.024120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsRefuelByDate."CANTIDAD">,MasterData1)]')
        end
      end
    end
  end
  object fdsRefuelByDate: TfrxDBDataset
    UserName = 'fdsRefuelByDate'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDREFUEL=IDREFUEL'
      'FECHA=FECHA'
      'CAMION=CAMION'
      'DESTINO=DESTINO'
      'CHOFER=CHOFER'
      'SURTIDOR=SURTIDOR'
      'COMBUSTIBLE=COMBUSTIBLE'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'IMPORTE=IMPORTE')
    DataSet = cdsRefuelByDate
    BCDToCurrency = False
    Left = 112
    Top = 112
  end
  object frxXLSExport: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 24
    Top = 160
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 24
    Top = 112
  end
  object dspDestination: TDSProviderConnection
    ServerClassName = 'TsmDestination'
    Connected = True
    SQLConnection = dmGlobal.cntPromaharin
    Left = 112
    Top = 16
  end
  object cdsDestination: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDestination'
    RemoteServer = dspDestination
    Left = 120
    Top = 24
  end
  object cdsRefuelDestination: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMasterqryRefuelDestination
    Params = <>
    Left = 24
    Top = 208
  end
end
