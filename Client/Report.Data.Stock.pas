unit Report.Data.Stock;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Master, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, frxExportPDF, frxClass, frxExportXLS, frxDBSet,
  frxExportBaseDialog;

type
  TdmStock = class(TdmMaster)
    frxStock: TfrxReport;
    fdsStock: TfrxDBDataset;
    frxXLSExport: TfrxXLSExport;
    frxPDFExport: TfrxPDFExport;
    cdsMasterCOMBUSTIBLE: TStringField;
    cdsMasterSALDO: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Print;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

{ TdmStock }

procedure TdmStock.Print;
begin
  if frxStock.PrepareReport then
    frxStock.ShowPreparedReport;
end;

initialization
  RegisterClass(TdmStock);

end.
