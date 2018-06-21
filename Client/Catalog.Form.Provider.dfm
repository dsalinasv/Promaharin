inherited frmProvider: TfrmProvider
  Caption = 'Proveedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcList: TcxPageControl
    ExplicitTop = 40
    ExplicitHeight = 521
    inherited tabData: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 780
      ExplicitHeight = 491
      inherited lcData: TdxLayoutControl
        Width = 780
        ExplicitWidth = 780
        inherited txtCode: TcxDBTextEdit
          Left = 74
          ExplicitLeft = 74
        end
        inherited txtName: TcxDBTextEdit
          Left = 74
          ExplicitLeft = 74
          ExplicitWidth = 696
          Width = 696
        end
        object txtRazonSocial: TcxDBTextEdit [2]
          Left = 74
          Top = 64
          DataBinding.DataField = 'RAZON_SOCIAL'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 696
        end
        object txtTelefono: TcxDBTextEdit [3]
          Left = 74
          Top = 91
          DataBinding.DataField = 'TELEFONO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 696
        end
        object txtContacto: TcxDBTextEdit [4]
          Left = 74
          Top = 118
          DataBinding.DataField = 'CONTACTO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 696
        end
        object txtDireccion: TcxDBTextEdit [5]
          Left = 74
          Top = 145
          DataBinding.DataField = 'DIRECCION'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 696
        end
        object cmbProducto: TcxDBLookupComboBox [6]
          Left = 74
          Top = 172
          DataBinding.DataField = 'IDPRODUCT'
          DataBinding.DataSource = dsMaster
          Properties.KeyFieldNames = 'IDPRODUCT'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = dsProduct
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 696
        end
        object txtPrecio: TcxDBCurrencyEdit [7]
          Left = 74
          Top = 199
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        inherited lcDataGroup_Root: TdxLayoutGroup
          ItemIndex = 7
        end
        object lblRazonSocial: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Raz'#243'n social'
          Control = txtRazonSocial
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lblTelefono: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Tel'#233'fono'
          Control = txtTelefono
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lblContacto: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Contacto'
          Control = txtContacto
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object lblDireccion: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Direcci'#243'n'
          Control = txtDireccion
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object lblProducto: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Producto'
          Control = cmbProducto
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object lblPrecio: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Precio'
          Control = txtPrecio
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 7
        end
      end
    end
    inherited tabList: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 780
      ExplicitHeight = 491
      inherited grdList: TcxGrid
        Width = 780
        ExplicitWidth = 780
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmProvider.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
  object dsProduct: TDataSource
    DataSet = dmProvider.cdsProduct
    Left = 24
    Top = 64
  end
end
