inherited dmBatch: TdmBatch
  Height = 213
  Width = 311
  inherited dspMaster: TDSProviderConnection
    ServerClassName = 'TsmBatch'
    SQLConnection = dmGlobal.cntPromaharin
  end
  inherited cdsMaster: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'IDBATCH'
        ParamType = ptInput
        Size = 38
      end>
    ProviderName = 'dspBatch'
    AfterInsert = cdsMasterAfterInsert
    object cdsMasterIDBATCH: TStringField
      FieldName = 'IDBATCH'
      Origin = 'IDBATCH'
      Required = True
      Size = 38
    end
    object cdsMasterFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object cdsMasterCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsMasterIDBATCHSTATUS: TIntegerField
      FieldName = 'IDBATCHSTATUS'
      Origin = 'IDBATCHSTATUS'
    end
    object cdsMasterqryBatchDetail: TDataSetField
      FieldName = 'qryBatchDetail'
    end
  end
  object cdsBatchByDate: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspBatchByDates'
    RemoteServer = dspMaster
    AfterInsert = cdsMasterAfterInsert
    Left = 176
    Top = 64
    object cdsBatchByDateIDBATCH: TStringField
      FieldName = 'IDBATCH'
      Required = True
      Size = 38
    end
    object cdsBatchByDateFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object cdsBatchByDateCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsBatchByDateSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 10
    end
  end
  object frxBatchByDate: TfrxReport
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
    Left = 176
    Top = 160
    Datasets = <
      item
        DataSet = fdsBatchByDate
        DataSetName = 'fdsBatchByDate'
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Reporte de lotes completos')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Width = 740.787401574803000000
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
          Width = 131.346427920627000000
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
          Left = 131.346427920000000000
          Width = 197.293448550000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 328.639876470000000000
          Width = 202.678239520000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 740.409927000000000000
        DataSet = fdsBatchByDate
        DataSetName = 'fdsBatchByDate'
        RowCount = 0
        object Memo9: TfrxMemoView
          Width = 131.346427920627000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = fdsBatchByDate
          DataSetName = 'fdsBatchByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsBatchByDate."FECHA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 131.346427920000000000
          Width = 197.293448550000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = fdsBatchByDate
          DataSetName = 'fdsBatchByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsBatchByDate."CODIGO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 328.639876470983000000
          Width = 202.678239519695000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = fdsBatchByDate
          DataSetName = 'fdsBatchByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsBatchByDate."STATUS"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
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
          Left = 664.819327000000000000
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
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 670.488188980000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '$#,#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsReceptionByDate."IMPORTE">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 529.134200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,#0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsReceptionByDate."CANTIDAD">,MasterData1)]')
        end
      end
    end
  end
  object fdsBatchByDate: TfrxDBDataset
    UserName = 'fdsBatchByDate'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDBATCH=IDBATCH'
      'FECHA=FECHA'
      'CODIGO=CODIGO'
      'STATUS=STATUS')
    DataSet = cdsBatchByDate
    BCDToCurrency = False
    Left = 176
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
  object cdsBatchDetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMasterqryBatchDetail
    Params = <>
    Left = 96
    Top = 64
  end
  object cdsBatchStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBatchStatus'
    RemoteServer = dspMaster
    Left = 96
    Top = 112
  end
  object frxLabel: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43303.835683541700000000
    ReportOptions.LastChange = 43303.835683541700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 248
    Top = 160
    Datasets = <
      item
        DataSet = fdsLabel
        DataSetName = 'fdsLabel'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 3
      ColumnWidth = 65.300000000000000000
      ColumnPositions.Strings = (
        '0'
        '65.30'
        '130.60')
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 313.700990000000000000
        Top = 18.897650000000000000
        Width = 246.803309000000000000
        DataSet = fdsLabel
        DataSetName = 'fdsLabel'
        RowCount = 0
        object fdsLabelLote: TfrxMemoView
          Left = 86.929190000000000000
          Top = 249.448980000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'Lote'
          DataSet = fdsLabel
          DataSetName = 'fdsLabel'
          Memo.UTF8W = (
            '[fdsLabel."Lote"]')
        end
        object fdsLabelFECHA: TfrxMemoView
          Left = 86.929190000000000000
          Top = 275.905690000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = fdsLabel
          DataSetName = 'fdsLabel'
          Memo.UTF8W = (
            '[fdsLabel."FECHA"]')
        end
      end
    end
  end
  object fdsLabel: TfrxDBDataset
    UserName = 'fdsLabel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Lote=Lote'
      'Fecha=FECHA')
    DataSet = cdsLabel
    BCDToCurrency = False
    Left = 248
    Top = 112
  end
  object cdsLabel: TClientDataSet
    Tag = 1
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Lote'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fecha'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 248
    Top = 64
    object cdsLabelLote: TStringField
      FieldName = 'Lote'
    end
    object cdsLabelFecha: TDateField
      FieldName = 'Fecha'
    end
  end
end
