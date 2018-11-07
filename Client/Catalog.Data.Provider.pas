unit Catalog.Data.Provider;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Common.Data.Master;

type
  TdmProvider = class(TdmMaster)
    dspProduct: TDSProviderConnection;
    cdsProduct: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

initialization
  RegisterClass(TdmProvider);

end.
