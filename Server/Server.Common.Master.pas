unit Server.Common.Master;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmMaster = class(TDSServerModule)
    qryMaster: TFDQuery;
    dspMaster: TDataSetProvider;
    qryGeneral: TFDQuery;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetGuid: String;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Server.Core.Container;

{$R *.dfm}

function TsmMaster.GetGuid: String;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid))
end;

procedure TsmMaster.DSServerModuleCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to Pred(ComponentCount) do
    if Components[i] is TFDQuery then
       TFDQuery(Components[i]).Connection := smContainer.GetConnection;
end;

end.

