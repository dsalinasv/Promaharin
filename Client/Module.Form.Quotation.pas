unit Module.Form.Quotation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Common.Form.Module, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxLabel, dxBar, dxBarExtItems, cxClasses, Vcl.DBActns, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxLayoutContainer, dxLayoutControl, cxPC, dxLayoutcxEditAdapters,
  cxContainer, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar,
  Common.Control.CodeLookup, cxDBLabel;

type
  TfrmQuotation = class(TfrmModule)
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewCLIENTE: TcxGridDBColumn;
    grdListViewDIRECCION: TcxGridDBColumn;
    grdListViewTELEFONO: TcxGridDBColumn;
    grdListViewUNIDAD: TcxGridDBColumn;
    grdListViewPRODUCTO: TcxGridDBColumn;
    grdListViewCANTIDAD: TcxGridDBColumn;
    grdListViewPRECIO: TcxGridDBColumn;
    grdListViewIMPORTE: TcxGridDBColumn;
    lblClient: TdxLayoutItem;
    IdClient: TctlCodeLookup;
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
    txtCantidad: TcxDBCurrencyEdit;
    lblCantidad: TdxLayoutItem;
    cmbUnit: TcxDBLookupComboBox;
    lblUnidad: TdxLayoutItem;
    dsUnit: TDataSource;
    lblProduct: TdxLayoutItem;
    IdProduct: TctlCodeLookup;
    txtPrecio: TcxDBCurrencyEdit;
    lblPrecio: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    IMPORTE: TcxDBLabel;
    lblImporte: TdxLayoutItem;
    lblCondition: TdxLayoutItem;
    grdCondition: TcxGrid;
    grdConditionView: TcxGridDBTableView;
    grdConditionLevel: TcxGridLevel;
    dsCondition: TDataSource;
    dsQuotationCondition: TDataSource;
    grdConditionViewIDCONDITION: TcxGridDBColumn;
    IdSeller: TctlCodeLookup;
    lblSeller: TdxLayoutItem;
    grdListViewVENDEDOR: TcxGridDBColumn;
    procedure grdListViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Module.Data.Quotation;

procedure TfrmQuotation.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  IdClient.GetData;
  IdProduct.GetData;
end;

initialization
  RegisterClass(TfrmQuotation);

end.
