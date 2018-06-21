unit Module.Form.Reception;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Common.Form.Module, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2013White, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, dxBar,
  cxClasses, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  cxImageList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer,
  dxLayoutControl, cxPC, Common.Control.CodeLookup, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxCurrencyEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxDBLabel, dxBarExtItems, Vcl.DBActns, cxDBLookupComboBox,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmReception = class(TfrmModule)
    lblProveedor: TdxLayoutItem;
    PROVIDER_PRECIO_PRECIO: TctlCodeLookup;
    txtPrecio: TcxDBCurrencyEdit;
    lblPrecio: TdxLayoutItem;
    txtCantidad: TcxDBCurrencyEdit;
    lblCantidad: TdxLayoutItem;
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
    PRODUCT: TctlCodeLookup;
    lblProducto: TdxLayoutItem;
    IMPORTE: TcxDBLabel;
    lblImporte: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dtpFechaInicial: TdxBarDateCombo;
    lblFechaInicial: TdxBarStatic;
    lblFechaFinal: TdxBarStatic;
    dtpFechaFinal: TdxBarDateCombo;
    actInsert: TDataSetInsert;
    actPost: TDataSetPost;
    actCancel: TDataSetCancel;
    btnInsert: TdxBarLargeButton;
    btnPost: TdxBarLargeButton;
    btnCancel: TdxBarLargeButton;
    btnConsult: TdxBarLargeButton;
    actConsult: TAction;
    dsReceptionByDate: TDataSource;
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewPRODUCTO: TcxGridDBColumn;
    grdListViewPROVEEDOR: TcxGridDBColumn;
    grdListViewCANTIDAD: TcxGridDBColumn;
    grdListViewPRECIO: TcxGridDBColumn;
    grdListViewIMPORTE: TcxGridDBColumn;
    actPrint: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    actDelete: TDataSetDelete;
    procedure actConsultExecute(Sender: TObject);
    procedure grdListViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Module.Data.Reception;

procedure TfrmReception.actConsultExecute(Sender: TObject);
begin
  (dmMaster as TdmReception).ReceptionByDate
    (dtpFechaInicial.Date, dtpFechaFinal.Date);
end;

procedure TfrmReception.actPrintExecute(Sender: TObject);
begin
  (dmMaster as TdmReception).PrintReception;
end;

procedure TfrmReception.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  (dmMaster as TdmReception).ReceptionById;
  PROVIDER_PRECIO_PRECIO.GetData;
  PRODUCT.GetData;
end;

initialization
  RegisterClass(TfrmReception);

end.
