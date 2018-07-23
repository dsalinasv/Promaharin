unit Module.Data.Inventory;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Core.Data.Master, frxClass, frxDBSet, frxExportXLS,
  frxExportPDF;

type
  TdmInventory = class(TdmMaster)
    cdsInventoryByDate: TClientDataSet;
    frxInventoryByDate: TfrxReport;
    fdsInventoryByDate: TfrxDBDataset;
    frxXLSExport: TfrxXLSExport;
    frxPDFExport: TfrxPDFExport;
    cdsMasterIDINVENTORY: TStringField;
    cdsMasterFECHA: TSQLTimeStampField;
    cdsMasterFOLIO: TStringField;
    cdsMasterIDPROVISIONER: TStringField;
    cdsMasterIDFUEL: TStringField;
    cdsMasterCANTIDAD: TFloatField;
    cdsMasterPRECIO: TFloatField;
    cdsInventoryByDateIDINVENTORY: TStringField;
    cdsInventoryByDateFECHA: TSQLTimeStampField;
    cdsInventoryByDatePROVISIONER: TStringField;
    cdsInventoryByDateCOMBUSTIBLE: TStringField;
    cdsInventoryByDateCANTIDAD: TFloatField;
    cdsInventoryByDatePRECIO: TFloatField;
    cdsInventoryByDateSUBTOTAL: TFloatField;
    cdsInventoryByDateAJUSTE: TFloatField;
    cdsInventoryByDateIMPORTE: TFloatField;
    cdsMasterSUBTOTAL: TFloatField;
    cdsMasterIMPORTE: TFloatField;
    cdsMasterAJUSTE: TFloatField;
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InventoryById;
    procedure InventoryByDate(ini, fin: TDate);
    procedure PrintInventory(filtro: string);
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

procedure TdmInventory.DataModuleCreate(Sender: TObject);
begin
  with cdsInventoryByDate do
  begin
    ParamByName('INI').AsDate:= Date;
    ParamByName('FIN').AsDate:= Date + 1;
  end;
  inherited;
end;

procedure TdmInventory.InventoryByDate(ini, fin: TDate);
begin
  with cdsInventoryByDate do
  begin
    Close;
    ParamByName('INI').AsDate:= ini;
    ParamByName('FIN').AsDate:= fin + 1;
    Open;
  end;

end;

procedure TdmInventory.InventoryById;
begin
  with cdsMaster do
  begin
    Close;
    ParamByName('IDINVENTORY').AsString:=
      cdsInventoryByDate.FieldByName('IDINVENTORY').AsString;
    Open;
  end;
end;

procedure TdmInventory.PrintInventory(filtro: string);
begin
  with cdsInventoryByDate do
  begin
    DisableControls;
    Filtered:= true;
    Filter:= filtro;
  end;
  with frxInventoryByDate do
  begin
    if PrepareReport then
      ShowPreparedReport;
  end;
  with cdsInventoryByDate do
  begin
    Filter:= EmptyStr;
    Filtered:= false;
    EnableControls;
  end;
end;

initialization
  RegisterClass(TdmInventory);

end.
