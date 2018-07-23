unit Module.Form.Refuel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Common.Form.Module, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxContainer, dxLayoutContainer, dxLayoutcxEditAdapters, cxCustomListBox,
  cxCheckListBox, dxBarExtItems, dxBar, Vcl.DBActns, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxLabel, cxDBLabel, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxCurrencyEdit,
  Common.Control.CodeLookup, cxClasses, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxImageList, cxGridLevel, cxGridCustomView,
  cxGrid, dxLayoutControl, cxPC, cxDBLookupComboBox;

type
  TfrmRefuel = class(TfrmModule)
    lblTruck: TdxLayoutItem;
    IdTruck_PRECIO_IdFuel: TctlCodeLookup;
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
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewCANTIDAD: TcxGridDBColumn;
    grdListViewPRECIO: TcxGridDBColumn;
    grdListViewIMPORTE: TcxGridDBColumn;
    actPrint: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    actDelete: TDataSetDelete;
    lblDriver: TdxLayoutItem;
    IdDriver: TctlCodeLookup;
    grdListViewCAMION: TcxGridDBColumn;
    grdListViewDESTINO: TcxGridDBColumn;
    grdListViewCHOFER: TcxGridDBColumn;
    grdListViewSURTIDOR: TcxGridDBColumn;
    lblSupplier: TdxLayoutItem;
    IdSupplier: TctlCodeLookup;
    lblFuel: TdxLayoutItem;
    IdFuel: TctlCodeLookup;
    grdListViewCOMBUSTIBLE: TcxGridDBColumn;
    ROW: TcxGridDBColumn;
    dsDestination: TDataSource;
    grdDestinosView: TcxGridDBTableView;
    grdDestinosLevel: TcxGridLevel;
    grdDestinos: TcxGrid;
    lblDestinos: TdxLayoutItem;
    dsRefuelDestination: TDataSource;
    grdDestinosViewIDDESTINATION: TcxGridDBColumn;
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

uses Module.Data.Refuel;

procedure TfrmRefuel.actCancelExecute(Sender: TObject);
begin
  dmMaster.cdsMaster.Cancel;
  CleanControl(Self);
end;

procedure TfrmRefuel.actConsultExecute(Sender: TObject);
begin
  (dmMaster as TdmRefuel).RefuelByDate
    (dtpFechaInicial.Date, dtpFechaFinal.Date);
end;

procedure TfrmRefuel.actInsertExecute(Sender: TObject);
begin
  dmMaster.cdsMaster.Append;
  CleanControl(Self);
end;

procedure TfrmRefuel.actPrintExecute(Sender: TObject);
begin
  (dmMaster as TdmRefuel).PrintRefuel(grdListView.DataController.Filter.FilterText);
end;

procedure TfrmRefuel.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  (dmMaster as TdmRefuel).RefuelById;
  IdTruck_PRECIO_IdFuel.GetData;
  IdDriver.GetData;
  IdSupplier.GetData;
  IdFuel.GetData;
end;

procedure TfrmRefuel.ROWGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := IntToStr(Sender.GridView.DataController.GetRowIndexByRecordIndex(
    ARecord.RecordIndex, False) + 1);
end;

initialization
  RegisterClass(TfrmRefuel);

end.
