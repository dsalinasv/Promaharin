unit Server.Module.Refuel;

interface

uses
  System.SysUtils, System.Classes, Server.Module.General, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmRefuel = class(TsmGeneral)
    dspRefuel: TDataSetProvider;
    qryRefuel: TFDQuery;
    dspRefuelByDate: TDataSetProvider;
    qryRefuelByDate: TFDQuery;
    dsRefuel: TDataSource;
    qryRefuelDestination: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Server.Module.Container;

{$R *.dfm}

end.
