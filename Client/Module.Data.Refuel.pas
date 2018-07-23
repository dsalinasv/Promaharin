unit Module.Data.Refuel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Core.Data.Master, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF;

type
  TdmRefuel = class(TdmMaster)
    cdsRefuelByDate: TClientDataSet;
    frxRefuelByDate: TfrxReport;
    fdsRefuelByDate: TfrxDBDataset;
    frxXLSExport: TfrxXLSExport;
    frxPDFExport: TfrxPDFExport;
    cdsMasterIDREFUEL: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterIDTRUCK: TStringField;
    cdsMasterIDDESTINATION: TStringField;
    cdsMasterIDDRIVER: TStringField;
    cdsMasterIDSUPPLIER: TStringField;
    cdsMasterCANTIDAD: TFloatField;
    cdsMasterPRECIO: TFloatField;
    cdsRefuelByDateIDREFUEL: TStringField;
    cdsRefuelByDateFECHA: TSQLTimeStampField;
    cdsRefuelByDateCAMION: TStringField;
    cdsRefuelByDateDESTINO: TStringField;
    cdsRefuelByDateCHOFER: TStringField;
    cdsRefuelByDateSURTIDOR: TStringField;
    cdsRefuelByDateCANTIDAD: TFloatField;
    cdsRefuelByDatePRECIO: TFloatField;
    cdsRefuelByDateIMPORTE: TFloatField;
    cdsMasterIMPORTE: TFloatField;
    cdsMasterIDFUEL: TStringField;
    cdsRefuelByDateCOMBUSTIBLE: TStringField;
    dspDestination: TDSProviderConnection;
    cdsDestination: TClientDataSet;
    cdsMasterqryRefuelDestination: TDataSetField;
    cdsRefuelDestination: TClientDataSet;
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefuelById;
    procedure RefuelByDate(ini, fin: TDate);
    procedure PrintRefuel(filtro: string);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

procedure TdmRefuel.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMasterFECHA.AsDateTime:= Now;
end;

procedure TdmRefuel.cdsMasterCalcFields(DataSet: TDataSet);
begin
  cdsMasterIMPORTE.Value:= cdsMasterCANTIDAD.Value * cdsMasterPRECIO.Value;
end;

procedure TdmRefuel.DataModuleCreate(Sender: TObject);
begin
  with cdsRefuelByDate do
  begin
    ParamByName('INI').AsDate:= Date;
    ParamByName('FIN').AsDate:= Date + 1;
  end;
  inherited;
end;

procedure TdmRefuel.RefuelByDate(ini, fin: TDate);
begin
  with cdsRefuelByDate do
  begin
    Close;
    ParamByName('INI').AsDate:= ini;
    ParamByName('FIN').AsDate:= fin + 1;
    Open;
  end;

end;

procedure TdmRefuel.RefuelById;
begin
  with cdsMaster do
  begin
    Close;
    ParamByName('IDREFUEL').AsString:=
      cdsRefuelByDate.FieldByName('IDREFUEL').AsString;
    Open;
  end;
end;

procedure TdmRefuel.PrintRefuel(filtro: string);
begin
  with cdsRefuelByDate do
  begin
    DisableControls;
    Filtered:= true;
    Filter:= filtro;
  end;
  with frxRefuelByDate do
  begin
    if PrepareReport then
      ShowPreparedReport;
  end;
  with cdsRefuelByDate do
  begin
    Filter:= EmptyStr;
    Filtered:= false;
    EnableControls;
  end;
end;

initialization
  RegisterClass(TdmRefuel);

end.
