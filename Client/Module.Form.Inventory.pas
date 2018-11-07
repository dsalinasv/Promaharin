unit Module.Form.Inventory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Common.Form.Module, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2013White, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, dxBar,
  cxClasses, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  cxImageList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer,
  dxLayoutControl, cxPC, Common.Control.CodeLookup, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxCurrencyEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxDBLabel, dxBarExtItems, Vcl.DBActns, cxDBLookupComboBox,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmInventory = class(TfrmModule)
    txtPrecio: TcxDBCurrencyEdit;
    lblPrecio: TdxLayoutItem;
    txtCantidad: TcxDBCurrencyEdit;
    lblCantidad: TdxLayoutItem;
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
    IMPORTE: TcxDBLabel;
    lblImporte: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    lblProvisioner: TdxLayoutItem;
    IdProvisioner_PRECIO_IdFuel: TctlCodeLookup;
    lblFuel: TdxLayoutItem;
    IdFuel: TctlCodeLookup;
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewPROVISIONER: TcxGridDBColumn;
    grdListViewCOMBUSTIBLE: TcxGridDBColumn;
    grdListViewCANTIDAD: TcxGridDBColumn;
    grdListViewPRECIO: TcxGridDBColumn;
    grdListViewSUBTOTAL: TcxGridDBColumn;
    grdListViewAJUSTE: TcxGridDBColumn;
    grdListViewIMPORTE: TcxGridDBColumn;
    txtCantidadAjuste: TcxDBTextEdit;
    lblCantidadAjuste: TdxLayoutItem;
    SUBTOTAL: TcxDBLabel;
    lblSubtotal: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    txtFolio: TcxDBTextEdit;
    lblFolio: TdxLayoutItem;
    grdListViewFOLIO: TcxGridDBColumn;
    procedure grdListViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Module.Data.Inventory;

procedure TfrmInventory.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  IdProvisioner_PRECIO_IdFuel.GetData;
  IdFuel.GetData;
end;

initialization
  RegisterClass(TfrmInventory);

end.
