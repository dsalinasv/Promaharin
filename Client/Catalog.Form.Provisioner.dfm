inherited frmProvisioner: TfrmProvisioner
  Caption = 'Proveedores de combustible'
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
        object cmbCombustible: TcxDBLookupComboBox [2]
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
        object txtPrecio: TcxDBTextEdit [3]
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
        inherited lcDataGroup_Root: TdxLayoutGroup
          ItemIndex = 3
        end
        object lblCombustible: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Combustible'
          Control = cmbCombustible
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lblPrecio: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Costo'
          Control = txtPrecio
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmProvisioner.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
  object dsFuel: TDataSource
    DataSet = dmProvisioner.cdsFuel
    Left = 24
    Top = 56
  end
end
