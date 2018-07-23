unit Server.Module.Supplier;

interface

uses
  System.SysUtils, System.Classes, Server.Module.General, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmSupplier = class(TsmGeneral)
    dspSupplier: TDataSetProvider;
    qrySupplier: TFDQuery;
    qrySupplierIDSUPPLIER: TStringField;
    qrySupplierCODE: TIntegerField;
    qrySupplierNAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
