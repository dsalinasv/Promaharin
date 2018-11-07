unit Module.Data.Reception;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Common.Data.Module, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, Data.FMTBcd, Data.SqlExpr, frxExportBaseDialog;

type
  TdmReception = class(TdmModule)
    cdsMasterIDRECEPTION: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterIDPROVIDER: TStringField;
    cdsMasterIDPRODUCT: TStringField;
    cdsMasterCANTIDAD: TFloatField;
    cdsMasterPRECIO: TFloatField;
    cdsMasterIMPORTE: TCurrencyField;
    cdsConsultFECHA: TSQLTimeStampField;
    cdsConsultPRODUCTO: TStringField;
    cdsConsultPROVEEDOR: TStringField;
    cdsConsultCANTIDAD: TFloatField;
    cdsConsultPRECIO: TFloatField;
    cdsConsultIMPORTE: TFloatField;
    cdsConsultIDRECEPTION: TStringField;
    cdsMasterIDTRUCK: TStringField;
    cdsMasterIDDRIVER: TStringField;
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main.Data.Global;

{$R *.dfm}

procedure TdmReception.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMasterFECHA.AsDateTime:= Now;
end;

procedure TdmReception.cdsMasterCalcFields(DataSet: TDataSet);
begin
  cdsMasterIMPORTE.Value:= cdsMasterCANTIDAD.Value * cdsMasterPRECIO.Value;
end;

initialization
  RegisterClass(TdmReception);

end.
