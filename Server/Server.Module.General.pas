unit Server.Module.General;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TsmGeneral = class(TDSServerModule)
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Server.Module.Container;

{$R *.dfm}

procedure TsmGeneral.DSServerModuleCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to Pred(ComponentCount) do
    if Components[i] is TFDQuery then
       TFDQuery(Components[i]).Connection := smContainer.GetConnection;
end;

initialization
  RegisterClass(TsmGeneral);

end.

