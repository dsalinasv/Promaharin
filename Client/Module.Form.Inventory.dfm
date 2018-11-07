inherited frmInventory: TfrmInventory
  Caption = 'Inventarios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcList: TcxPageControl
    inherited tabData: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 780
      ExplicitHeight = 475
      inherited lcData: TdxLayoutControl
        object txtPrecio: TcxDBCurrencyEdit [0]
          Left = 233
          Top = 118
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object txtCantidad: TcxDBCurrencyEdit [1]
          Left = 73
          Top = 118
          DataBinding.DataField = 'CANTIDAD'
          DataBinding.DataSource = dsMaster
          Properties.DisplayFormat = ',0.00;-,0.00'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object dtpFecha: TcxDBDateEdit [2]
          Left = 73
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
        object IMPORTE: TcxDBLabel [3]
          Left = 649
          Top = 145
          DataBinding.DataField = 'IMPORTE'
          DataBinding.DataSource = dsMaster
          Style.HotTrack = False
          Transparent = True
          Height = 21
          Width = 121
        end
        inline IdProvisioner_PRECIO_IdFuel: TctlCodeLookup [4]
          Left = 73
          Top = 64
          Width = 697
          Height = 21
          TabOrder = 2
          ExplicitLeft = 73
          ExplicitTop = 64
          ExplicitWidth = 697
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDPROVISIONER'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 616
            Width = 616
          end
        end
        inline IdFuel: TctlCodeLookup
          Left = 73
          Top = 91
          Width = 697
          Height = 21
          TabOrder = 3
          ExplicitLeft = 73
          ExplicitTop = 91
          ExplicitWidth = 697
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDFUEL'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 616
            Width = 616
          end
        end
        object txtCantidadAjuste: TcxDBTextEdit
          Left = 73
          Top = 145
          DataBinding.DataField = 'AJUSTE'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object SUBTOTAL: TcxDBLabel
          Left = 649
          Top = 118
          DataBinding.DataField = 'SUBTOTAL'
          DataBinding.DataSource = dsMaster
          Style.HotTrack = False
          Transparent = True
          Height = 21
          Width = 121
        end
        object txtFolio: TcxDBTextEdit
          Left = 73
          Top = 37
          DataBinding.DataField = 'FOLIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        inherited lcDataGroup_Root: TdxLayoutGroup
          ItemIndex = 1
        end
        object lblPrecio: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignVert = avClient
          CaptionOptions.Text = 'Costo'
          Control = txtPrecio
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lblCantidad: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Litros'
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
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lblImporte: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahRight
          CaptionOptions.Text = 'Importe'
          Control = IMPORTE
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = lcDataGroup_Root
          LayoutDirection = ldHorizontal
          Index = 4
          AutoCreated = True
        end
        object lblProvisioner: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Proveedor'
          Control = IdProvisioner_PRECIO_IdFuel
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lblFuel: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Combustible'
          Control = IdFuel
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lblCantidadAjuste: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'Ajuste lts'
          Control = txtCantidadAjuste
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lblSubtotal: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'Subtotal'
          Control = SUBTOTAL
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = lcDataGroup_Root
          LayoutDirection = ldHorizontal
          Index = 5
          AutoCreated = True
        end
        object lblFolio: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Folio'
          Control = txtFolio
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    inherited tabList: TcxTabSheet
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
            Width = 60
          end
          object grdListViewFOLIO: TcxGridDBColumn
            Caption = 'Folio'
            DataBinding.FieldName = 'FOLIO'
          end
          object grdListViewPROVISIONER: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'PROVISIONER'
          end
          object grdListViewCOMBUSTIBLE: TcxGridDBColumn
            Caption = 'Combustible'
            DataBinding.FieldName = 'COMBUSTIBLE'
          end
          object grdListViewCANTIDAD: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'CANTIDAD'
          end
          object grdListViewPRECIO: TcxGridDBColumn
            Caption = 'Precio'
            DataBinding.FieldName = 'PRECIO'
          end
          object grdListViewSUBTOTAL: TcxGridDBColumn
            Caption = 'Subtotal'
            DataBinding.FieldName = 'SUBTOTAL'
          end
          object grdListViewAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste'
            DataBinding.FieldName = 'AJUSTE'
          end
          object grdListViewIMPORTE: TcxGridDBColumn
            Caption = 'Importe'
            DataBinding.FieldName = 'IMPORTE'
          end
        end
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmInventory.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dsConsult: TDataSource
    DataSet = dmInventory.cdsConsult
  end
end
