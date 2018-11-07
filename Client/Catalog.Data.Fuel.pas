unit Catalog.Data.Fuel;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Master, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TdmFuel = class(TdmMaster)
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
  RegisterClass(TdmFuel);

end.
