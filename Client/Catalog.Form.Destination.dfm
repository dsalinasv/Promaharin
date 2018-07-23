inherited frmDestination: TfrmDestination
  Caption = 'Destinos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcList: TcxPageControl
    Properties.ActivePage = tabList
  end
  inherited dsMaster: TDataSource
    DataSet = dmDestination.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
end
