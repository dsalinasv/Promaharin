inherited frmClient: TfrmClient
  Caption = 'Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcList: TcxPageControl
    ExplicitTop = 56
    ExplicitHeight = 505
    inherited tabData: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 780
      ExplicitHeight = 475
      inherited lcData: TdxLayoutControl
        Width = 780
        ExplicitWidth = 780
        inherited txtCode: TcxDBTextEdit
          Left = 58
          ExplicitLeft = 58
        end
        inherited txtName: TcxDBTextEdit
          Left = 58
          ExplicitLeft = 58
          ExplicitWidth = 712
          Width = 712
        end
        object txtDireccion: TcxDBTextEdit [2]
          Left = 58
          Top = 64
          DataBinding.DataField = 'DIRECCION'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 712
        end
        object cxDBTextEdit1: TcxDBTextEdit [3]
          Left = 58
          Top = 91
          DataBinding.DataField = 'TELEFONO'
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
        object lblDireccion: TdxLayoutItem
          Parent = lcDataGroup_Root
          CaptionOptions.Text = 'Direcci'#243'n'
          Control = txtDireccion
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lblTelefono: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Tel'#233'fono'
          Control = cxDBTextEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
    inherited tabList: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 780
      ExplicitHeight = 475
      inherited grdList: TcxGrid
        Width = 780
        ExplicitWidth = 780
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmClient.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
end
