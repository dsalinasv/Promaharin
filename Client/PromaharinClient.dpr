program PromaharinClient;

uses
  MidasLib,
  Vcl.Forms,
  Main.Form.Menu in 'Main.Form.Menu.pas' {frmMain},
  Catalog.Form.Product in 'Catalog.Form.Product.pas' {frmProduct},
  Catalog.Form.Provider in 'Catalog.Form.Provider.pas' {frmProvider},
  Module.Form.Inventory in 'Module.Form.Inventory.pas' {frmInventory},
  Catalog.Data.Product in 'Catalog.Data.Product.pas' {dmProduct: TDataModule},
  Catalog.Data.Provider in 'Catalog.Data.Provider.pas' {dmProvider: TDataModule},
  Module.Data.Inventory in 'Module.Data.Inventory.pas' {dmInventory: TDataModule},
  Main.Data.Global in 'Main.Data.Global.pas' {dmGlobal: TDataModule},
  Core.Form.Base in 'Core.Form.Base.pas' {frmBase},
  Common.Form.List in 'Common.Form.List.pas' {frmList},
  Core.Data.Master in 'Core.Data.Master.pas' {dmMaster: TDataModule},
  Core.Form.Master in 'Core.Form.Master.pas' {frmMaster},
  Core.Data.Base in 'Core.Data.Base.pas' {dmBase: TDataModule},
  Common.Form.Module in 'Common.Form.Module.pas' {frmModule},
  Common.Data.Search in 'Common.Data.Search.pas' {dmSearch: TDataModule},
  Common.Form.Search in 'Common.Form.Search.pas' {frmSearch},
  Common.Control.CodeLookup in 'Common.Control.CodeLookup.pas' {ctlCodeLookup: TFrame},
  Catalog.Form.Truck in 'Catalog.Form.Truck.pas' {frmTruck},
  Catalog.Data.Truck in 'Catalog.Data.Truck.pas' {dmTruck: TDataModule},
  Catalog.Data.Destination in 'Catalog.Data.Destination.pas' {dmDestination: TDataModule},
  Catalog.Form.Destination in 'Catalog.Form.Destination.pas' {frmDestination},
  Catalog.Data.Driver in 'Catalog.Data.Driver.pas' {dmDriver: TDataModule},
  Catalog.Form.Driver in 'Catalog.Form.Driver.pas' {frmDriver},
  Catalog.Data.Supplier in 'Catalog.Data.Supplier.pas' {dmSupplier: TDataModule},
  Catalog.Form.Supplier in 'Catalog.Form.Supplier.pas' {frmSupplier},
  Module.Data.Batch in 'Module.Data.Batch.pas' {dmBatch: TDataModule},
  Module.Form.Batch in 'Module.Form.Batch.pas' {frmBatch},
  Catalog.Form.Fuel in 'Catalog.Form.Fuel.pas' {frmFuel},
  Catalog.Data.Fuel in 'Catalog.Data.Fuel.pas' {dmFuel: TDataModule},
  Catalog.Data.Provisioner in 'Catalog.Data.Provisioner.pas' {dmProvisioner: TDataModule},
  Catalog.Form.Provisioner in 'Catalog.Form.Provisioner.pas' {frmProvisioner},
  Module.Data.Refuel in 'Module.Data.Refuel.pas' {dmRefuel: TDataModule},
  Module.Form.Refuel in 'Module.Form.Refuel.pas' {frmRefuel},
  Report.Data.Stock in 'Report.Data.Stock.pas' {dmStock: TDataModule},
  Report.Form.Stock in 'Report.Form.Stock.pas' {frmStock},
  ApplicationVersionHelper in 'ApplicationVersionHelper.pas',
  VersionInfo in 'VersionInfo.pas',
  Search.Form.Provisioner in 'Search.Form.Provisioner.pas' {frmProvisionerSearch},
  Search.Form.Destination in 'Search.Form.Destination.pas' {frmDestinationSearch},
  Search.Form.Driver in 'Search.Form.Driver.pas' {frmDriverSearch},
  Search.Form.Fuel in 'Search.Form.Fuel.pas' {frmFuelSearch},
  Search.Form.Product in 'Search.Form.Product.pas' {frmProductSearch},
  Search.Form.Provider in 'Search.Form.Provider.pas' {frmProviderSearch},
  Search.Form.Supplier in 'Search.Form.Supplier.pas' {frmSupplierSearch},
  Search.Form.Truck in 'Search.Form.Truck.pas' {frmTruckSearch},
  Module.Data.Reception in 'Module.Data.Reception.pas' {dmReception: TDataModule},
  Module.Form.Reception in 'Module.Form.Reception.pas' {frmReception};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmGlobal, dmGlobal);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
