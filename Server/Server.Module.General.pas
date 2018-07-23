unit Server.Module.General;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter, DBClient,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TsmGeneral = class(TDSServerModule)
    procedure DSServerModuleCreate(Sender: TObject);
    procedure dspAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Server.Module.Container;

{$R *.dfm}

procedure TsmGeneral.dspAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  if UpdateKind = ukInsert then
  begin
    DeltaDS.Edit;
    DeltaDS.FieldByName('CODE').NewValue:= SourceDS.FieldByName('CODE').AsInteger;
  end;
end;

procedure TsmGeneral.DSServerModuleCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to Pred(ComponentCount) do
    if Components[i] is TFDQuery then
       TFDQuery(Components[i]).Connection := smContainer.GetConnection;
end;

end.

