program PromaharinServer;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Server.Resource.Strings in 'Server.Resource.Strings.pas',
  Server.Module.Container in 'Server.Module.Container.pas' {smContainer: TDataModule},
  Server.Module.Global in 'Server.Module.Global.pas' {smGlobal: TDSServerModule},
  Server.Module.General in 'Server.Module.General.pas' {smGeneral: TDSServerModule},
  Server.Module.Product in 'Server.Module.Product.pas' {smProduct: TDSServerModule},
  Server.Module.Provider in 'Server.Module.Provider.pas' {smProvider: TDSServerModule},
  Server.Module.Reception in 'Server.Module.Reception.pas' {smReception: TDSServerModule},
  Server.Module.Truck in 'Server.Module.Truck.pas' {smTruck: TDSServerModule},
  Server.Module.Destination in 'Server.Module.Destination.pas' {smDestination: TDSServerModule},
  Server.Module.Driver in 'Server.Module.Driver.pas' {smDriver: TDSServerModule},
  Server.Module.Supplier in 'Server.Module.Supplier.pas' {smSupplier: TDSServerModule},
  Server.Module.Refuel in 'Server.Module.Refuel.pas' {smRefuel: TDSServerModule},
  Server.Module.Fuel in 'Server.Module.Fuel.pas' {smFuel: TDSServerModule},
  Server.Module.Provisioner in 'Server.Module.Provisioner.pas' {smProvisioner: TDSServerModule},
  Server.Module.Inventory in 'Server.Module.Inventory.pas' {smInventory: TDSServerModule},
  Server.Module.Stock in 'Server.Module.Stock.pas' {smStock: TDSServerModule},
  Server.Module.Batch in 'Server.Module.Batch.pas' {smBatch: TDSServerModule};

begin
  try
    RunDSServer;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end
end.

