unit Server.Module.Inputs;

interface

uses
  System.SysUtils, System.Classes, Server.Common.Module, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TsmInputs = class(TsmModule)
    qryCoin: TFDQuery;
    dspCoin: TDataSetProvider;
    qryInputState: TFDQuery;
    dspInputState: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Server.Core.Container;

{$R *.dfm}

end.
