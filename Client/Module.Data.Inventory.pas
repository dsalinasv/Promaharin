unit Module.Data.Inventory;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Common.Data.Module, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, frxExportBaseDialog;

type
  TdmInventory = class(TdmModule)
    cdsMasterIDINVENTORY: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterFOLIO: TStringField;
    cdsMasterIDPROVISIONER: TStringField;
    cdsMasterIDFUEL: TStringField;
    cdsMasterCANTIDAD: TFloatField;
    cdsMasterPRECIO: TFloatField;
    cdsConsultIDINVENTORY: TStringField;
    cdsConsultFECHA: TSQLTimeStampField;
    cdsConsultPROVISIONER: TStringField;
    cdsConsultCOMBUSTIBLE: TStringField;
    cdsConsultCANTIDAD: TFloatField;
    cdsConsultPRECIO: TFloatField;
    cdsConsultSUBTOTAL: TFloatField;
    cdsConsultAJUSTE: TFloatField;
    cdsConsultIMPORTE: TFloatField;
    cdsMasterSUBTOTAL: TFloatField;
    cdsMasterIMPORTE: TFloatField;
    cdsMasterAJUSTE: TFloatField;
    cdsConsultFOLIO: TStringField;
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

procedure TdmInventory.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMasterFECHA.AsDateTime:= Now;
end;

procedure TdmInventory.cdsMasterCalcFields(DataSet: TDataSet);
begin
  cdsMasterSUBTOTAL.Value:= cdsMasterCANTIDAD.Value * cdsMasterPRECIO.Value;
  cdsMasterIMPORTE.Value:= cdsMasterSUBTOTAL.Value -
    (cdsMasterAJUSTE.Value * cdsMasterPRECIO.Value)
end;

initialization
  RegisterClass(TdmInventory);

end.
