unit Module.Form.Outputs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Common.Form.Module, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  dxBar, dxBarExtItems, cxClasses, Vcl.DBActns, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxImageList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxLayoutContainer, dxLayoutControl, cxPC, cxLabel, cxContainer,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, Common.Control.CodeLookup, cxCurrencyEdit, cxMemo,
  DXC.UC.AllowableAdditionalObjects, cxCheckBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmOutputs = class(TfrmModule)
    grdListViewFECHA: TcxGridDBColumn;
    grdListViewPAYEE: TcxGridDBColumn;
    grdListViewMEMO: TcxGridDBColumn;
    grdListViewCATEGORIA: TcxGridDBColumn;
    dtpFecha: TcxDBDateEdit;
    lblFecha: TdxLayoutItem;
    lblCategoria: TdxLayoutItem;
    IdCategory: TctlCodeLookup;
    txtPayee: TcxDBTextEdit;
    lblPayee: TdxLayoutItem;
    txtMemo: TcxDBMemo;
    lblMemo: TdxLayoutItem;
    txtOutflow: TcxDBCurrencyEdit;
    lblOutflow: TdxLayoutItem;
    grdListViewSALIDAS: TcxGridDBColumn;
    cmbPayMethod: TcxDBLookupComboBox;
    lblPayMethod: TdxLayoutItem;
    dsPayMethod: TDataSource;
    grdListViewMETODO: TcxGridDBColumn;
    chkTaxed: TcxDBCheckBox;
    lblTaxed: TdxLayoutItem;
    grdListViewIVA: TcxGridDBColumn;
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

uses Module.Data.Outputs, Consult.Form.Account;

procedure TfrmOutputs.grdListViewCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  IdCategory.GetData;
end;

initialization
  RegisterClass(TfrmOutputs);

end.
