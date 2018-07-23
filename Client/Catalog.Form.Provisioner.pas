unit Catalog.Form.Provisioner;

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
  cxDBEdit, dxLayoutControl, cxPC, Common.Control.CodeLookup, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmProvisioner = class(TfrmList)
    cmbCombustible: TcxDBLookupComboBox;
    lblCombustible: TdxLayoutItem;
    txtPrecio: TcxDBTextEdit;
    lblPrecio: TdxLayoutItem;
    dsFuel: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Catalog.Data.Provisioner;

initialization
  RegisterClass(TfrmProvisioner);

end.
