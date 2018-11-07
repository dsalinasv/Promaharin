inherited frmCondition: TfrmCondition
  Caption = 'Condiciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcList: TcxPageControl
    inherited tabData: TcxTabSheet
      inherited lcData: TdxLayoutControl
        Width = 780
        inherited txtName: TcxDBTextEdit
          ExplicitWidth = 718
          Width = 718
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
    DataSet = dmCondition.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
end
