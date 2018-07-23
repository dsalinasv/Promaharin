inherited frmFuel: TfrmFuel
  Caption = 'Combustibles'
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
        inherited txtName: TcxDBTextEdit
          ExplicitWidth = 718
          Width = 718
        end
        object txtPrecio: TcxDBTextEdit [2]
          Left = 52
          Top = 64
          DataBinding.DataField = 'PRECIO'
          DataBinding.DataSource = dsMaster
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        inherited lcDataGroup_Root: TdxLayoutGroup
          ItemIndex = 2
        end
        object lblPrecio: TdxLayoutItem
          Parent = lcDataGroup_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Costo'
          Control = txtPrecio
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
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
        Width = 780
        ExplicitWidth = 780
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = dmFuel.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
end
