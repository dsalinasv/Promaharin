unit Report.Form.Stock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Core.Form.Master, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList,
  cxGraphics, Data.DB, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmStock = class(TfrmMaster)
    dxBarLargeButton1: TdxBarLargeButton;
    actPrint: TAction;
    grdList: TcxGrid;
    grdListView: TcxGridDBTableView;
    grdListLevel: TcxGridLevel;
    grdListViewCOMBUSTIBLE: TcxGridDBColumn;
    grdListViewSALDO: TcxGridDBColumn;
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Report.Data.Stock;

procedure TfrmStock.actPrintExecute(Sender: TObject);
begin
  (dmMaster as TdmStock).Print;
end;

initialization
  RegisterClass(TfrmStock);

end.
