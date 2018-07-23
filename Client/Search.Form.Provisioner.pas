unit Search.Form.Provisioner;

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
  TfrmProvisionerSearch = class(TfrmSearch)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmProvisionerSearch.FormCreate(Sender: TObject);
begin
  inherited;
  Fields:= 'idprovisioner, code, name,' +
    '(select name from fuel f where provisioner.idfuel = f.idfuel) as combustible';
end;

procedure TfrmProvisionerSearch.FormShow(Sender: TObject);
begin
  inherited;
  grdSearchView.GetColumnByFieldName('COMBUSTIBLE').Caption:= 'Combustible';
  grdSearchView.GetColumnByFieldName('COMBUSTIBLE').Tag:= 1;
end;

initialization
  RegisterClass(TfrmProvisionerSearch);

end.
