unit Module.Data.Inputs;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Module, frxClass, frxDBSet,
  frxExportPDF, frxExportBaseDialog, frxExportXLS, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TdmInputs = class(TdmModule)
    cdsCoin: TClientDataSet;
    cdsInputState: TClientDataSet;
    cdsMasterIDINPUTS: TStringField;
    cdsMasterIDACCOUNT: TStringField;
    cdsMasterIDCLIENT: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterORDEN: TIntegerField;
    cdsMasterFACTURA: TIntegerField;
    cdsMasterIDCOIN: TStringField;
    cdsMasterIDPRODUCT: TStringField;
    cdsMasterCANTIDAD: TFloatField;
    cdsMasterPRECIO: TFloatField;
    cdsMasterIDINPUTSTATE: TStringField;
    cdsMasterIDUSER: TStringField;
    cdsMasterIMPORTE: TFloatField;
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

procedure TdmInputs.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  with cdsMaster do
  begin
    FieldByName('IDUSER').AsInteger:= dmGlobal.IdUser;
    FieldByName('IDACCOUNT').AsString:= dmGlobal.IdAccount;
    FieldByName('FECHA').AsDateTime:= Now;
  end;
end;

procedure TdmInputs.cdsMasterCalcFields(DataSet: TDataSet);
begin
  cdsMasterIMPORTE.Value:= cdsMasterCANTIDAD.Value * cdsMasterPRECIO.Value;
end;

procedure TdmInputs.DataModuleCreate(Sender: TObject);
begin
  with cdsConsult do
  begin
    ParamByName('IDUSER').AsInteger:= dmGlobal.IdUser;
    ParamByName('IDACCOUNT').AsString:= dmGlobal.IdAccount;
  end;
  inherited;
end;

initialization
  RegisterClass(TdmInputs);

end.
