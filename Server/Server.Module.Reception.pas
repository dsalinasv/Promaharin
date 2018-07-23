unit Server.Module.Reception;

interface

uses
  System.SysUtils, System.Classes, Server.Module.General, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.FMTBcd, Data.SqlExpr;

type
  TsmReception = class(TsmGeneral)
    qryReception: TFDQuery;
    dspReception: TDataSetProvider;
    qryReceptionByDates: TFDQuery;
    dspReceptionByDates: TDataSetProvider;
    qryGeneral: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetCode(id: string): string;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Server.Module.Container;

{$R *.dfm}

{ TsmReception }

function TsmReception.GetCode(id: string): string;
var
  sResult: string;
begin
  with qryGeneral do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select p.code as provider, t.code as truck, d.code as driver, ');
    SQL.Add('ceil(r.cantidad / 5.6 / 45) as cantidad from reception r');
    SQL.Add('left join provider p on p.idprovider = r.idprovider');
    SQL.Add('left join truck t on t.idtruck = r.idtruck');
    SQL.Add('left join driver d on d.iddriver = r.iddriver');
    SQL.Add('where r.idreception = :idreception');
    ParamByName('idreception').AsString:= id;
    Open;
    sResult:= Format('%.2d/%.2d/%.2d/.%.2d', [
      FieldByName('PROVIDER').AsInteger,
      FieldByName('TRUCK').AsInteger,
      FieldByName('DRIVER').AsInteger,
      FieldByName('CANTIDAD').AsInteger
      ]);
  end;
  Exit(sResult);
end;

end.
