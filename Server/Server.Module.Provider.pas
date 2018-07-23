unit Server.Module.Provider;

interface

uses
  System.SysUtils, System.Classes, Server.Module.General, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmProvider = class(TsmGeneral)
    dspProvider: TDataSetProvider;
    qryProvider: TFDQuery;
    qryProviderIDPROVIDER: TStringField;
    qryProviderCODE: TIntegerField;
    qryProviderNAME: TStringField;
    qryProviderRAZON_SOCIAL: TStringField;
    qryProviderTELEFONO: TStringField;
    qryProviderCONTACTO: TStringField;
    qryProviderDIRECCION: TStringField;
    qryProviderIDPRODUCT: TStringField;
    qryProviderPRECIO: TFloatField;
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
