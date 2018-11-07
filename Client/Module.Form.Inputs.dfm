inherited frmInputs: TfrmInputs
  Caption = 'Ingresos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcList: TcxPageControl
    Properties.ActivePage = tabData
    inherited tabData: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 780
      ExplicitHeight = 475
      inherited lcData: TdxLayoutControl
        inline IdClient: TctlCodeLookup [0]
          Left = 98
          Top = 10
          Width = 672
          Height = 21
          TabOrder = 0
          ExplicitLeft = 98
          ExplicitTop = 10
          ExplicitWidth = 672
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDCLIENT'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 591
            Width = 591
          end
        end
        object dtpFecha: TcxDBDateEdit
          Left = 98
          Top = 37
          DataBinding.DataField = 'FECHA'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 121
        end
        object txtOrden: TcxDBTextEdit
          Left = 98
          Top = 64
          DataBinding.DataField = 'ORDEN'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object txtFactura: TcxDBTextEdit
          Left = 98
          Top = 91
          DataBinding.DataField = 'FACTURA'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cmbCoin: TcxDBLookupComboBox
          Left = 98
          Top = 118
          DataBinding.DataField = 'IDCOIN'
          DataBinding.DataSource = dsMaster
          Properties.KeyFieldNames = 'IDCOIN'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = dsCoin
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 145
        end
        inline IdProduct: TctlCodeLookup
          Left = 98
          Top = 145
          Width = 672
          Height = 21
          TabOrder = 5
          ExplicitLeft = 98
          ExplicitTop = 145
          ExplicitWidth = 672
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDPRODUCT'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 591
            Width = 591
          end
        end
        object txtCantidad: TcxDBCurrencyEdit
          Left = 98
          Top = 172
          DataBinding.DataField = 'CANTIDAD'
          DataBinding.DataSource = dsMaster
          Properties.DisplayFormat = ',0.00;-,0.00'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object txtPrecio: TcxDBCurrencyEdit
          Left = 259
          Top = 172
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object cmbInputState: TcxDBLookupComboBox
          Left = 98
          Top = 199
          DataBinding.DataField = 'IDINPUTSTATE'
          DataBinding.DataSource = dsMaster
          Properties.KeyFieldNames = 'IDINPUTSTATE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = dsInputState
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 145
        end
        object IMPORTE: TcxDBLabel
          Left = 649
          Top = 172
          DataBinding.DataField = 'IMPORTE'
          DataBinding.DataSource = dsMaster
          Style.HotTrack = False
          Transparent = True
          Height = 21
          Width = 121
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
          Index = 0
        end
        object lblFecha: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Fecha'
          Control = dtpFecha
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lblOrden: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Orden de compra'
          Control = txtOrden
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lblFactura: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'No. de factura'
          Control = txtFactura
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lblCoin: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Moneda'
          Control = cmbCoin
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object lblProduct: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Producto'
          Control = IdProduct
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 672
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object lblCantidad: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Peso'
          Control = txtCantidad
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lblPrecio: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignVert = avClient
          CaptionOptions.Text = 'Precio'
          Control = txtPrecio
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lblInputState: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Estado'
          Control = cmbInputState
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object lblImporte: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'Importe'
          Control = IMPORTE
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = lcDataGroup_Root
          LayoutDirection = ldHorizontal
          Index = 6
          AutoCreated = True
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
              Format = '#,#0.00'
              Kind = skSum
              FieldName = 'ENTRADAS'
              Column = grdListViewENTRADAS
              DisplayText = 'Entradas'
            end
            item
              Kind = skSum
              FieldName = 'CANTIDAD'
              Column = grdListViewCANTIDAD
              DisplayText = 'Cantidad'
            end>
          object grdListViewCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLIENTE'
          end
          object grdListViewFECHA: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FECHA'
          end
          object grdListViewORDEN: TcxGridDBColumn
            Caption = 'No. orden'
            DataBinding.FieldName = 'ORDEN'
          end
          object grdListViewFACTURA: TcxGridDBColumn
            Caption = 'No. factura'
            DataBinding.FieldName = 'FACTURA'
          end
          object grdListViewMONEDA: TcxGridDBColumn
            Caption = 'Moneda'
            DataBinding.FieldName = 'MONEDA'
          end
          object grdListViewPRODUCTO: TcxGridDBColumn
            Caption = 'Producto'
            DataBinding.FieldName = 'PRODUCTO'
          end
          object grdListViewCANTIDAD: TcxGridDBColumn
            Caption = 'Peso'
            DataBinding.FieldName = 'CANTIDAD'
          end
          object grdListViewPRECIO: TcxGridDBColumn
            Caption = 'Precio'
            DataBinding.FieldName = 'PRECIO'
          end
          object grdListViewENTRADAS: TcxGridDBColumn
            Caption = 'Entradas'
            DataBinding.FieldName = 'ENTRADAS'
          end
          object grdListViewESTADO: TcxGridDBColumn
            Caption = 'Estado'
            DataBinding.FieldName = 'ESTADO'
          end
        end
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmInputs.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dsConsult: TDataSource
    DataSet = dmInputs.cdsConsult
  end
  object dsCoin: TDataSource
    DataSet = dmInputs.cdsCoin
    Left = 26
    Top = 100
  end
  object dsInputState: TDataSource
    DataSet = dmInputs.cdsInputState
    Left = 26
    Top = 148
  end
end
