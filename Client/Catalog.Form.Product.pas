unit Catalog.Form.Product;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Common.Form.List, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, Vcl.DBActns,
  Vcl.DBClientActns, System.Actions, Vcl.ActnList, dxBar, System.ImageList,
  Vcl.ImgList, cxImageList, cxContainer, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, cxDBEdit, dxLayoutControl, dxSkinsCore,
  dxSkinOffice2013White;

type
  TfrmProduct = class(TfrmList)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Catalog.Data.Product;

initialization
  RegisterClass(TfrmProduct);

end.
