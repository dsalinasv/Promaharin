unit Module.Data.Order;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Module, frxClass, frxDBSet,
  frxExportPDF, frxExportBaseDialog, frxExportXLS, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TdmOrder = class(TdmModule)
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
  RegisterClass(TdmOrder);

end.
