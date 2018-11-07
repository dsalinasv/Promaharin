inherited frmQuotation: TfrmQuotation
  Caption = 'Cotizaciones'
  ExplicitTop = -158
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcList: TcxPageControl
    inherited tabData: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 780
      ExplicitHeight = 475
      inherited lcData: TdxLayoutControl
        inline IdClient: TctlCodeLookup [0]
          Left = 100
          Top = 37
          Width = 670
          Height = 21
          TabOrder = 1
          ExplicitLeft = 100
          ExplicitTop = 37
          ExplicitWidth = 670
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDCLIENT'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 589
            Width = 589
          end
        end
        object dtpFecha: TcxDBDateEdit
          Left = 100
          Top = 10
          DataBinding.DataField = 'FECHA'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 121
        end
        object txtCantidad: TcxDBCurrencyEdit
          Left = 100
          Top = 64
          DataBinding.DataField = 'CANTIDAD'
          DataBinding.DataSource = dsMaster
          Properties.DisplayFormat = ',0.00;-,0.00'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cmbUnit: TcxDBLookupComboBox
          Left = 100
          Top = 91
          DataBinding.DataField = 'IDUNIT'
          DataBinding.DataSource = dsMaster
          Properties.KeyFieldNames = 'IDUNIT'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = dsUnit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 145
        end
        inline IdProduct: TctlCodeLookup
          Left = 100
          Top = 118
          Width = 670
          Height = 21
          TabOrder = 6
          ExplicitLeft = 100
          ExplicitTop = 118
          ExplicitWidth = 670
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDPRODUCT'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 589
            Width = 589
          end
        end
        object txtPrecio: TcxDBCurrencyEdit
          Left = 261
          Top = 64
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object IMPORTE: TcxDBLabel
          Left = 649
          Top = 64
          DataBinding.DataField = 'IMPORTE'
          DataBinding.DataSource = dsMaster
          Style.HotTrack = False
          Transparent = True
          Height = 21
          Width = 121
        end
        object grdCondition: TcxGrid
          Left = 100
          Top = 145
          Width = 670
          Height = 200
          TabOrder = 7
          object grdConditionView: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Enabled = False
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Enabled = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Enabled = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Enabled = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Refresh.Enabled = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dsQuotationCondition
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.Appending = True
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.Indicator = True
            object grdConditionViewIDCONDITION: TcxGridDBColumn
              DataBinding.FieldName = 'IDCONDITION'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'IDCONDITION'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListSource = dsCondition
            end
          end
          object grdConditionLevel: TcxGridLevel
            GridView = grdConditionView
          end
        end
        inline IdSeller: TctlCodeLookup
          Left = 100
          Top = 351
          Width = 670
          Height = 21
          TabOrder = 8
          ExplicitLeft = 100
          ExplicitTop = 351
          ExplicitWidth = 670
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDSELLER'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 589
            Width = 589
          end
          inherited txtCode: TcxButtonEdit
            ExplicitLeft = 3
          end
        end
        inherited lcDataGroup_Root: TdxLayoutGroup
          ItemIndex = 6
        end
        object lblClient: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Cliente'
          Control = IdClient
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lblFecha: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Fecha'
          Control = dtpFecha
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lblCantidad: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Peso'
          Control = txtCantidad
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lblUnidad: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Unidad de medida'
          Control = cmbUnit
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lblProduct: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Producto'
          Control = IdProduct
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object lblPrecio: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignVert = avClient
          CaptionOptions.Text = 'Precio'
          Control = txtPrecio
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = lcDataGroup_Root
          LayoutDirection = ldHorizontal
          Index = 2
          AutoCreated = True
        end
        object lblImporte: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'IMPORTE'
          Control = IMPORTE
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lblCondition: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Condiciones'
          Control = grdCondition
          ControlOptions.OriginalHeight = 200
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object lblSeller: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Vendedor'
          Control = IdSeller
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 670
          ControlOptions.ShowBorder = False
          Index = 6
        end
      end
    end
    inherited tabList: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 780
      ExplicitHeight = 475
      inherited grdList: TcxGrid
        inherited grdListView: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'CANTIDAD'
              Column = grdListViewCANTIDAD
            end
            item
              Kind = skSum
              FieldName = 'PRECIO'
              Column = grdListViewPRECIO
            end
            item
              Kind = skSum
              FieldName = 'IMPORTE'
              Column = grdListViewIMPORTE
            end>
          object grdListViewFECHA: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FECHA'
          end
          object grdListViewCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLIENTE'
          end
          object grdListViewDIRECCION: TcxGridDBColumn
            Caption = 'Direccion'
            DataBinding.FieldName = 'DIRECCION'
          end
          object grdListViewTELEFONO: TcxGridDBColumn
            Caption = 'Tel'#233'fono'
            DataBinding.FieldName = 'TELEFONO'
          end
          object grdListViewUNIDAD: TcxGridDBColumn
            Caption = 'Unidad de medida'
            DataBinding.FieldName = 'UNIDAD'
          end
          object grdListViewPRODUCTO: TcxGridDBColumn
            Caption = 'Producto'
            DataBinding.FieldName = 'PRODUCTO'
          end
          object grdListViewCANTIDAD: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'CANTIDAD'
          end
          object grdListViewPRECIO: TcxGridDBColumn
            Caption = 'Precio'
            DataBinding.FieldName = 'PRECIO'
          end
          object grdListViewIMPORTE: TcxGridDBColumn
            Caption = 'Importe'
            DataBinding.FieldName = 'IMPORTE'
          end
          object grdListViewVENDEDOR: TcxGridDBColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'VENDEDOR'
          end
        end
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmQuotation.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dsConsult: TDataSource
    DataSet = dmQuotation.cdsConsult
  end
  object dsUnit: TDataSource
    DataSet = dmQuotation.cdsUnit
    Left = 24
    Top = 104
  end
  object dsCondition: TDataSource
    DataSet = dmQuotation.cdsCondition
    Left = 26
    Top = 156
  end
  object dsQuotationCondition: TDataSource
    DataSet = dmQuotation.cdsQuotationCondition
    Left = 26
    Top = 204
  end
end
