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
    mnuProductos: TdxNavBarItem;
    navRecepcion: TdxNavBarGroup;
    mnuProveedores: TdxNavBarItem;
    mnuRecepcion: TdxNavBarItem;
    actList: TActionList;
    actProduct: TAction;
    actProvider: TAction;
    actReception: TAction;
    tabMain: TcxPageControl;
    tabInicio: TcxTabSheet;
    imgLogo: TcxImage;
    navBarItem1: TdxNavBarItem;
    navBarItem2: TdxNavBarItem;
    navBarGroup1: TdxNavBarGroup;
    navBarGroup2: TdxNavBarGroup;
    procedure tabMainCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure actExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

const
  LOGO = 'logo.jpg';

procedure TfrmMain.actExecute(Sender: TObject);
begin
  OpenForm(StringReplace((Sender as TComponent).Name, 'act' , 'frm',[]));
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  if FileExists(LOGO) then
    imgLogo.Picture.LoadFromFile(LOGO);
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
