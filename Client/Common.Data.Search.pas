unit Common.Data.Search;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Data.DB, Datasnap.DBClient;

type
  TdmSearch = class(TDataModule)
    cdsGetByField: TClientDataSet;
    dspGetByField: TDataSetProvider;
    ssmGetByField: TSqlServerMethod;
    ssmGetById: TSqlServerMethod;
    cdsGetById: TClientDataSet;
    dspGetById: TDataSetProvider;
    ssmGetByCode: TSqlServerMethod;
    cdsGetByCode: TClientDataSet;
    dspGetByCode: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetByCode(sCode, sTable: string);
    procedure GetByField(sTable, sField, sName: string);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  Main.Data.Global;

{$R *.dfm}

{ TDataModule1 }

procedure TdmSearch.GetByCode(sCode, sTable: string);
begin
  with cdsGetByCode do
  begin
    Close;
    ParamByName('sCode').AsString:= sCode;
    ParamByName('sTable').AsString:= sTable;
    Open;
  end;
end;

procedure TdmSearch.GetByField(sTable, sField, sName: string);
begin
  with cdsGetByField do
  begin
    Close;
    Fields.Clear;
    FieldDefs.Clear;
    ParamByName('sTable').AsString:= sTable;
    ParamByName('sField').AsString:= sField;
    ParamByName('sName').AsString:= sName;
    Open;
    FieldByName('ID' + sTable).Visible:= False;
  end;
end;

end.