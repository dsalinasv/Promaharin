unit Server.Module.Batch;

interface

uses
  System.SysUtils, System.Classes, Server.Common.Module, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmBatch = class(TsmModule)
    qryBatchDetail: TFDQuery;
    dsBatch: TDataSource;
    dspBatchStatus: TDataSetProvider;
    qryBatchStatus: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
