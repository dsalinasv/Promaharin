unit Module.Data.Refuel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Common.Data.Module, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF, frxExportBaseDialog;

type
  TdmRefuel = class(TdmModule)
    cdsMasterIDREFUEL: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterIDTRUCK: TStringField;
    cdsMasterIDDRIVER: TStringField;
    cdsMasterIDSUPPLIER: TStringField;
    cdsMasterCANTIDAD: TFloatField;
    cdsMasterPRECIO: TFloatField;
    cdsConsultIDREFUEL: TStringField;
    cdsConsultFECHA: TSQLTimeStampField;
    cdsConsultCAMION: TStringField;
    cdsConsultCHOFER: TStringField;
    cdsConsultSURTIDOR: TStringField;
    cdsConsultCANTIDAD: TFloatField;
    cdsConsultPRECIO: TFloatField;
    cdsConsultIMPORTE: TFloatField;
    cdsMasterIMPORTE: TFloatField;
    cdsMasterIDFUEL: TStringField;
    cdsConsultCOMBUSTIBLE: TStringField;
    dspDestination: TDSProviderConnection;
    cdsDestination: TClientDataSet;
    cdsMasterqryRefuelDestination: TDataSetField;
    cdsRefuelDestination: TClientDataSet;
    cdsConsultDESTINO: TStringField;
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

procedure TdmRefuel.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  cdsMasterFECHA.AsDateTime:= Now;
end;

procedure TdmRefuel.cdsMasterCalcFields(DataSet: TDataSet);
begin
  cdsMasterIMPORTE.Value:= cdsMasterCANTIDAD.Value * cdsMasterPRECIO.Value;
end;

initialization
  RegisterClass(TdmRefuel);

end.
