unit Module.Form.Batch;

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
  cxDataControllerConditionalFormattingRulesManagerDialog, cxLookupEdit,
  cxDBLookupEdit;

type
  TfrmBatch = class(TfrmModule)
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
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
    dsBatchByDate: TDataSource;
    actPrint: TAction;
    btnPrint: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    actDelete: TDataSetDelete;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewCODIGO: TcxGridDBColumn;
    grdListViewSTATUS: TcxGridDBColumn;
    dsBatchStatus: TDataSource;
    cmbEstado: TcxDBLookupComboBox;
    lblEstado: TdxLayoutItem;
    txtCodigo: TcxDBTextEdit;
    lblCodigo: TdxLayoutItem;
    grdDetail: TcxGrid;
    grdDetailView: TcxGridDBTableView;
    grdDetailLevel: TcxGridLevel;
    lblDetail: TdxLayoutItem;
    dsDetail: TDataSource;
    grdDetailViewFECHA: TcxGridDBColumn;
    grdDetailViewCODIGO: TcxGridDBColumn;
    grdDetailViewCANTIDAD: TcxGridDBColumn;
    btnLabel: TdxBarLargeButton;
    actLabel: TAction;
    procedure actConsultExecute(Sender: TObject);
    procedure grdListViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure ROWGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure actLabelExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Module.Data.Batch;

procedure TfrmBatch.actCancelExecute(Sender: TObject);
begin
  dmMaster.cdsMaster.Cancel;
  CleanControl(Self);
end;

procedure TfrmBatch.actConsultExecute(Sender: TObject);
begin
  (dmMaster as TdmBatch).BatchByDate
    (dtpFechaInicial.Date, dtpFechaFinal.Date);
end;

procedure TfrmBatch.actInsertExecute(Sender: TObject);
begin
  dmMaster.cdsMaster.Append;
  CleanControl(Self);
end;

procedure TfrmBatch.actLabelExecute(Sender: TObject);
begin
  (dmMaster as TdmBatch).PrintLabel;
end;

procedure TfrmBatch.actPrintExecute(Sender: TObject);
begin
  (dmMaster as TdmBatch).PrintBatch(grdListView.DataController.Filter.FilterText);
end;

procedure TfrmBatch.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  (dmMaster as TdmBatch).BatchById;
end;

procedure TfrmBatch.ROWGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := IntToStr(Sender.GridView.DataController.GetRowIndexByRecordIndex(
    ARecord.RecordIndex, False) + 1);
end;

initialization
  RegisterClass(TfrmBatch);

end.
