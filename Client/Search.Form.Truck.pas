unit Search.Form.Truck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Common.Form.Search, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, System.Actions, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls, cxTextEdit;

type
  TfrmTruckSearch = class(TfrmSearch)
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmTruckSearch.FormCreate(Sender: TObject);
begin
  inherited;
  Fields:= 'idtruck, code, name,' +
    '(select name from fuel f where truck.idfuel = f.idfuel) as combustible';
end;

procedure TfrmTruckSearch.FormShow(Sender: TObject);
begin
  inherited;
  grdSearchView.GetColumnByFieldName('COMBUSTIBLE').Caption:= 'Combustible';
  grdSearchView.GetColumnByFieldName('COMBUSTIBLE').Tag:= 0;
end;

initialization
  RegisterClass(TfrmTruckSearch);
end.
