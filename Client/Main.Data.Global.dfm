object dmGlobal: TdmGlobal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
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
      'CommunicationProtocol=http')
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
end
