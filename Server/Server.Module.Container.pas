unit Server.Module.Container;

interface

uses System.SysUtils, System.Classes, Datasnap.DSReflect,
    Datasnap.DSHTTPCommon, Datasnap.DSHTTP, Datasnap.DSSession,
  Datasnap.DSServer, Datasnap.DSCommonServer, System.Generics.Collections,
  IPPeerServer, IPPeerAPI, Datasnap.DSAuth, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.ConsoleUI.Wait, Data.DB,
  FireDAC.Comp.Client;

type
  TsmContainer = class(TDataModule)
    DSServer: TDSServer;
    DSHTTPService: TDSHTTPService;
    FDConnection: TFDConnection;
    procedure dscGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerDisconnect(DSConnectEventObject: TDSConnectEventObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    ListofConnection : TDictionary<Integer, TFDConnection>;
  public
    function GetConnection : TFDConnection;
  end;
  TSimpleServerClass = class(TDSServerClass)
  private
    FPersistentClass: TPersistentClass;
  public
    constructor Create(AClass: TPersistentClass);
  published
    property PersistentClass: TPersistentClass read FPersistentClass;
  end;

var
  smContainer: TsmContainer;

procedure RunDSServer;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

uses
  Datasnap.DSNames,
  Datasnap.DSServerResStrs,
  Server.Resource.Strings,
  Server.Module.Global,
  Server.Module.General,
  Server.Module.Product,
  Server.Module.Provider,
  Server.Module.Provisioner,
  Server.Module.Reception,
  Server.Module.Truck,
  Server.Module.Destination,
  Server.Module.Driver,
  Server.Module.Supplier,
  Server.Module.Fuel,
  Server.Module.Refuel,
  Server.Module.Inventory,
  Server.Module.Stock,
  Server.Module.Batch;

procedure RegisterServerClasses;
begin
  TSimpleServerClass.Create(TsmGlobal);
  TSimpleServerClass.Create(TsmProduct);
  TSimpleServerClass.Create(TsmProvider);
  TSimpleServerClass.Create(TsmProvisioner);
  TSimpleServerClass.Create(TsmReception);
  TSimpleServerClass.Create(TsmTruck);
  TSimpleServerClass.Create(TsmDestination);
  TSimpleServerClass.Create(TsmDriver);
  TSimpleServerClass.Create(TsmSupplier);
  TSimpleServerClass.Create(TsmFuel);
  TSimpleServerClass.Create(TsmRefuel);
  TSimpleServerClass.Create(TsmInventory);
  TSimpleServerClass.Create(TsmStock);
  TSimpleServerClass.Create(TsmBatch);
end;

procedure TsmContainer.DataModuleCreate(Sender: TObject);
begin
  ListofConnection := TDictionary<Integer, TFDConnection>.Create;
end;

procedure TsmContainer.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(ListofConnection);
end;

procedure TsmContainer.dscGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass:= (DSServerClass as TSimpleServerClass).PersistentClass;
end;

function BindPort(Aport: Integer): Boolean;
var
  LTestServer: IIPTestServer;
begin
  Result := True;
  try
    LTestServer := PeerFactory.CreatePeer('', IIPTestServer) as IIPTestServer;
    LTestServer.TestOpenPort(APort, nil);
  except
    Result := False;
  end;
end;

function CheckPort(Aport: Integer): Integer;
begin
  if BindPort(Aport) then
    Result := Aport
  else
    Result := 0;
end;

procedure SetPort(const Aserver: TsmContainer; const APort: string; AProtocol: DSProtocol);
var
  IsPortSet: Boolean;
begin
  IsPortSet := True;
  if not (AServer.DSServer.Started) then
  begin
    if CheckPort(APort.ToInteger) > 0 then
    begin
      case AProtocol of
        DSProtocol.HTTP: AServer.DSHTTPService.HttpPort := APort.ToInteger;
          
      else
        IsPortSet := False
      end;
      if IsPortSet then
        Writeln(Format(sPortSet, [APort]))
      else
        Writeln(Format(sPortNotSet, [APort]));
    end
    else
      Writeln(Format(sPortInUse, [Aport]));
  end
  else
    Writeln(sServerRunning);
  Write(cArrow);
end;

procedure StartServer(const AServer: TsmContainer);
var
  LStart: Boolean;
begin
  LStart := True;
  if not (AServer.DSServer.Started) then
  begin
    if CheckPort(AServer.DSHTTPService.HttpPort) <= 0 then
    begin
      Writeln(Format(sPortInUse, [AServer.DSHTTPService.HttpPort.ToString]));
      LStart := False;
    end;
  end
  else
    Writeln(sServerRunning);

  if LStart then
  begin
    Writeln(sStartingServer);
    AServer.DSServer.Start;
  end;
  Write(cArrow);
end;

procedure StopServer(const AServer: TsmContainer);
begin
  if AServer.DSServer.Started  then
  begin
    Writeln(sStoppingServer);
    AServer.DSServer.Stop;
    Writeln(sServerStopped);
  end
  else
    Writeln(sServerNotRunning);
  Write(cArrow);
end;

procedure  WriteCommands;
begin
  Writeln(sCommands);
  Write(cArrow);
end;

procedure  WriteStatus(const AServer: TsmContainer);
begin
  Writeln(sActive + AServer.DSServer.Started.ToString(TUseBoolStrs.True));
  Writeln(sHTTPPort + AServer.DSHTTPService.HttpPort.ToString);
    
  Write(cArrow);
end;

procedure RunDSServer;
var
  LModule: TsmContainer;
  LResponse: string;
begin
  LModule := smContainer;
  RegisterServerClasses;
  StartServer(LModule);
    try
      if LModule.DSServer.Started then
        Writeln(sServerIsRunning);
      WriteCommands;
      while True do
      begin
        Readln(LResponse);
        LResponse := LowerCase(LResponse);
        if sametext(LResponse, cCommandStart) then
          StartServer(LModule)
        else if sametext(LResponse, cCommandStatus) then
          WriteStatus(LModule)
        else if sametext(LResponse, cCommandStop) then
          StopServer(LModule)
        else if LResponse.StartsWith(cCommandSetHTTPPort) then
          SetPort(LModule, LResponse.Replace(cCommandSetHTTPPort, '').Trim, DSProtocol.HTTP)
        else if sametext(LResponse, cCommandHelp) then
          WriteCommands
        else if sametext(LResponse, cCommandExit) then
          if LModule.DSServer.Started then
          begin
            StopServer(LModule);
            break
          end
          else
            break
        else
        begin
          Writeln(sInvalidCommand);
          Write(cArrow);
        end;
      end;
  finally 
    LModule.Free;
  end;
end;

procedure TsmContainer.DSServerDisconnect(
  DSConnectEventObject: TDSConnectEventObject);
begin
  if GetConnection <> nil then
    GetConnection.Close;
end;

function TsmContainer.GetConnection: TFDConnection;
var
  dbconn : TFDConnection;
begin
  if ListofConnection.ContainsKey(TDSSessionManager.GetThreadSession.Id) then
     Result := ListofConnection[TDSSessionManager.GetThreadSession.Id]
  else
  begin
    dbconn := TFDConnection.Create(nil);
    dbconn.Params.Clear;
    dbconn.ConnectionDefName := 'Promaharin';

    ListofConnection.Add(TDSSessionManager.GetThreadSession.Id, dbconn);
    Result := dbconn;
  end;
end;

constructor TSimpleServerClass.Create(AClass: TPersistentClass);
begin
  inherited Create(smContainer);
  FPersistentClass := AClass;
  Self.Server := smContainer.DSServer;
  Self.LifeCycle := TDSLifeCycle.Invocation;
  Self.OnGetClass:= smContainer.dscGetClass;
end;

initialization
  smContainer:= TsmContainer.Create(nil);

end.

