inherited dmBatch: TdmBatch
  Height = 213
  Width = 350
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
    AfterInsert = cdsMasterAfterInsert
    object cdsMasterIDBATCH: TStringField
      FieldName = 'IDBATCH'
      Origin = 'IDBATCH'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsMasterFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMasterCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMasterIDBATCHSTATUS: TIntegerField
      FieldName = 'IDBATCHSTATUS'
      Origin = 'IDBATCHSTATUS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMasterqryBatchDetail: TDataSetField
      FieldName = 'qryBatchDetail'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited cdsConsult: TClientDataSet
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
    Left = 176
    object cdsConsultIDBATCH: TStringField
      FieldName = 'IDBATCH'
      ProviderFlags = [pfInKey]
      Required = True
      Size = 38
    end
    object cdsConsultFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object cdsConsultCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsConsultSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 10
    end
  end
  inherited fdsConsult: TfrxDBDataset
    UserName = 'fdsBatchByDate'
    FieldAliases.Strings = (
      'IDBATCH=IDBATCH'
      'FECHA=FECHA'
      'CODIGO=CODIGO'
      'STATUS=STATUS')
    Left = 176
  end
  inherited frxConsult: TfrxReport
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    ReportOptions.CreateDate = 43269.964377395800000000
    ReportOptions.LastChange = 43269.977291562500000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 176
    Datasets = <
      item
        DataSet = fdsConsult
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
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
          Frame.Typ = []
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
        Frame.Typ = []
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
          Width = 131.346427920000000000
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
        object Memo4: TfrxMemoView
          Left = 131.346427920000000000
          Width = 197.293448550000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          Frame.Typ = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 740.409927000000000000
        DataSet = fdsConsult
        DataSetName = 'fdsBatchByDate'
        RowCount = 0
        object Memo9: TfrxMemoView
          Width = 131.346427920627000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = fdsConsult
          DataSetName = 'fdsBatchByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
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
          DataSet = fdsConsult
          DataSetName = 'fdsBatchByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
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
          DataSet = fdsConsult
          DataSetName = 'fdsBatchByDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsBatchByDate."STATUS"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 664.819327000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object cdsBatchDetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMasterqryBatchDetail
    Params = <>
    Left = 96
    Top = 64
    object cdsBatchDetailIDBATCHDETAIL: TStringField
      FieldName = 'IDBATCHDETAIL'
      Origin = 'IDBATCHDETAIL'
      ProviderFlags = [pfInKey]
      Required = True
      Size = 38
    end
    object cdsBatchDetailIDBATCH: TStringField
      FieldName = 'IDBATCH'
      Origin = 'IDBATCH'
      Size = 38
    end
    object cdsBatchDetailFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object cdsBatchDetailCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object cdsBatchDetailCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object cdsBatchDetailIMPRESO: TSmallintField
      DefaultExpression = '0'
      FieldName = 'IMPRESO'
    end
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
    Version = '6.0.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43303.835683541700000000
    ReportOptions.LastChange = 43320.999945381950000000
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
      Orientation = poLandscape
      PaperWidth = 355.600000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 5
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 5
      ColumnWidth = 67.200000000000000000
      ColumnPositions.Strings = (
        '0'
        '67.20'
        '134.40'
        '201.60'
        '268.80')
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 313.700990000000000000
        Top = 18.897650000000000000
        Width = 253.984416000000000000
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
          Frame.Typ = []
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
          Frame.Typ = []
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
  object frxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 304
    Top = 160
  end
end
