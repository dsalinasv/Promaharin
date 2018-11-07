unit Catalog.Data.Seller;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Master, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect;

type
  TdmSeller = class(TdmMaster)
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
  RegisterClass(TdmSeller);

end.
