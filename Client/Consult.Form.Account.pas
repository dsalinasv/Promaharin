unit Consult.Form.Account;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Core.Form.Base, Main.Data.Global, Catalog.Data.Account, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxContainer, cxEdit, cxCustomListBox, cxListBox, cxDBEdit, Data.DB,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.DBCtrls;

type
  TfrmAccountConsult = class(TfrmBase)
    btnOk: TcxButton;
    btnCancel: TcxButton;
    dsAccount: TDataSource;
    DBLookupListBox1: TDBLookupListBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
  private
    { Private declarations }
    dmAccount: TdmAccount;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmAccountConsult.DBLookupListBox1Click(Sender: TObject);
begin
  if not dmAccount.cdsMaster.IsEmpty then
     btnOk.Enabled:= True;
end;

procedure TfrmAccountConsult.FormCreate(Sender: TObject);
begin
  dmAccount:= TdmAccount.Create(nil);
  dsAccount.DataSet:= dmAccount.cdsMaster;
end;

procedure TfrmAccountConsult.FormDestroy(Sender: TObject);
begin
  dmAccount.Free;
end;

end.
