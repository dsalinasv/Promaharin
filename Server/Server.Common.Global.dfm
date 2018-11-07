object smGlobal: TsmGlobal
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 150
  Width = 215
  object qryGlobal: TFDQuery
    Left = 24
    Top = 16
  end
  object dspUser: TDataSetProvider
    DataSet = qryGlobal
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 72
  end
end
