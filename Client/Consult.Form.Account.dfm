inherited frmAccountConsult: TfrmAccountConsult
  BorderStyle = bsDialog
  Caption = 'Selecciona la cuenta'
  ClientHeight = 361
  ClientWidth = 305
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 311
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  object btnOk: TcxButton
    Left = 91
    Top = 321
    Width = 100
    Height = 25
    Caption = 'Aceptar'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 0
    TabStop = False
  end
  object btnCancel: TcxButton
    Left = 197
    Top = 321
    Width = 100
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 1
    TabStop = False
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 8
    Top = 8
    Width = 289
    Height = 303
    KeyField = 'IDACCOUNT'
    ListField = 'NAME'
    ListSource = dsAccount
    TabOrder = 2
    OnClick = DBLookupListBox1Click
  end
  object dsAccount: TDataSource
    DataSet = dmAccount.cdsMaster
    Left = 16
    Top = 16
  end
end
