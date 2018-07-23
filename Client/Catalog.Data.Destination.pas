unit Catalog.Data.Destination;

interface

uses
  System.SysUtils, System.Classes, Core.Data.Master, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TdmDestination = class(TdmMaster)
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
  RegisterClass(TdmDestination);

end.
