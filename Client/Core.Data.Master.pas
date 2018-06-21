unit Core.Data.Master;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Core.Data.Base;

type
  TdmMaster = class(TdmBase)
    dspMaster: TDSProviderConnection;
    cdsMaster: TClientDataSet;
    procedure cdsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPost(DataSet: TDataSet);
  private
    procedure AssignEvents;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RecError, Main.Data.Global;

{$R *.dfm}

procedure TdmMaster.cdsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action:= HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TdmMaster.DataModuleCreate(Sender: TObject);
begin
  inherited;
  AssignEvents;
end;

procedure TdmMaster.AssignEvents;
var
  i: integer;
begin
  for i:= 0 to Pred(ComponentCount) do
    if Components[i] is TClientDataset then
      with (Components[i] as TClientDataSet) do
      begin
        OnNewRecord:= cdsNewRecord;
        AfterPost:= cdsPost;
        AfterDelete:= cdsPost;
        OnReconcileError:= cdsReconcileError;
        Open;
      end;
end;

procedure TdmMaster.cdsPost(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).ApplyUpdates(0);
end;

procedure TdmMaster.cdsNewRecord(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).FieldByName('ID' + StringReplace(
    (DataSet as TClientDataSet).ProviderName, 'dsp', EmptyStr, [])).AsString:=
    dmGlobal.GetGuid;
end;

end.
