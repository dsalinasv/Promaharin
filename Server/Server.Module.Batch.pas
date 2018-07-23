unit Server.Module.Batch;

interface

uses
  System.SysUtils, System.Classes, Server.Module.General, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmBatch = class(TsmGeneral)
    dspBatch: TDataSetProvider;
    qryBatch: TFDQuery;
    qryBatchDetail: TFDQuery;
    dsBatch: TDataSource;
    dspBatchStatus: TDataSetProvider;
    qryBatchStatus: TFDQuery;
    dspBatchByDates: TDataSetProvider;
    qryBatchByDates: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Server.Module.Container;

{$R *.dfm}

end.
