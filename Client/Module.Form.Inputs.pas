unit Module.Form.Inputs;

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
  cxGrid, dxLayoutContainer, dxLayoutControl, cxPC, Common.Control.CodeLookup,
  dxLayoutcxEditAdapters, cxContainer, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxDBLabel;

type
  TfrmInputs = class(TfrmModule)
    IdClient: TctlCodeLookup;
    lblClient: TdxLayoutItem;
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
    txtOrden: TcxDBTextEdit;
    lblOrden: TdxLayoutItem;
    txtFactura: TcxDBTextEdit;
    lblFactura: TdxLayoutItem;
    cmbCoin: TcxDBLookupComboBox;
    lblCoin: TdxLayoutItem;
    dsCoin: TDataSource;
    IdProduct: TctlCodeLookup;
    lblProduct: TdxLayoutItem;
    txtCantidad: TcxDBCurrencyEdit;
    lblCantidad: TdxLayoutItem;
    txtPrecio: TcxDBCurrencyEdit;
    lblPrecio: TdxLayoutItem;
    cmbInputState: TcxDBLookupComboBox;
    lblInputState: TdxLayoutItem;
    dsInputState: TDataSource;
    grdListViewCLIENTE: TcxGridDBColumn;
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewORDEN: TcxGridDBColumn;
    grdListViewFACTURA: TcxGridDBColumn;
    grdListViewMONEDA: TcxGridDBColumn;
    grdListViewPRODUCTO: TcxGridDBColumn;
    grdListViewENTRADAS: TcxGridDBColumn;
    grdListViewESTADO: TcxGridDBColumn;
    grdListViewCANTIDAD: TcxGridDBColumn;
    grdListViewPRECIO: TcxGridDBColumn;
    IMPORTE: TcxDBLabel;
    lblImporte: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
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

uses Module.Data.Inputs;

procedure TfrmInputs.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  IdClient.GetData;
  IdProduct.GetData;
end;

initialization
  RegisterClass(TfrmInputs);

end.
