unit Server.Catalog.Provisioner;

interface

uses
  System.SysUtils, System.Classes, Server.Common.List, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmProvisioner = class(TsmList)
    qryProvisionerIDPROVISIONER: TStringField;
    qryProvisionerCODE: TIntegerField;
    qryProvisionerNAME: TStringField;
    qryProvisionerIDFUEL: TStringField;
    qryProvisionerPRECIO: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
