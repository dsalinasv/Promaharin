unit Catalog.Data.Truck;

interface

uses
  System.SysUtils, System.Classes, Core.Data.Master, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Data.FMTBcd, Data.SqlExpr;

type
  TdmTruck = class(TdmMaster)
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
  RegisterClass(TdmTruck);

end.
