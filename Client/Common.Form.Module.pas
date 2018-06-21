unit Common.Form.Module;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Core.Form.Master, Data.DB,
  System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, dxSkinsCore,
  dxSkinOffice2013White, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutContainer, dxLayoutControl, cxPC,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmModule = class(TfrmMaster)
    dxBarLargeButton1: TdxBarLargeButton;
    pcList: TcxPageControl;
    tabData: TcxTabSheet;
    lcData: TdxLayoutControl;
    lcDataGroup_Root: TdxLayoutGroup;
    tabList: TcxTabSheet;
    grdList: TcxGrid;
    grdListView: TcxGridDBTableView;
    grdListLevel: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
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

procedure TfrmModule.FormCreate(Sender: TObject);
begin
  inherited;
  pcList.ActivePage:= tabData;
end;

procedure TfrmModule.grdListViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pcList.ActivePage:= tabData;
end;

end.
