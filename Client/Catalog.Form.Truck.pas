unit Catalog.Form.Truck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Common.Form.List, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  dxBar, cxClasses, Vcl.DBActns, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, cxImageList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, dxLayoutContainer, cxTextEdit,
  cxDBEdit, dxLayoutControl, cxPC, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, Common.Control.CodeLookup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmTruck = class(TfrmList)
    txtMarca: TcxDBTextEdit;
    lblMarca: TdxLayoutItem;
    txtModelo: TcxDBCurrencyEdit;
    lblModelo: TdxLayoutItem;
    txtPlacas: TcxDBTextEdit;
    lblPlacas: TdxLayoutItem;
    dtpVigenciaTarjeta: TcxDBDateEdit;
    lblVigenciaTarjeta: TdxLayoutItem;
    dtpVigenciaSeguro: TcxDBDateEdit;
    lblVigenciaSeguro: TdxLayoutItem;
    lgVigencias: TdxLayoutGroup;
    txtCosto: TcxDBTextEdit;
    lblCosto: TdxLayoutItem;
    cmbFuel: TcxDBLookupComboBox;
    lblFuel: TdxLayoutItem;
    dsFuel: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Catalog.Data.Truck;

initialization
  RegisterClass(TfrmTruck);

end.
