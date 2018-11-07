unit Server.Catalog.Destination;

interface

uses
  System.SysUtils, System.Classes, Server.Common.List, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider, DBClient;

type
  TsmDestination = class(TsmList)
    qryDestinationIDDESTINATION: TStringField;
    qryDestinationCODE: TIntegerField;
    qryDestinationNAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
