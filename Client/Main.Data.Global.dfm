object dmGlobal: TdmGlobal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 288
  object cntPromaharin: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'HostName=localhost'
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'Port=80'
      'Filters={}'
      'CommunicationProtocol=http'
      'DSAuthenticationPassword=auofdsbcs'
      'DSAuthenticationUser=promaharin')
    Left = 24
    Top = 16
  end
  object dspGlobal: TDSProviderConnection
    ServerClassName = 'TsmGlobal'
    SQLConnection = cntPromaharin
    Left = 88
    Top = 16
  end
  object sknController: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013White'
    Left = 160
    Top = 16
  end
  object ssmCheckFolio: TSqlServerMethod
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'iFolio'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'sTable'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = cntPromaharin
    ServerMethodName = 'TsmGlobal.CheckFolio'
    Left = 88
    Top = 64
  end
  object ssmCheckCode: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'sCode'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'sTable'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = cntPromaharin
    ServerMethodName = 'TsmGlobal.CheckCode'
    Left = 24
    Top = 64
  end
  object UCMidasConn: TUCMidasConn
    DBMS = dbmsFirebird
    Connection = dspGlobal
    ProviderName = 'dspUser'
    Left = 232
    Top = 64
  end
  object ActionManager: TActionManager
    Left = 232
    Top = 16
    StyleName = 'Platform Default'
    object actProduct: TAction
      Category = 'Capturas'
      Caption = 'Captura de productos'
      OnExecute = actExecute
    end
    object actProvider: TAction
      Category = 'Capturas'
      Caption = 'Captura de proveedores de materia prima'
      OnExecute = actExecute
    end
    object actReception: TAction
      Category = 'Recepci'#243'n de materia prima'
      Caption = 'Recepci'#243'n de materia prima'
      OnExecute = actExecute
    end
    object actTruck: TAction
      Category = 'Capturas'
      Caption = 'Captura de equipos/unidades'
      OnExecute = actExecute
    end
    object actDestination: TAction
      Category = 'Capturas'
      Caption = 'Captura de destinos'
      OnExecute = actExecute
    end
    object actDriver: TAction
      Category = 'Capturas'
      Caption = 'Captura de operadores'
      OnExecute = actExecute
    end
    object actSupplier: TAction
      Category = 'Capturas'
      Caption = 'Captura de surtidores'
      OnExecute = actExecute
    end
    object actRefuel: TAction
      Category = 'Recarga de combustible'
      Caption = 'Recarga de combustible'
      OnExecute = actExecute
    end
    object actFuel: TAction
      Category = 'Capturas'
      Caption = 'Captura de combustibles'
      OnExecute = actExecute
    end
    object actProvisioner: TAction
      Category = 'Capturas'
      Caption = 'Captura de proveedores de combustibles'
      OnExecute = actExecute
    end
    object actInventory: TAction
      Category = 'Capturas'
      Caption = 'Captura de inventarios'
      OnExecute = actExecute
    end
    object actStock: TAction
      Category = 'Recarga de combustible'
      Caption = 'Saldo de inventario'
      OnExecute = actExecute
    end
    object actBatch: TAction
      Category = 'Recepci'#243'n de materia prima'
      Caption = 'Gesti'#243'n de lotes completos'
      OnExecute = actExecute
    end
    object actSession: TAction
      Category = 'Seguridad'
      Caption = 'Cerrar sesi'#243'n'
    end
    object actChange: TAction
      Category = 'Seguridad'
      Caption = 'Cambiar clave'
    end
    object actUsers: TAction
      Category = 'Seguridad'
      Caption = 'Usuarios'
    end
    object actAccount: TAction
      Category = 'Capturas'
      Caption = 'Captura de cuentas'
      OnExecute = actExecute
    end
    object actCategory: TAction
      Category = 'Capturas'
      Caption = 'Captura de categorias'
      OnExecute = actExecute
    end
    object actOutputs: TAction
      Category = 'Movimientos'
      Caption = 'Egresos'
      OnExecute = actOutputsExecute
    end
    object actInputs: TAction
      Category = 'Movimientos'
      Caption = 'Ingresos'
      OnExecute = actInputsExecute
    end
    object actClient: TAction
      Category = 'Capturas'
      Caption = 'Captura de clientes'
      OnExecute = actExecute
    end
    object actCondition: TAction
      Category = 'Movimientos'
      Caption = 'Condiciones'
      OnExecute = actExecute
    end
    object actQuotation: TAction
      Category = 'Movimientos'
      Caption = 'Cotizaciones'
      OnExecute = actExecute
    end
    object actSeller: TAction
      Category = 'Capturas'
      Caption = 'Captura de vendedores'
      OnExecute = actExecute
    end
    object actCaterer: TAction
      Category = 'Capturas'
      Caption = 'Captura de proveedores'
      OnExecute = actExecute
    end
  end
  object UserControl: TUserControl
    AdditionalAttributesExplanations = <>
    AllowableAdditionalObjectsCollection = <
      item
        ContainerName = 'Gastos'
        ObjectName = 'Cuentas'
        Description = 'Acceder todas las cuentas'
        GroupName = 'Gastos'
        OCN = 'TCustomAction'
      end>
    AllowableMainObjectsContainer.ActionManager = ActionManager
    AllowableMainObjectsContainer.HideNotAllowedObjects = True
    AllowableMainObjectsContainer.RequiredActivators.UsersManagerActivator.Action = actUsers
    AllowableMainObjectsContainer.RequiredActivators.ChangePasswordActivator.Action = actChange
    AllowableMainObjectsContainer.RequiredActivators.LogoffActivator.Action = actSession
    ApplicationId = 'Promaharin'
    ApplicationName = 'Promaharin'
    CryptographicOptions.AdditionalHashes = <>
    MainAdminUser.Name = 'Administrador'
    MainAdminUser.UserName = 'admin'
    MainAdminUser.Password = 'auofdsbcs'
    MainAdminUser.Email = 'administracion@promaharin.com'
    LoggingSystem.GeneralLogActive = True
    LoggingSystem.UsersLogActive = True
    Tables.UsersTable.TableName = 'UC_USERS'
    Tables.UsersTable.FieldId = 'ID'
    Tables.UsersTable.FieldRecordChecksum = 'RECORDCHECKSUM'
    Tables.UsersTable.FieldName = 'NAME'
    Tables.UsersTable.FieldUserName = 'USERNAME'
    Tables.UsersTable.FieldPassword = 'PASSWORD'
    Tables.UsersTable.FieldEmail = 'EMAIL'
    Tables.UsersTable.FieldRecordType = 'RECORDTYPE'
    Tables.UsersTable.FieldProfileId = 'PROFILEID'
    Tables.UsersTable.FieldPasswordExpirationDate = 'PASSWORDEXPIRATIONDATE'
    Tables.UsersTable.FieldPasswordExpirationCount = 'PASSWORDEXPIRATIONCOUNT'
    Tables.UsersTable.FieldPasswordValidity = 'PASSWORDVALIDITY'
    Tables.UsersTable.FieldAdditionalAttributes = 'ADDITIONALATTRIBUTES'
    Tables.UsersTable.FieldInactive = 'INACTIVE'
    Tables.UsersTable.FieldExternalId = 'EXTERNALID'
    Tables.RightsTable.TableName = 'UC_RIGHTS'
    Tables.RightsTable.FieldId = 'ID'
    Tables.RightsTable.FieldRecordChecksum = 'RECORDCHECKSUM'
    Tables.RightsTable.FieldUserId = 'USERID'
    Tables.RightsTable.FieldApplicationId = 'APPLICATIONID'
    Tables.RightsTable.FieldComponentName = 'COMPONENTNAME'
    Tables.RightsTable.FieldContainerName = 'CONTAINERNAME'
    Tables.UsersLoggedTable.TableName = 'UC_USERSLOGGED'
    Tables.UsersLoggedTable.FieldId = 'ID'
    Tables.UsersLoggedTable.FieldLogonId = 'LOGONID'
    Tables.UsersLoggedTable.FieldUserId = 'USERID'
    Tables.UsersLoggedTable.FieldApplicationId = 'APPLICATIONID'
    Tables.UsersLoggedTable.FieldMachineName = 'MACHINENAME'
    Tables.UsersLoggedTable.FieldLogonDate = 'LOGONDATE'
    Tables.LogTable.TableName = 'UC_LOG'
    Tables.LogTable.FieldId = 'ID'
    Tables.LogTable.FieldApplicationId = 'APPLICATIONID'
    Tables.LogTable.FieldUserId = 'USERID'
    Tables.LogTable.FieldMessage = 'MESSAGE'
    Tables.LogTable.FieldLogDate = 'LOGDATE'
    Tables.LogTable.FieldLogLevel = 'LOGLEVEL'
    Tables.MessengerTable.TableName = 'UC_MESSENGER'
    Tables.MessengerTable.FieldId = 'ID'
    Tables.MessengerTable.FieldUserIdFrom = 'USERIDFROM'
    Tables.MessengerTable.FieldUserIdTo = 'USERIDTO'
    Tables.MessengerTable.FieldSubject = 'SUBJECT'
    Tables.MessengerTable.FieldMessage = 'MESSAGE'
    Tables.MessengerTable.FieldSendDate = 'SENDDATE'
    Tables.MessengerTable.FieldReceiveDate = 'RECEIVEDATE'
    Tables.MessengerTable.FieldReturnReceipt = 'RETURNRECEIPT'
    Tables.MessengerTable.FieldImportant = 'IMPORTANT'
    Tables.MonitorTable.TableName = 'UC_MONITOR'
    Tables.MonitorTable.FieldId = 'ID'
    Tables.MonitorTable.FieldApplicationId = 'APPLICATIONID'
    Tables.MonitorTable.FieldUserId = 'USERID'
    Tables.MonitorTable.FieldEventDate = 'EVENTDATE'
    Tables.MonitorTable.FieldFormName = 'FORMNAME'
    Tables.MonitorTable.FieldFormCaption = 'FORMCAPTION'
    Tables.MonitorTable.FieldEvent = 'EVENT'
    Tables.MonitorTable.FieldData = 'DATA'
    Tables.MonitorTable.FieldDataSetName = 'DATASETNAME'
    Tables.ParametersTable.TableName = 'UC_PARAMETERS'
    Tables.ParametersTable.FieldId = 'ID'
    Tables.ParametersTable.FieldParamName = 'PARAMNAME'
    Tables.ParametersTable.FieldParamType = 'PARAMTYPE'
    Tables.ParametersTable.FieldParamValue = 'PARAMVALUE'
    DataConnector = UCMidasConn
    OnLoginSuccess = UserControlLoginSuccess
    Left = 160
    Top = 64
  end
end
