unit Main.Data.Global;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon,
  Data.DbxHTTPLayer, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  Datasnap.DSConnect, Data.FMTBcd, cxClasses, cxLookAndFeels, dxSkinsCore,
  dxSkinOffice2013White, dxSkinsForm;

type
  TdmGlobal = class(TDataModule)
    cntPromaharin: TSQLConnection;
    dspGlobal: TDSProviderConnection;
    sknController: TdxSkinController;
    ssmCheckFolio: TSqlServerMethod;
    ssmCheckCode: TSqlServerMethod;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetGuid: string;
    function CheckCode(sCode, sTable: string): boolean;
    function CheckFolio(iFolio: integer; sTable: string): boolean;
  end;

var
  dmGlobal: TdmGlobal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses dxCore;

const
  CONFIG = 'config.ini';

procedure TdmGlobal.DataModuleCreate(Sender: TObject);
begin
  cntPromaharin.Close;
  cntPromaharin.ConnectionName:= 'DataSnapCONNECTION';
  cntPromaharin.DriverName:= 'DataSnap';
  if FileExists(CONFIG) then
    cntPromaharin.LoadParamsFromIniFile(CONFIG);
  cntPromaharin.Open;
end;

function TdmGlobal.GetGuid: string;
begin
  Exit(dxGenerateGUID);
end;

function TdmGlobal.CheckCode(sCode, sTable: string): boolean;
begin
  with ssmCheckCode do
  begin
    ParamByName('sCode').AsString:= sCode;
    ParamByName('sTable').AsString:= sTable;
    ExecuteMethod;
    Result:= ParamByName('ReturnParameter').AsBoolean;
  end;
end;

function TdmGlobal.CheckFolio(iFolio: integer; sTable: string): boolean;
begin
  with ssmCheckFolio do
  begin
    ParamByName('iFolio').AsInteger:= iFolio;
    ParamByName('sTable').AsString:= sTable;
    ExecuteMethod;
    Result:= ParamByName('ReturnParameter').AsBoolean;
  end;
end;

end.
