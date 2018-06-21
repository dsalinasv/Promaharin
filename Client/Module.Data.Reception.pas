unit Module.Data.Reception;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Core.Data.Master, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF;

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
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReceptionById;
    procedure ReceptionByDate(ini, fin: TDate);
    procedure PrintReception;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

procedure TdmReception.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMasterFECHA.AsDateTime:= Date;
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
    ParamByName('FIN').AsDate:= Date;
  end;
  inherited;
end;

procedure TdmReception.ReceptionByDate(ini, fin: TDate);
begin
  with cdsReceptionByDate do
  begin
    Close;
    ParamByName('INI').AsDate:= ini;
    ParamByName('FIN').AsDate:= fin;
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

procedure TdmReception.PrintReception;
begin
  with frxReceptionByDate do
  begin
    if PrepareReport then
      ShowPreparedReport;
  end;
end;

initialization
  RegisterClass(TdmReception);

end.
