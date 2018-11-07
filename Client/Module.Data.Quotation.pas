unit Module.Data.Quotation;

interface

uses
  System.SysUtils, System.Classes, Common.Data.Module, frxClass, frxDBSet,
  frxExportPDF, frxExportBaseDialog, frxExportXLS, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TdmQuotation = class(TdmModule)
    cdsUnit: TClientDataSet;
    cdsMasterIDQUOTATION: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterIDCLIENT: TStringField;
    cdsMasterCANTIDAD: TFloatField;
    cdsMasterIDUNIT: TStringField;
    cdsMasterIDPRODUCT: TStringField;
    cdsMasterPRECIO: TFloatField;
    cdsMasterIMPORTE: TFloatField;
    cdsMasterqryQuotationCondition: TDataSetField;
    cdsQuotationCondition: TClientDataSet;
    dspCondition: TDSProviderConnection;
    cdsCondition: TClientDataSet;
    cdsQuotationConditionIDQUOTATIONCONDITION: TStringField;
    cdsQuotationConditionIDQUOTATION: TStringField;
    cdsQuotationConditionIDCONDITION: TStringField;
    cdsQuotationConditionCONDITION: TStringField;
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

procedure TdmQuotation.cdsMasterCalcFields(DataSet: TDataSet);
begin
  cdsMasterIMPORTE.Value:= cdsMasterCANTIDAD.Value * cdsMasterPRECIO.Value;
end;

procedure TdmQuotation.DataModuleCreate(Sender: TObject);
begin
  inherited;
  Filtering:= False;
end;

initialization
  RegisterClass(TdmQuotation);

end.
