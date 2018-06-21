unit Catalog.Form.Provider;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Common.Form.List, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData,
  Vcl.DBActns, Vcl.DBClientActns, System.Actions, Vcl.ActnList, cxClasses,
  dxBar, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, System.ImageList, Vcl.ImgList, cxImageList,
  cxContainer, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxDBEdit,
  dxLayoutControl, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore, dxSkinOffice2013White;

type
  TfrmProvider = class(TfrmList)
    txtRazonSocial: TcxDBTextEdit;
    lblRazonSocial: TdxLayoutItem;
    txtTelefono: TcxDBTextEdit;
    lblTelefono: TdxLayoutItem;
    txtContacto: TcxDBTextEdit;
    lblContacto: TdxLayoutItem;
    txtDireccion: TcxDBTextEdit;
    lblDireccion: TdxLayoutItem;
    cmbProducto: TcxDBLookupComboBox;
    lblProducto: TdxLayoutItem;
    txtPrecio: TcxDBCurrencyEdit;
    lblPrecio: TdxLayoutItem;
    dsProduct: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Catalog.Data.Provider;

initialization
  RegisterClass(TfrmProvider);

end.
