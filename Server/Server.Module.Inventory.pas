unit Server.Module.Inventory;

interface

uses
  System.SysUtils, System.Classes, Server.Module.General, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

type
  TsmInventory = class(TsmGeneral)
    dspInventory: TDataSetProvider;
    qryInventory: TFDQuery;
    dspInventoryByDate: TDataSetProvider;
    qryInventoryByDate: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  smInventory: TsmInventory;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
