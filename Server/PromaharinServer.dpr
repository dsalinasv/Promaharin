program PromaharinServer;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Server.Resource.Strings in 'Server.Resource.Strings.pas',
  Server.Core.Container in 'Server.Core.Container.pas' {smContainer: TDataModule},
  Server.Common.Global in 'Server.Common.Global.pas' {smGlobal: TDSServerModule},
  Server.Common.Master in 'Server.Common.Master.pas' {smMaster: TDSServerModule},
  Server.Catalog.Product in 'Server.Catalog.Product.pas' {smProduct: TDSServerModule},
  Server.Catalog.Provider in 'Server.Catalog.Provider.pas' {smProvider: TDSServerModule},
  Server.Module.Reception in 'Server.Module.Reception.pas' {smReception: TDSServerModule},
  Server.Catalog.Truck in 'Server.Catalog.Truck.pas' {smTruck: TDSServerModule},
  Server.Catalog.Destination in 'Server.Catalog.Destination.pas' {smDestination: TDSServerModule},
  Server.Catalog.Driver in 'Server.Catalog.Driver.pas' {smDriver: TDSServerModule},
  Server.Catalog.Supplier in 'Server.Catalog.Supplier.pas' {smSupplier: TDSServerModule},
  Server.Module.Refuel in 'Server.Module.Refuel.pas' {smRefuel: TDSServerModule},
  Server.Catalog.Fuel in 'Server.Catalog.Fuel.pas' {smFuel: TDSServerModule},
  Server.Catalog.Provisioner in 'Server.Catalog.Provisioner.pas' {smProvisioner: TDSServerModule},
  Server.Module.Inventory in 'Server.Module.Inventory.pas' {smInventory: TDSServerModule},
  Server.Report.Stock in 'Server.Report.Stock.pas' {smStock: TDSServerModule},
  Server.Module.Batch in 'Server.Module.Batch.pas' {smBatch: TDSServerModule},
  Server.Catalog.Account in 'Server.Catalog.Account.pas' {smAccount: TDSServerModule},
  Server.Catalog.Category in 'Server.Catalog.Category.pas' {smCategory: TDSServerModule},
  Server.Common.Module in 'Server.Common.Module.pas' {smModule: TDSServerModule},
  Server.Common.List in 'Server.Common.List.pas' {smList: TDSServerModule},
  Server.Module.Outputs in 'Server.Module.Outputs.pas' {smOutputs: TDSServerModule},
  Server.Module.Inputs in 'Server.Module.Inputs.pas' {smInputs: TDSServerModule},
  Server.Catalog.Client in 'Server.Catalog.Client.pas' {smClient: TDSServerModule},
  Server.Module.Quotation in 'Server.Module.Quotation.pas' {smQuotation: TDSServerModule},
  Server.Catalog.Condition in 'Server.Catalog.Condition.pas' {smCondition: TDSServerModule},
  Server.Catalog.Seller in 'Server.Catalog.Seller.pas' {smSeller: TDSServerModule},
  Server.Catalog.Caterer in 'Server.Catalog.Caterer.pas' {smCaterer: TDSServerModule},
  Server.Module.Order in 'Server.Module.Order.pas' {smOrder: TDSServerModule};

begin
  try
    RunDSServer;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end
end.

