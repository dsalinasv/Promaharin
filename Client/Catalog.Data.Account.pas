unit Catalog.Data.Account;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Master, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TdmAccount = class(TdmMaster)
    cdsAccountType: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global, DXC.UC.Types;

{$R *.dfm}

procedure TdmAccount.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMaster.FieldByName('IDUSER').Value:= dmGlobal.IdUser;
end;

procedure TdmAccount.DataModuleCreate(Sender: TObject);
var
  val: TValidationDetails;
begin
  if not dmGlobal.UserControl.HasPermissionFor('Gastos.Cuentas', val) then
    cdsMaster.ParamByName('IDUSER').Value:= dmGlobal.IdUser;
  inherited;
end;

initialization
  RegisterClass(TdmAccount);

end.
