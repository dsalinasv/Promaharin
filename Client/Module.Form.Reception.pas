unit Module.Form.Reception;

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
  TfrmReception = class(TfrmModule)
    lblProveedor: TdxLayoutItem;
    IdProvider_PRECIO_IdProduct: TctlCodeLookup;
    txtPrecio: TcxDBCurrencyEdit;
    lblPrecio: TdxLayoutItem;
    txtCantidad: TcxDBCurrencyEdit;
    lblCantidad: TdxLayoutItem;
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
    IdProduct: TctlCodeLookup;
    lblProducto: TdxLayoutItem;
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
    dsReceptionByDate: TDataSource;
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewPRODUCTO: TcxGridDBColumn;
    grdListViewPROVEEDOR: TcxGridDBColumn;
    grdListViewCANTIDAD: TcxGridDBColumn;
    grdListViewPRECIO: TcxGridDBColumn;
    grdListViewIMPORTE: TcxGridDBColumn;
    actPrint: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    actDelete: TDataSetDelete;
    lblTruck: TdxLayoutItem;
    IdTruck: TctlCodeLookup;
    lblDriver: TdxLayoutItem;
    IdDriver: TctlCodeLookup;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    ROW: TcxGridDBColumn;
    dxBarLargeButton3: TdxBarLargeButton;
    actGenerate: TAction;
    procedure actConsultExecute(Sender: TObject);
    procedure grdListViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure ROWGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure actGenerateExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Module.Data.Reception;

procedure TfrmReception.actCancelExecute(Sender: TObject);
begin
  dmMaster.cdsMaster.Cancel;
  CleanControl(Self);
end;

procedure TfrmReception.actConsultExecute(Sender: TObject);
begin
  (dmMaster as TdmReception).ReceptionByDate
    (dtpFechaInicial.Date, dtpFechaFinal.Date);
end;

procedure TfrmReception.actGenerateExecute(Sender: TObject);
begin
  (dmMaster as TdmReception).GetCode;
  ShowMessage('Se ha copiado el código generado al portapapeles de windows');
end;

procedure TfrmReception.actInsertExecute(Sender: TObject);
begin
  dmMaster.cdsMaster.Append;
  CleanControl(Self);
end;

procedure TfrmReception.actPrintExecute(Sender: TObject);
begin
  (dmMaster as TdmReception).PrintReception(grdListView.DataController.Filter.FilterText);
end;

procedure TfrmReception.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  (dmMaster as TdmReception).ReceptionById;
  IdProvider_PRECIO_IdProduct.GetData;
  IdProduct.GetData;
  IdTruck.GetData;
  IdDriver.GetData;
end;

procedure TfrmReception.ROWGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := IntToStr(Sender.GridView.DataController.GetRowIndexByRecordIndex(
    ARecord.RecordIndex, False) + 1);
end;

initialization
  RegisterClass(TfrmReception);

end.
