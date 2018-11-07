unit Main.Data.Global;

interface

uses
  System.SysUtils, System.Classes, DXC.UC.Classes, Data.DBXDataSnap, Data.DBXCommon,
  Data.DbxHTTPLayer, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  Datasnap.DSConnect, Data.FMTBcd, cxClasses, cxLookAndFeels, dxSkinsCore,
  dxSkinOffice2013White, dxSkinsForm, DXC.UC.DataConnector, UUCMidasConn,
  DXC.UC.UserControl, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TdmGlobal = class(TDataModule)
    cntPromaharin: TSQLConnection;
    dspGlobal: TDSProviderConnection;
    sknController: TdxSkinController;
    ssmCheckFolio: TSqlServerMethod;
    ssmCheckCode: TSqlServerMethod;
    UCMidasConn: TUCMidasConn;
    ActionManager: TActionManager;
    actProduct: TAction;
    actProvider: TAction;
    actReception: TAction;
    actTruck: TAction;
    actDestination: TAction;
    actDriver: TAction;
    actSupplier: TAction;
    actRefuel: TAction;
    actFuel: TAction;
    actProvisioner: TAction;
    actInventory: TAction;
    actStock: TAction;
    actBatch: TAction;
    actSession: TAction;
    actChange: TAction;
    actUsers: TAction;
    actAccount: TAction;
    actCategory: TAction;
    UserControl: TUserControl;
    actOutputs: TAction;
    actInputs: TAction;
    actClient: TAction;
    actQuotation: TAction;
    actCondition: TAction;
    actSeller: TAction;
    actCaterer: TAction;
    procedure actExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure UserControlLoginSuccess(ASender: TObject;
      ACurrentUser: TCurrentUser);
    procedure actOutputsExecute(Sender: TObject);
    procedure actInputsExecute(Sender: TObject);
  public
    IdUser: Integer;
    IdAccount: String;
    UserName: String;
    procedure CloseSplash;
    procedure ShowSplash;
    function GetGuid: string;
    function CheckCode(sCode, sTable: string): boolean;
    function CheckFolio(iFolio: integer; sTable: string): boolean;
  end;

var
  dmGlobal: TdmGlobal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses System.UiTypes, dxCore, Main.Form.Splash, Main.Form.Menu, Consult.Form.Account;

const
  CONFIG = 'config.ini';

procedure TdmGlobal.actExecute(Sender: TObject);
begin
  frmMain.OpenForm(StringReplace((Sender as TComponent).Name, 'act' , 'frm',[]));
end;

procedure TdmGlobal.ShowSplash;
begin
  frmSplash:= TfrmSplash.Create(nil);
  frmSplash.Show;
  frmSplash.Refresh;
end;

procedure TdmGlobal.UserControlLoginSuccess(ASender: TObject;
  ACurrentUser: TCurrentUser);
begin
  idUser:= ACurrentUser.Id;
  UserName:= ACurrentUser.UserName;
end;

procedure TdmGlobal.DataModuleCreate(Sender: TObject);
begin
  ShowSplash;
  cntPromaharin.Close;
  cntPromaharin.ConnectionName:= 'DataSnapCONNECTION';
  cntPromaharin.DriverName:= 'DataSnap';
  if FileExists(CONFIG) then
    cntPromaharin.LoadParamsFromIniFile(CONFIG);
  cntPromaharin.Params.Values['DSAuthenticationUser']:= 'promaharin';
  cntPromaharin.Params.Values['DSAuthenticationPassword']:= 'auofdsbcs';
  cntPromaharin.Open;
  CloseSplash;
  UserControl.Execute;
end;


function TdmGlobal.GetGuid: string;
begin
  Exit(dxGenerateGUID);
end;

procedure TdmGlobal.actInputsExecute(Sender: TObject);
begin
  with TfrmAccountConsult.Create(Self) do
  try
    if ShowModal = mrOK then
    begin
      IdAccount:= dsAccount.DataSet.FieldByName('IDACCOUNT').AsString;
      frmMain.StatusBar.Panels.Items[1].Text:= 'Cuenta: ' + dsAccount.DataSet.
        FieldByName('NAME').AsString;
      actExecute(Sender);
    end;
  finally
    Free
  end;
end;

procedure TdmGlobal.actOutputsExecute(Sender: TObject);
begin
  with TfrmAccountConsult.Create(Self) do
  try
    if ShowModal = mrOK then
    begin
      IdAccount:= dsAccount.DataSet.FieldByName('IDACCOUNT').AsString;
      frmMain.StatusBar.Panels.Items[1].Text:= 'Cuenta: ' + dsAccount.DataSet.
        FieldByName('NAME').AsString;
      actExecute(Sender);
    end;
  finally
    Free
  end;
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

procedure TdmGlobal.CloseSplash;
begin
  frmSplash.Close;
end;

end.
