unit Module.Data.Batch;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Core.Data.Master, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF;

type
  TdmBatch = class(TdmMaster)
    cdsBatchByDate: TClientDataSet;
    frxBatchByDate: TfrxReport;
    fdsBatchByDate: TfrxDBDataset;
    frxXLSExport: TfrxXLSExport;
    frxPDFExport: TfrxPDFExport;
    cdsMasterIDBATCH: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterCODIGO: TStringField;
    cdsMasterIDBATCHSTATUS: TIntegerField;
    cdsMasterqryBatchDetail: TDataSetField;
    cdsBatchDetail: TClientDataSet;
    cdsBatchByDateIDBATCH: TStringField;
    cdsBatchByDateFECHA: TSQLTimeStampField;
    cdsBatchByDateCODIGO: TStringField;
    cdsBatchByDateSTATUS: TStringField;
    cdsBatchStatus: TClientDataSet;
    frxLabel: TfrxReport;
    fdsLabel: TfrxDBDataset;
    cdsLabel: TClientDataSet;
    cdsLabelLote: TStringField;
    cdsLabelFecha: TDateField;
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BatchById;
    procedure BatchByDate(ini, fin: TDate);
    procedure PrintBatch(filtro: string);
    procedure PrintLabel;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

procedure TdmBatch.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMasterFECHA.AsDateTime:= Now;
end;

procedure TdmBatch.DataModuleCreate(Sender: TObject);
begin
  with cdsBatchByDate do
  begin
    ParamByName('INI').AsDate:= Date;
    ParamByName('FIN').AsDate:= Date + 1;
  end;
  inherited;
end;

procedure TdmBatch.BatchByDate(ini, fin: TDate);
begin
  with cdsBatchByDate do
  begin
    Close;
    ParamByName('INI').AsDate:= ini;
    ParamByName('FIN').AsDate:= fin + 1;
    Open;
  end;

end;

procedure TdmBatch.BatchById;
begin
  with cdsMaster do
  begin
    Close;
    ParamByName('IDBATCH').AsString:=
      cdsBatchByDate.FieldByName('IDBATCH').AsString;
    Open;
  end;
end;

procedure TdmBatch.PrintBatch(filtro: string);
begin
  with cdsBatchByDate do
  begin
    DisableControls;
    Filtered:= true;
    Filter:= filtro;
  end;
  with frxBatchByDate do
  begin
    if PrepareReport then
      ShowPreparedReport;
  end;
  with cdsBatchByDate do
  begin
    Filter:= EmptyStr;
    Filtered:= false;
    EnableControls;
  end;
end;

procedure TdmBatch.PrintLabel;
var
  i: integer;
begin
  with cdsBatchDetail do
  begin
    DisableControls;
    First;
    if cdsLabel.Active then
    begin
      cdsLabel.EmptyDataSet;
      cdsLabel.Close;
    end;
    cdsLabel.CreateDataSet;
    while not Eof do
    begin
      for i := 1 to FieldByName('CANTIDAD').AsInteger do
      begin
        cdsLabel.Append;
        cdsLabelLote.Value:= FieldByName('CODIGO').AsString;
        cdsLabelFecha.Value:= FieldByName('FECHA').AsDateTime;
      end;
      Next;
    end;
    EnableControls;
  end;
  with frxLabel do
  begin
    if PrepareReport then
      ShowPreparedReport;
  end;
end;

initialization
  RegisterClass(TdmBatch);

end.
