unit Module.Form.Refuel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Common.Form.Module, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxContainer, dxLayoutContainer, dxLayoutcxEditAdapters, cxCustomListBox,
  cxCheckListBox, dxBarExtItems, dxBar, Vcl.DBActns, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxLabel, cxDBLabel, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxCurrencyEdit,
  Common.Control.CodeLookup, cxClasses, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxImageList, cxGridLevel, cxGridCustomView,
  cxGrid, dxLayoutControl, cxPC, cxDBLookupComboBox;

type
  TfrmRefuel = class(TfrmModule)
    lblTruck: TdxLayoutItem;
    IdTruck_PRECIO_IdFuel: TctlCodeLookup;
    txtPrecio: TcxDBCurrencyEdit;
    lblPrecio: TdxLayoutItem;
    txtCantidad: TcxDBCurrencyEdit;
    lblCantidad: TdxLayoutItem;
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
    IMPORTE: TcxDBLabel;
    lblImporte: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewCANTIDAD: TcxGridDBColumn;
    grdListViewPRECIO: TcxGridDBColumn;
    grdListViewIMPORTE: TcxGridDBColumn;    
    lblDriver: TdxLayoutItem;
    IdDriver: TctlCodeLookup;
    grdListViewCAMION: TcxGridDBColumn;
    grdListViewCHOFER: TcxGridDBColumn;
    grdListViewSURTIDOR: TcxGridDBColumn;
    lblSupplier: TdxLayoutItem;
    IdSupplier: TctlCodeLookup;
    lblFuel: TdxLayoutItem;
    IdFuel: TctlCodeLookup;
    grdListViewCOMBUSTIBLE: TcxGridDBColumn;
    dsDestination: TDataSource;
    grdDestinationsView: TcxGridDBTableView;
    grdDestinationsLevel: TcxGridLevel;
    grdDestinations: TcxGrid;
    lblDestinos: TdxLayoutItem;
    dsRefuelDestination: TDataSource;
    grdDestinationsViewIDDESTINATION: TcxGridDBColumn;
    grdListViewDESTINO: TcxGridDBColumn;
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

uses Module.Data.Refuel;

procedure TfrmRefuel.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  IdTruck_PRECIO_IdFuel.GetData;
  IdDriver.GetData;
  IdSupplier.GetData;
  IdFuel.GetData;
end;

initialization
  RegisterClass(TfrmRefuel);

end.
