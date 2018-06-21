unit Common.Control.CodeLookup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Common.Data.Search,
  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, dxSkinsCore, cxMaskEdit, cxButtonEdit,
  dxSkinOffice2013White;

type
  TctlCodeLookup = class(TFrame)
    txtId: TcxDBTextEdit;
    txtName: TcxTextEdit;
    txtCode: TcxButtonEdit;
    procedure txtCodeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure txtCodeExit(Sender: TObject);
  private
    { Private declarations }
    dmSearch: TdmSearch;
    function GetTable(sId: string): string;
    procedure GetDataByCode;
    procedure OpenSearch;
  public
    { Public declarations }
    procedure GetData;
  end;

implementation

{$R *.dfm}

uses
  StrUtils, Datasnap.DBClient, Main.Data.Global,
  Core.Form.Base, Common.Form.Search;

procedure TctlCodeLookup.GetData;
var
  sId: string;
  sTable: string;
begin
  if txtId.Text = EmptyStr then
  begin
    Exit;
  end;
  sId:= txtId.DataBinding.DataField;
  sTable:= GetTable(sId);
  dmSearch:= TdmSearch.Create(Self);
  with dmSearch.cdsGetById do
  begin
    Close;
    ParamByName('sId').AsString:= txtId.Text;
    ParamByName('sTable').AsString:= sTable;
    Open;
    txtCode.Text:= FieldByName('CODE').AsString;
    txtName.Text:= FieldByName('NAME').AsString;
  end;
  dmSearch.Free;
end;

procedure TctlCodeLookup.txtCodeExit(Sender: TObject);
begin
  txtCode.ValidateEdit;
end;

procedure TctlCodeLookup.txtCodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F9 then
    OpenSearch;
end;

procedure TctlCodeLookup.GetDataByCode;
var
  sId: string;
  sTable: string;
  DataSet: TClientDataSet;
  ListOfStrings: TStringList;
  sField: string;
  i: integer;
begin
  if txtCode.Text = EmptyStr then
    exit;
  sId:= txtId.DataBinding.DataField;
  sTable:= GetTable(sId);
  ListOfStrings:= TStringList.Create;
  ListOfStrings.Clear;
  ListOfStrings.Delimiter       := '_';
  ListOfStrings.StrictDelimiter := True;
  ListOfStrings.DelimitedText   := Name;
  if dmGlobal.CheckCode(txtCode.Text, sTable) then
  begin
    DataSet:= txtId.DataBinding.DataSource.DataSet as TClientDataSet;
    dmSearch:= TdmSearch.Create(Self);
    with dmSearch.cdsGetByCode do
    begin
      Close;
      ParamByName('sCode').AsString:= txtCode.Text;
      ParamByName('sTable').AsString:= sTable;
      Open;
      DataSet.Edit;
      DataSet.FieldByName(sId).AsString:= FieldByName(sId).AsString;
      txtName.Text:= FieldByName('NAME').AsString;
      if ListOfStrings.Count > 1 then
          for i := 1 to Pred(ListOfStrings.Count) do
            if i mod 2 = 0 then
              DataSet.FieldByName(ListOfStrings[i]).AsString:=
                FieldByName(sField).AsString
            else
              sField:= ListOfStrings[i];
    end;
    dmSearch.Free;
    ListOfStrings.Free;
  end
  else
    ShowMessage('El código no existe');
end;

procedure TctlCodeLookup.OpenSearch;
var
  sId: string;
  sTable: string;
  DataSet: TClientDataSet;
  ListOfStrings: TStringList;
  sField: string;
  i: integer;
begin
  sId:= txtId.DataBinding.DataField;
  sTable:= GetTable(sId);
  DataSet:= txtId.DataBinding.DataSource.DataSet as TClientDataSet;
  with TfrmSearch.Create(Self) do
  try
    Table:= sTable;
    if ShowModal = mrOk then
    begin
      with dmSearch.cdsGetByField do
      begin
        DataSet.Edit;
        DataSet.FieldByName(sId).AsString:= FieldByName(sId).AsString;
        txtCode.Text:= FieldByName('CODE').AsString;
        txtName.Text:= FieldByName('NAME').AsString;
      end;
    end;
  finally
    Free;
  end;
end;

function TctlCodeLookup.GetTable(sId: string): string;
begin
  Result:= RightStr(sId, Length(sId) - 2);
end;

procedure TctlCodeLookup.txtCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  OpenSearch;
end;

procedure TctlCodeLookup.txtCodePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarToStr(DisplayValue) = EmptyStr;
  if Error then
    OpenSearch
  else
    GetDataByCode;
end;

end.