unit Search.Form.Provider;

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
  TfrmProviderSearch = class(TfrmSearch)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmProviderSearch.FormCreate(Sender: TObject);
begin
  inherited;
  Fields:= 'idprovider, code, name,' +
    '(select name from product p where provider.idproduct = p.idproduct) as producto';
end;

procedure TfrmProviderSearch.FormShow(Sender: TObject);
begin
  inherited;
  grdSearchView.GetColumnByFieldName('PRODUCTO').Caption:= 'Producto';
  grdSearchView.GetColumnByFieldName('PRODUCTO').Tag:= 1;
end;

initialization
  RegisterClass(TfrmProviderSearch);

end.
