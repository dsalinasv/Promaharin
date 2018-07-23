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
    dtpFechaInicial: TdxBarDateCombo;
    lblFechaInicial: TdxBarStatic;
    lblFechaFinal: TdxBarStatic;
    dtpFechaFinal: TdxBarDateCombo;
    actInsert: TDataSetInsert;
    actPost: TDataSetPost;
    actCancel: TDataSetCancel;
    btnInsert: TdxBarLargeButton;
    btnPost: TdxBarLargeButton;
    btnCancel: TdxBarLargeButton;
    btnConsult: TdxBarLargeButton;
    actConsult: TAction;
    dsRefuelByDate: TDataSource;
    actPrint: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    actDelete: TDataSetDelete;
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
    ROW: TcxGridDBColumn;
    txtFolio: TcxDBTextEdit;
    lblFolio: TdxLayoutItem;
    procedure actConsultExecute(Sender: TObject);
    procedure grdListViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure ROWGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure actInsertExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Module.Data.Inventory;

procedure TfrmInventory.actCancelExecute(Sender: TObject);
begin
  dmMaster.cdsMaster.Cancel;
  CleanControl(Self);
end;

procedure TfrmInventory.actConsultExecute(Sender: TObject);
begin
  (dmMaster as TdmInventory).InventoryByDate
    (dtpFechaInicial.Date, dtpFechaFinal.Date);
end;

procedure TfrmInventory.actInsertExecute(Sender: TObject);
begin
  dmMaster.cdsMaster.Append;
  CleanControl(Self);
end;

procedure TfrmInventory.actPrintExecute(Sender: TObject);
begin
  (dmMaster as TdmInventory).PrintInventory(grdListView.DataController.Filter.FilterText);
end;

procedure TfrmInventory.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  (dmMaster as TdmInventory).InventoryById;
  IdProvisioner_PRECIO_IdFuel.GetData;
  IdFuel.GetData;
end;

procedure TfrmInventory.ROWGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := IntToStr(Sender.GridView.DataController.GetRowIndexByRecordIndex(
    ARecord.RecordIndex, False) + 1);
end;

initialization
  RegisterClass(TfrmInventory);

end.
