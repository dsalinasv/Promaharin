unit Module.Data.Outputs;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Module, frxClass, frxDBSet,
  frxExportPDF, frxExportBaseDialog, frxExportXLS, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Data.FMTBcd, Data.SqlExpr;

type
  TdmOutputs = class(TdmModule)
    cdsPayMethod: TClientDataSet;
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

procedure TdmOutputs.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  with cdsMaster do
  begin
    FieldByName('IDUSER').AsInteger:= dmGlobal.IdUser;
    FieldByName('IDACCOUNT').AsString:= dmGlobal.IdAccount;
    FieldByName('FECHA').AsDateTime:= Now;
  end;
end;

procedure TdmOutputs.DataModuleCreate(Sender: TObject);
begin
  with cdsConsult do
  begin
    ParamByName('IDUSER').AsInteger:= dmGlobal.IdUser;
    ParamByName('IDACCOUNT').AsString:= dmGlobal.IdAccount;
  end;
  inherited;
end;

initialization
  RegisterClass(TdmOutputs);

end.
