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
  cxDBLookupEdit, cxCheckBox;

type
  TfrmBatch = class(TfrmModule)
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
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
    grdDetailViewIMPRESO: TcxGridDBColumn;
    btnDesigner: TdxBarLargeButton;
    actDesigner: TAction;
    btnLabel: TdxBarLargeButton;
    actLabel: TAction;
    procedure actLabelExecute(Sender: TObject);
    procedure actDesignerExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Module.Data.Batch;

procedure TfrmBatch.actDesignerExecute(Sender: TObject);
begin
  (dmMaster as TdmBatch).DesignLabel;
end;

procedure TfrmBatch.actLabelExecute(Sender: TObject);
var
  c,i,j: integer;
begin
  with (dmMaster as TdmBatch) do
  begin
    if cdsLabel.Active then
    begin
      cdsLabel.EmptyDataSet;
      cdsLabel.Close;
    end;
    cdsLabel.CreateDataSet;
    for i:= 0 to Pred(grdDetailView.Controller.SelectedRecordCount) do
    begin
      c:= grdDetailView.Controller.SelectedRecords[i].Values[2];
      for j := 1 to c do
      begin
        cdsLabel.Append;
        cdsLabelFecha.AsDateTime:= grdDetailView.Controller.SelectedRecords[i].Values[0];
        cdsLabelLote.AsString:= grdDetailView.Controller.SelectedRecords[i].Values[1];
      end;
    end;
  end;
 (dmMaster as TdmBatch).PrintLabel;
end;

initialization
  RegisterClass(TfrmBatch);

end.
