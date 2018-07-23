object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Promaharin'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object navBar: TdxNavBar
    Left = 0
    Top = 0
    Width = 193
    Height = 561
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    ViewReal = 15
    OptionsBehavior.Common.AllowSelectLinks = True
    OptionsBehavior.Common.EachGroupHasSelectedLink = True
    OptionsBehavior.NavigationPane.AllowCustomizing = False
    OptionsView.NavigationPane.ShowOverflowPanel = False
    object navReception: TdxNavBarGroup
      Caption = 'Recepci'#243'n de materia prima'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = mnuProduct
        end
        item
          Item = mnuProvider
        end
        item
          Item = mnuReception
        end
        item
          Item = mnuBatch
        end>
    end
    object navRefuel: TdxNavBarGroup
      Caption = 'Recarga de combustible'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = mnuFuel
        end
        item
          Item = mnuTruck
        end
        item
          Item = mnuDestination
        end
        item
          Item = mnuDriver
        end
        item
          Item = mnuSupplier
        end
        item
          Item = mnuProvisioner
        end
        item
          Item = mnuRefuel
        end
        item
          Item = mnuInventory
        end
        item
          Item = mnuStock
        end>
    end
    object navExpense: TdxNavBarGroup
      Caption = 'Gastos'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <>
    end
    object mnuProduct: TdxNavBarItem
      Action = actProduct
    end
    object mnuProvider: TdxNavBarItem
      Action = actProvider
    end
    object mnuReception: TdxNavBarItem
      Action = actReception
    end
    object mnuTruck: TdxNavBarItem
      Action = actTruck
    end
    object mnuDestination: TdxNavBarItem
      Action = actDestination
    end
    object mnuDriver: TdxNavBarItem
      Action = actDriver
    end
    object mnuSupplier: TdxNavBarItem
      Action = actSupplier
    end
    object mnuRefuel: TdxNavBarItem
      Action = actRefuel
    end
    object mnuFuel: TdxNavBarItem
      Action = actFuel
    end
    object mnuProvisioner: TdxNavBarItem
      Action = actProvisioner
    end
    object mnuInventory: TdxNavBarItem
      Action = actInventory
    end
    object mnuStock: TdxNavBarItem
      Action = actStock
    end
    object mnuBatch: TdxNavBarItem
      Action = actBatch
    end
  end
  object tabMain: TcxPageControl
    Left = 193
    Top = 0
    Width = 591
    Height = 561
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabInicio
    Properties.CloseButtonMode = cbmEveryTab
    Properties.CustomButtons.Buttons = <>
    Properties.TabPosition = tpBottom
    OnCanCloseEx = tabMainCanCloseEx
    ClientRectBottom = 533
    ClientRectLeft = 2
    ClientRectRight = 589
    ClientRectTop = 2
    object tabInicio: TcxTabSheet
      Caption = 'Inicio'
      ImageIndex = 0
      object imgLogo: TcxImage
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        StyleHot.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 531
        Width = 587
      end
    end
  end
  object actList: TActionList
    Left = 224
    Top = 8
    object actProduct: TAction
      Category = 'Reception'
      Caption = 'Captura de productos'
      OnExecute = actExecute
    end
    object actProvider: TAction
      Category = 'Reception'
      Caption = 'Captura de proveedores'
      OnExecute = actExecute
    end
    object actReception: TAction
      Category = 'Reception'
      Caption = 'Recepci'#243'n de materia prima'
      OnExecute = actExecute
    end
    object actTruck: TAction
      Category = 'Refuel'
      Caption = 'Captura de equipos/unidades'
      OnExecute = actExecute
    end
    object actDestination: TAction
      Category = 'Refuel'
      Caption = 'Captura de destinos'
      OnExecute = actExecute
    end
    object actDriver: TAction
      Category = 'Refuel'
      Caption = 'Captura de operadores'
      OnExecute = actExecute
    end
    object actSupplier: TAction
      Category = 'Refuel'
      Caption = 'Captura de surtidores'
      OnExecute = actExecute
    end
    object actRefuel: TAction
      Category = 'Refuel'
      Caption = 'Recarga de combustible'
      OnExecute = actExecute
    end
    object actFuel: TAction
      Category = 'Refuel'
      Caption = 'Captura de combustibles'
      OnExecute = actExecute
    end
    object actProvisioner: TAction
      Category = 'Refuel'
      Caption = 'Captura de proveedores'
      OnExecute = actExecute
    end
    object actInventory: TAction
      Category = 'Refuel'
      Caption = 'Captura de inventarios'
      OnExecute = actExecute
    end
    object actStock: TAction
      Category = 'Refuel'
      Caption = 'Saldo de inventario'
      OnExecute = actExecute
    end
    object actBatch: TAction
      Category = 'Reception'
      Caption = 'Gesti'#243'n de lotes completos'
      OnExecute = actExecute
    end
  end
end
