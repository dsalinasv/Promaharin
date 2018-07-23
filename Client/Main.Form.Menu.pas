unit Main.Form.Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar,
  dxBarBuiltInMenu, System.Actions, Vcl.ActnList, cxPC, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage, dxSkinsCore,
  dxSkinOffice2013White;

type
  TfrmMain = class(TForm)
    navBar: TdxNavBar;
    mnuProduct: TdxNavBarItem;
    navReception: TdxNavBarGroup;
    mnuProvider: TdxNavBarItem;
    mnuReception: TdxNavBarItem;
    actList: TActionList;
    actProduct: TAction;
    actProvider: TAction;
    actReception: TAction;
    tabMain: TcxPageControl;
    tabInicio: TcxTabSheet;
    imgLogo: TcxImage;
    mnuTruck: TdxNavBarItem;
    mnuDestination: TdxNavBarItem;
    navRefuel: TdxNavBarGroup;
    navExpense: TdxNavBarGroup;
    actTruck: TAction;
    actDestination: TAction;
    actDriver: TAction;
    actSupplier: TAction;
    mnuDriver: TdxNavBarItem;
    mnuSupplier: TdxNavBarItem;
    mnuRefuel: TdxNavBarItem;
    actRefuel: TAction;
    actFuel: TAction;
    mnuFuel: TdxNavBarItem;
    actProvisioner: TAction;
    mnuProvisioner: TdxNavBarItem;
    actInventory: TAction;
    mnuInventory: TdxNavBarItem;
    actStock: TAction;
    mnuStock: TdxNavBarItem;
    actBatch: TAction;
    mnuBatch: TdxNavBarItem;
    procedure tabMainCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure actExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function OpenForm(FormName: string): TForm;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ApplicationVersionHelper;

const
  LOGO = 'logo.jpg';

procedure TfrmMain.actExecute(Sender: TObject);
begin
  OpenForm(StringReplace((Sender as TComponent).Name, 'act' , 'frm',[]));
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

procedure TfrmMain.tabMainCanCloseEx(Sender: TObject; ATabIndex: Integer;
  var ACanClose: Boolean);
begin
  ACanClose:= ATabIndex > 0;
end;

end.
