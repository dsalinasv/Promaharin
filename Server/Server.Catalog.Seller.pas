unit Server.Catalog.Seller;

interface

uses
  System.SysUtils, System.Classes, Server.Common.List, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TsmSeller = class(TsmList)
    qryMasterIDSELLER: TStringField;
    qryMasterCODE: TIntegerField;
    qryMasterNAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
