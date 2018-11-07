unit Module.Data.Batch;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Common.Data.Module, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, frxDesgn, frxExportBaseDialog;

type
  TdmBatch = class(TdmModule)
    cdsMasterIDBATCH: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterCODIGO: TStringField;
    cdsMasterIDBATCHSTATUS: TIntegerField;
    cdsMasterqryBatchDetail: TDataSetField;
    cdsBatchDetail: TClientDataSet;
    cdsConsultIDBATCH: TStringField;
    cdsConsultFECHA: TSQLTimeStampField;
    cdsConsultCODIGO: TStringField;
    cdsConsultSTATUS: TStringField;
    cdsBatchStatus: TClientDataSet;
    frxLabel: TfrxReport;
    fdsLabel: TfrxDBDataset;
    cdsLabel: TClientDataSet;
    cdsLabelLote: TStringField;
    cdsLabelFecha: TDateField;
    frxDesigner: TfrxDesigner;
    cdsBatchDetailIDBATCHDETAIL: TStringField;
    cdsBatchDetailIDBATCH: TStringField;
    cdsBatchDetailFECHA: TSQLTimeStampField;
    cdsBatchDetailCODIGO: TStringField;
    cdsBatchDetailCANTIDAD: TIntegerField;
    cdsBatchDetailIMPRESO: TSmallintField;
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrintLabel;
    procedure DesignLabel;
    procedure InitReport;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global, System.IOUtils;

{$R *.dfm}

var
  PRINT_DIR: string;
  PRINT_LABEL: string;

procedure TdmBatch.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMasterFECHA.AsDateTime:= Now;
end;

procedure TdmBatch.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PRINT_DIR:= TPath.GetHomePath + TPath.DirectorySeparatorChar + 'Promaharin';
  PRINT_LABEL:= PRINT_DIR + TPath.DirectorySeparatorChar + 'Label.fr3';
end;

procedure TdmBatch.PrintLabel;
begin
  InitReport;
  with frxLabel do
  begin
    if PrepareReport then
      ShowPreparedReport;
  end;
end;

procedure TdmBatch.DesignLabel;
begin
  InitReport;
  frxLabel.DesignReport;
end;

procedure TdmBatch.InitReport;
begin
  if not TDirectory.Exists(PRINT_DIR) then
    TDirectory.CreateDirectory(PRINT_DIR);
  if not FileExists(PRINT_LABEL) then
    frxLabel.SaveToFile(PRINT_LABEL);
  frxLabel.LoadFromFile(PRINT_LABEL);
end;

initialization
  RegisterClass(TdmBatch);

end.
