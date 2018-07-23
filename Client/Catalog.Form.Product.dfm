inherited frmProduct: TfrmProduct
  Caption = 'Productos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dsMaster: TDataSource
    DataSet = dmProduct.cdsMaster
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
  end
end
