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
  Server.Module.Reception in 'Server.Module.Reception.pas' {smReception: TDSServerModule};

begin
  try
    RunDSServer;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end
end.

