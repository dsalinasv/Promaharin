inherited frmTruck: TfrmTruck
  Caption = 'Equipos/Unidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcList: TcxPageControl
    inherited tabData: TcxTabSheet
      inherited lcData: TdxLayoutControl
        inherited txtCode: TcxDBTextEdit
          Left = 73
          ExplicitLeft = 73
        end
        inherited txtName: TcxDBTextEdit
          Left = 73
          ExplicitLeft = 73
          ExplicitWidth = 697
          Width = 697
        end
        object txtMarca: TcxDBTextEdit [2]
          Left = 73
          Top = 118
          DataBinding.DataField = 'MARCA'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 697
        end
        object txtModelo: TcxDBCurrencyEdit [3]
          Left = 73
          Top = 145
          DataBinding.DataField = 'MODELO'
          DataBinding.DataSource = dsMaster
          Properties.AssignedValues.DisplayFormat = True
          Properties.DecimalPlaces = 0
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object txtPlacas: TcxDBTextEdit [4]
          Left = 73
          Top = 172
          DataBinding.DataField = 'PLACAS'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 697
        end
        object dtpVigenciaTarjeta: TcxDBDateEdit [5]
          Left = 22
          Top = 235
          DataBinding.DataField = 'VIGENCIA_TARJETA'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 158
        end
        object dtpVigenciaSeguro: TcxDBDateEdit [6]
          Left = 22
          Top = 280
          DataBinding.DataField = 'VIGENCIA_SEGURO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 158
        end
        object txtCosto: TcxDBTextEdit [7]
          Left = 73
          Top = 91
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cmbFuel: TcxDBLookupComboBox [8]
          Left = 73
          Top = 64
          DataBinding.DataField = 'IDFUEL'
          DataBinding.DataSource = dsMaster
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'IDFUEL'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'digo'
              FieldName = 'CODE'
            end
            item
              Caption = 'Nombre'
              FieldName = 'NAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = dsFuel
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 697
        end
        inherited lcDataGroup_Root: TdxLayoutGroup
          ItemIndex = 3
        end
        object lblMarca: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Marca'
          Control = txtMarca
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object lblModelo: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Modelo'
          Control = txtModelo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object lblPlacas: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Placas'
          Control = txtPlacas
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object lblVigenciaTarjeta: TdxLayoutItem
          Parent = lgVigencias
          CaptionOptions.AlignHorz = taCenter
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Vigencia de tarjeta de circulaci'#243'n'
          CaptionOptions.Layout = clTop
          Control = dtpVigenciaTarjeta
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lblVigenciaSeguro: TdxLayoutItem
          Parent = lgVigencias
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Vigencia del seguro'
          CaptionOptions.Layout = clTop
          Control = dtpVigenciaSeguro
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lgVigencias: TdxLayoutGroup
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Vigencias'
          ButtonOptions.Buttons = <>
          ItemIndex = 1
          Index = 7
        end
        object lblCosto: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Costo'
          Control = txtCosto
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lblFuel: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Combustible'
          Control = cmbFuel
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmTruck.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
  object dsFuel: TDataSource
    DataSet = dmTruck.cdsFuel
    Left = 24
    Top = 56
  end
end
