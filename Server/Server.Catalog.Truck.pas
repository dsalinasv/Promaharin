unit Server.Catalog.Truck;

interface

uses
  System.SysUtils, System.Classes, Server.Common.List, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmTruck = class(TsmList)
    qryTruckIDTRUCK: TStringField;
    qryTruckCODE: TIntegerField;
    qryTruckNAME: TStringField;
    qryTruckIDFUEL: TStringField;
    qryTruckPRECIO: TFloatField;
    qryTruckMARCA: TStringField;
    qryTruckMODELO: TIntegerField;
    qryTruckPLACAS: TStringField;
    qryTruckVIGENCIA_TARJETA: TSQLTimeStampField;
    qryTruckVIGENCIA_SEGURO: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
