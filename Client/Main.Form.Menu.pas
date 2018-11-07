unit Main.Form.Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxContainer, cxEdit, cxImage, cxPC,
  dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar, dxStatusBar;

type
  TfrmMain = class(TForm)
    navBar: TdxNavBar;
    mnuProduct: TdxNavBarItem;
    navReception: TdxNavBarGroup;
    mnuProvider: TdxNavBarItem;
    mnuReception: TdxNavBarItem;
    tabMain: TcxPageControl;
    tabInicio: TcxTabSheet;
    imgLogo: TcxImage;
    mnuTruck: TdxNavBarItem;
    mnuDestination: TdxNavBarItem;
    navRefuel: TdxNavBarGroup;
    navTransactions: TdxNavBarGroup;
    mnuDriver: TdxNavBarItem;
    mnuSupplier: TdxNavBarItem;
    mnuRefuel: TdxNavBarItem;
    mnuFuel: TdxNavBarItem;
    mnuProvisioner: TdxNavBarItem;
    mnuInventory: TdxNavBarItem;
    mnuStock: TdxNavBarItem;
    mnuBatch: TdxNavBarItem;
    navCaptures: TdxNavBarGroup;
    navSecurity: TdxNavBarGroup;
    mnuSession: TdxNavBarItem;
    mnuChange: TdxNavBarItem;
    mnuUsers: TdxNavBarItem;
    mnuAccount: TdxNavBarItem;
    mnuCategory: TdxNavBarItem;
    mnuOutputs: TdxNavBarItem;
    StatusBar: TdxStatusBar;
    mnuInputs: TdxNavBarItem;
    mnuClient: TdxNavBarItem;
    mnuQuotation: TdxNavBarItem;
    mnuCondition: TdxNavBarItem;
    mnuSeller: TdxNavBarItem;
    mnuCaterer: TdxNavBarItem;
    procedure tabMainCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  public
    function OpenForm(FormName: string): TForm;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ApplicationVersionHelper, Main.Data.Global;

const
  LOGO = 'logo.jpg';

function TfrmMain.OpenForm(FormName: string): TForm;
var
  FormClass: TFormClass;
begin
  Result:= TForm(Application.FindComponent(FormName));
  if Assigned(Result) then
    tabMain.ActivePage:= Result.Parent as TcxTabSheet
  else
  begin
    FormClass:= TFormClass(GetClass('T' + FormName));
    if Assigned(FormClass) then
    begin
      Result:= FormClass.Create(Application);
      Result.ManualDock(tabMain);
      Result.Show;
      tabMain.ActivePageIndex:= Pred(tabMain.PageCount);
      Result.Parent:= tabMain.ActivePage;
    end;
  end;
  tabMain.ActivePage.Name := FormName;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Caption:= Application.Version['FileDescription'] + ' ' +
    Application.Version['FileVersion'];
  if FileExists(LOGO) then
    imgLogo.Picture.LoadFromFile(LOGO);
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(CM_DIALOGKEY, VK_TAB, 0);
    Key := #0;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  StatusBar.Panels.Items[0].Text:= 'Usuario: ' + dmGlobal.UserName;
end;

procedure TfrmMain.tabMainCanCloseEx(Sender: TObject; ATabIndex: Integer;
  var ACanClose: Boolean);
begin
  ACanClose:= ATabIndex > 0;
end;

end.
