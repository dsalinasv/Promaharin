unit Catalog.Data.Provisioner;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Master, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TdmProvisioner = class(TdmMaster)
    dspFuel: TDSProviderConnection;
    cdsFuel: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

initialization
  RegisterClass(TdmProvisioner);

end.
