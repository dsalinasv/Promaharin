program PromaharinClient;

uses
  MidasLib,
  Vcl.Forms,
  Main.Form.Menu in 'Main.Form.Menu.pas' {frmMain},
  Catalog.Form.Product in 'Catalog.Form.Product.pas' {frmProduct},
  Catalog.Form.Provider in 'Catalog.Form.Provider.pas' {frmProvider},
  Module.Form.Reception in 'Module.Form.Reception.pas' {frmReception},
  Catalog.Data.Product in 'Catalog.Data.Product.pas' {dmProduct: TDataModule},
  Catalog.Data.Provider in 'Catalog.Data.Provider.pas' {dmProvider: TDataModule},
  Module.Data.Reception in 'Module.Data.Reception.pas' {dmReception: TDataModule},
  Main.Data.Global in 'Main.Data.Global.pas' {dmGlobal: TDataModule},
  Core.Form.Base in 'Core.Form.Base.pas' {frmBase},
  Common.Form.List in 'Common.Form.List.pas' {frmList},
  Core.Data.Master in 'Core.Data.Master.pas' {dmMaster: TDataModule},
  Core.Form.Master in 'Core.Form.Master.pas' {frmMaster},
  Core.Data.Base in 'Core.Data.Base.pas' {dmBase: TDataModule},
  Common.Form.Module in 'Common.Form.Module.pas' {frmModule},
  Common.Data.Search in 'Common.Data.Search.pas' {dmSearch: TDataModule},
  Common.Form.Search in 'Common.Form.Search.pas' {frmSearch},
  Common.Control.CodeLookup in 'Common.Control.CodeLookup.pas' {ctlCodeLookup: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmGlobal, dmGlobal);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
