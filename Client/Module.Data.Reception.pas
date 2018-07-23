unit Module.Data.Reception;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Core.Data.Master, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, Data.FMTBcd, Data.SqlExpr;

type
  TdmReception = class(TdmMaster)
    cdsMasterIDRECEPTION: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterIDPROVIDER: TStringField;
    cdsMasterIDPRODUCT: TStringField;
    cdsMasterCANTIDAD: TFloatField;
    cdsMasterPRECIO: TFloatField;
    cdsMasterIMPORTE: TCurrencyField;
    cdsReceptionByDate: TClientDataSet;
    cdsReceptionByDateFECHA: TSQLTimeStampField;
    cdsReceptionByDatePRODUCTO: TStringField;
    cdsReceptionByDatePROVEEDOR: TStringField;
    cdsReceptionByDateCANTIDAD: TFloatField;
    cdsReceptionByDatePRECIO: TFloatField;
    cdsReceptionByDateIMPORTE: TFloatField;
    cdsReceptionByDateIDRECEPTION: TStringField;
    frxReceptionByDate: TfrxReport;
    fdsReceptionByDate: TfrxDBDataset;
    frxXLSExport: TfrxXLSExport;
    frxPDFExport: TfrxPDFExport;
    cdsMasterIDTRUCK: TStringField;
    cdsMasterIDDRIVER: TStringField;
    ssmGetCode: TSqlServerMethod;
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetCode;
    procedure ReceptionById;
    procedure ReceptionByDate(ini, fin: TDate);
    procedure PrintReception(filtro: string);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global, Clipbrd;

{$R *.dfm}

procedure TdmReception.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMasterFECHA.AsDateTime:= Now;
end;

procedure TdmReception.cdsMasterCalcFields(DataSet: TDataSet);
begin
  cdsMasterIMPORTE.Value:= cdsMasterCANTIDAD.Value * cdsMasterPRECIO.Value;
end;

procedure TdmReception.DataModuleCreate(Sender: TObject);
begin
  with cdsReceptionByDate do
  begin
    ParamByName('INI').AsDate:= Date;
    ParamByName('FIN').AsDate:= Date + 1;
  end;
  inherited;
end;

procedure TdmReception.GetCode;
begin
  with ssmGetCode do
  begin
    ParamByName('ID').AsString:= cdsMasterIDRECEPTION.Value;
    ExecuteMethod;
    ClipBoard.AsText:= ParamByName('ReturnParameter').AsString;
  end;
end;

procedure TdmReception.ReceptionByDate(ini, fin: TDate);
begin
  with cdsReceptionByDate do
  begin
    Close;
    ParamByName('INI').AsDate:= ini;
    ParamByName('FIN').AsDate:= fin + 1;
    Open;
  end;

end;

procedure TdmReception.ReceptionById;
begin
  with cdsMaster do
  begin
    Close;
    ParamByName('IDRECEPTION').AsString:=
      cdsReceptionByDate.FieldByName('IDRECEPTION').AsString;
    Open;
  end;
end;

procedure TdmReception.PrintReception(filtro: string);
begin
  with cdsReceptionByDate do
  begin
    DisableControls;
    Filtered:= true;
    Filter:= filtro;
  end;
  with frxReceptionByDate do
  begin
    if PrepareReport then
      ShowPreparedReport;
  end;
  with cdsReceptionByDate do
  begin
    Filter:= EmptyStr;
    Filtered:= false;
    EnableControls;
  end;
end;

initialization
  RegisterClass(TdmReception);

end.
