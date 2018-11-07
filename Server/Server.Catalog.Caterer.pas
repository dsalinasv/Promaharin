unit Server.Catalog.Caterer;

interface

uses
  System.SysUtils, System.Classes, Server.Common.List, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TsmCaterer = class(TsmList)
    qryMasterIDCATERER: TStringField;
    qryMasterCODE: TIntegerField;
    qryMasterNAME: TStringField;
    qryMasterDOMICILIO: TStringField;
    qryMasterCOLONIA: TStringField;
    qryMasterCODIGOPOSTAL: TIntegerField;
    qryMasterESTADO: TStringField;
    qryMasterCIUDAD: TStringField;
    qryMasterRFC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
