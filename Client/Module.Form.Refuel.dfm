inherited frmRefuel: TfrmRefuel
  Caption = 'Recarga de combustible'
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
        inline IdTruck_PRECIO_IdFuel: TctlCodeLookup [0]
          Left = 84
          Top = 37
          Width = 686
          Height = 21
          TabOrder = 1
          ExplicitLeft = 84
          ExplicitTop = 37
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
        object txtPrecio: TcxDBCurrencyEdit
          Left = 244
          Top = 351
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object txtCantidad: TcxDBCurrencyEdit
          Left = 84
          Top = 351
          DataBinding.DataField = 'CANTIDAD'
          DataBinding.DataSource = dsMaster
          Properties.DisplayFormat = ',0.00;-,0.00'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object dtpFecha: TcxDBDateEdit
          Left = 84
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
        object IMPORTE: TcxDBLabel
          Left = 649
          Top = 351
          DataBinding.DataField = 'IMPORTE'
          DataBinding.DataSource = dsMaster
          Style.HotTrack = False
          Transparent = True
          Height = 21
          Width = 121
        end
        inline IdDriver: TctlCodeLookup
          Left = 84
          Top = 270
          Width = 686
          Height = 21
          TabOrder = 3
          ExplicitLeft = 84
          ExplicitTop = 270
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
        inline IdSupplier: TctlCodeLookup
          Left = 84
          Top = 297
          Width = 686
          Height = 21
          TabOrder = 4
          ExplicitLeft = 84
          ExplicitTop = 297
          ExplicitWidth = 686
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDSUPPLIER'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 605
            Width = 605
          end
        end
        inline IdFuel: TctlCodeLookup
          Left = 84
          Top = 324
          Width = 686
          Height = 21
          TabOrder = 5
          ExplicitLeft = 84
          ExplicitTop = 324
          ExplicitWidth = 686
          inherited txtId: TcxDBTextEdit
            DataBinding.DataField = 'IDFUEL'
            DataBinding.DataSource = dsMaster
          end
          inherited txtName: TcxTextEdit
            ExplicitWidth = 605
            Width = 605
          end
        end
        object grdDestinations: TcxGrid
          Left = 84
          Top = 64
          Width = 686
          Height = 200
          TabOrder = 2
          object grdDestinationsView: TcxGridDBTableView
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
            DataController.DataSource = dsRefuelDestination
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
            object grdDestinationsViewIDDESTINATION: TcxGridDBColumn
              Caption = 'Destinos'
              DataBinding.FieldName = 'IDDESTINATION'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'IDDESTINATION'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListSource = dsDestination
            end
          end
          object grdDestinationsLevel: TcxGridLevel
            GridView = grdDestinationsView
          end
        end
        inherited lcDataGroup_Root: TdxLayoutGroup
          ItemIndex = 2
        end
        object lblTruck: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Equipo/Unidad'
          Control = IdTruck_PRECIO_IdFuel
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 1
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
          Index = 6
          AutoCreated = True
        end
        object lblDriver: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Operador'
          Control = IdDriver
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lblSupplier: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Surtidor'
          Control = IdSupplier
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object lblFuel: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Combustible'
          Control = IdFuel
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 172
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object lblDestinos: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Destinos'
          Control = grdDestinations
          ControlOptions.OriginalHeight = 200
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 2
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
            Width = 60
          end
          object grdListViewCAMION: TcxGridDBColumn
            Caption = 'Cami'#243'n'
            DataBinding.FieldName = 'CAMION'
          end
          object grdListViewCHOFER: TcxGridDBColumn
            Caption = 'Chofer'
            DataBinding.FieldName = 'CHOFER'
          end
          object grdListViewDESTINO: TcxGridDBColumn
            Caption = 'Destinos'
            DataBinding.FieldName = 'DESTINO'
          end
          object grdListViewSURTIDOR: TcxGridDBColumn
            Caption = 'Surtidor'
            DataBinding.FieldName = 'SURTIDOR'
          end
          object grdListViewCOMBUSTIBLE: TcxGridDBColumn
            Caption = 'Combustible'
            DataBinding.FieldName = 'COMBUSTIBLE'
          end
          object grdListViewCANTIDAD: TcxGridDBColumn
            Caption = 'Litros'
            DataBinding.FieldName = 'CANTIDAD'
            Width = 80
          end
          object grdListViewPRECIO: TcxGridDBColumn
            Caption = 'Costo'
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
    DataSet = dmRefuel.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dsConsult: TDataSource
    DataSet = dmRefuel.cdsConsult
  end
  object dsDestination: TDataSource
    DataSet = dmRefuel.cdsDestination
    Left = 26
    Top = 100
  end
  object dsRefuelDestination: TDataSource
    DataSet = dmRefuel.cdsRefuelDestination
    Left = 26
    Top = 148
  end
end
