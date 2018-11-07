inherited frmReception: TfrmReception
  Caption = 'Recepci'#243'n de materia prima'
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
        inline IdProvider_PRECIO_IdProduct: TctlCodeLookup [0]
          Left = 84
          Top = 37
          Width = 686
          Height = 21
          TabOrder = 1
          ExplicitLeft = 84
          ExplicitTop = 37
          ExplicitWidth = 686
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDPROVIDER'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 605
            Width = 605
          end
        end
        object txtPrecio: TcxDBCurrencyEdit
          Left = 245
          Top = 145
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object txtCantidad: TcxDBCurrencyEdit
          Left = 84
          Top = 145
          DataBinding.DataField = 'CANTIDAD'
          DataBinding.DataSource = dsMaster
          Properties.DisplayFormat = ',0.00;-,0.00'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object dtpFecha: TcxDBDateEdit
          Left = 84
          Top = 10
          DataBinding.DataField = 'FECHA'
          DataBinding.DataSource = dsMaster
          Properties.Kind = ckDateTime
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 157
        end
        inline IdProduct: TctlCodeLookup
          Left = 84
          Top = 64
          Width = 686
          Height = 21
          TabOrder = 2
          ExplicitLeft = 84
          ExplicitTop = 64
          ExplicitWidth = 686
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDPRODUCT'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 605
            Width = 605
          end
        end
        object IMPORTE: TcxDBLabel
          Left = 649
          Top = 145
          DataBinding.DataField = 'IMPORTE'
          DataBinding.DataSource = dsMaster
          Style.HotTrack = False
          Transparent = True
          Height = 21
          Width = 121
        end
        inline IdTruck: TctlCodeLookup
          Left = 84
          Top = 91
          Width = 686
          Height = 21
          TabOrder = 3
          ExplicitLeft = 84
          ExplicitTop = 91
          ExplicitWidth = 686
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDTRUCK'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 605
            Width = 605
          end
        end
        inline IdDriver: TctlCodeLookup
          Left = 84
          Top = 118
          Width = 686
          Height = 21
          TabOrder = 4
          ExplicitLeft = 84
          ExplicitTop = 118
          ExplicitWidth = 686
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDDRIVER'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 605
            Width = 605
          end
        end
        inherited lcDataGroup_Root: TdxLayoutGroup
          ItemIndex = 2
        end
        object lblProveedor: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Proveedor'
          Control = IdProvider_PRECIO_IdProduct
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 1
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
        object lblFecha: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Fecha'
          Control = dtpFecha
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 157
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lblProducto: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Producto'
          Control = IdProduct
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 705
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lblImporte: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahRight
          CaptionOptions.Text = 'Importe'
          Control = IMPORTE
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = lcDataGroup_Root
          LayoutDirection = ldHorizontal
          Index = 5
          AutoCreated = True
        end
        object lblTruck: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Equipo/Unidad'
          Control = IdTruck
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lblDriver: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Operador'
          Control = IdDriver
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 4
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
              Format = ',0.00;-,0.00'
              Kind = skSum
              FieldName = 'CANTIDAD'
              Column = grdListViewCANTIDAD
              Sorted = True
            end
            item
              Format = '$,0.00;-$,0.00'
              Kind = skSum
              FieldName = 'IMPORTE'
              Column = grdListViewIMPORTE
            end>
          OptionsBehavior.AlwaysShowEditor = False
          OptionsData.Appending = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.CellSelect = False
          OptionsSelection.CellMultiSelect = False
          OptionsSelection.InvertSelect = True
          OptionsSelection.ShowCheckBoxesDynamically = True
          object grdListViewFECHA: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FECHA'
          end
          object grdListViewPRODUCTO: TcxGridDBColumn
            Caption = 'Producto'
            DataBinding.FieldName = 'PRODUCTO'
          end
          object grdListViewPROVEEDOR: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'PROVEEDOR'
          end
          object grdListViewCANTIDAD: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'CANTIDAD'
            Width = 80
          end
          object grdListViewPRECIO: TcxGridDBColumn
            Caption = 'Precio'
            DataBinding.FieldName = 'PRECIO'
            Width = 80
          end
          object grdListViewIMPORTE: TcxGridDBColumn
            Caption = 'Importe'
            DataBinding.FieldName = 'IMPORTE'
            Width = 80
          end
        end
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmReception.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dsConsult: TDataSource
    DataSet = dmReception.cdsConsult
  end
end
