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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object navBar: TdxNavBar
    Left = 0
    Top = 0
    Width = 233
    Height = 541
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 14
    OptionsBehavior.Common.AllowSelectLinks = True
    OptionsBehavior.Common.EachGroupHasSelectedLink = True
    OptionsBehavior.NavigationPane.AllowCustomizing = False
    OptionsView.ExplorerBar.ShowSpecialGroup = True
    OptionsView.NavigationPane.ShowActiveGroupCaptionWhenCollapsed = True
    object navCaptures: TdxNavBarGroup
      Caption = 'Capturas'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = mnuSupplier
        end
        item
          Item = mnuDriver
        end
        item
          Item = mnuDestination
        end
        item
          Item = mnuProvisioner
        end
        item
          Item = mnuTruck
        end
        item
          Item = mnuProduct
        end
        item
          Item = mnuFuel
        end
        item
          Item = mnuProvider
        end>
    end
    object navReception: TdxNavBarGroup
      Caption = 'Recepci'#243'n de materia prima'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <
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
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <
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
    object navTransactions: TdxNavBarGroup
      Caption = 'Movimientos'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.AllowMultipleGroupExpansion = False
      OptionsExpansion.Expanded = False
      Links = <
        item
          Item = mnuAccount
        end
        item
          Item = mnuCategory
        end
        item
          Item = mnuClient
        end
        item
          Item = mnuCaterer
        end
        item
          Item = mnuSeller
        end
        item
          Item = mnuOutputs
        end
        item
          Item = mnuInputs
        end
        item
          Item = mnuCondition
        end
        item
          Item = mnuQuotation
        end>
    end
    object navSecurity: TdxNavBarGroup
      Caption = 'Seguridad'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = mnuUsers
        end
        item
          Item = mnuChange
        end
        item
          Item = mnuSession
        end>
    end
    object mnuProduct: TdxNavBarItem
      Action = dmGlobal.actProduct
    end
    object mnuProvider: TdxNavBarItem
      Action = dmGlobal.actProvider
    end
    object mnuReception: TdxNavBarItem
      Action = dmGlobal.actReception
    end
    object mnuTruck: TdxNavBarItem
      Action = dmGlobal.actTruck
    end
    object mnuDestination: TdxNavBarItem
      Action = dmGlobal.actDestination
    end
    object mnuDriver: TdxNavBarItem
      Action = dmGlobal.actDriver
    end
    object mnuSupplier: TdxNavBarItem
      Action = dmGlobal.actSupplier
    end
    object mnuRefuel: TdxNavBarItem
      Action = dmGlobal.actRefuel
    end
    object mnuFuel: TdxNavBarItem
      Action = dmGlobal.actFuel
    end
    object mnuProvisioner: TdxNavBarItem
      Action = dmGlobal.actProvisioner
    end
    object mnuInventory: TdxNavBarItem
      Action = dmGlobal.actInventory
    end
    object mnuStock: TdxNavBarItem
      Action = dmGlobal.actStock
    end
    object mnuBatch: TdxNavBarItem
      Action = dmGlobal.actBatch
    end
    object mnuSession: TdxNavBarItem
      Action = dmGlobal.actSession
    end
    object mnuChange: TdxNavBarItem
      Action = dmGlobal.actChange
    end
    object mnuUsers: TdxNavBarItem
      Action = dmGlobal.actUsers
    end
    object mnuAccount: TdxNavBarItem
      Action = dmGlobal.actAccount
    end
    object mnuCategory: TdxNavBarItem
      Action = dmGlobal.actCategory
    end
    object mnuClient: TdxNavBarItem
      Action = dmGlobal.actClient
    end
    object mnuOutputs: TdxNavBarItem
      Action = dmGlobal.actOutputs
    end
    object mnuInputs: TdxNavBarItem
      Action = dmGlobal.actInputs
    end
    object mnuQuotation: TdxNavBarItem
      Action = dmGlobal.actQuotation
    end
    object mnuCondition: TdxNavBarItem
      Action = dmGlobal.actCondition
    end
    object mnuSeller: TdxNavBarItem
      Action = dmGlobal.actSeller
    end
    object mnuCaterer: TdxNavBarItem
      Action = dmGlobal.actCaterer
    end
  end
  object tabMain: TcxPageControl
    Left = 233
    Top = 0
    Width = 551
    Height = 541
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabInicio
    Properties.CloseButtonMode = cbmEveryTab
    Properties.CustomButtons.Buttons = <>
    OnCanCloseEx = tabMainCanCloseEx
    ClientRectBottom = 539
    ClientRectLeft = 2
    ClientRectRight = 549
    ClientRectTop = 28
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
        Height = 511
        Width = 547
      end
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 541
    Width = 784
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Usuario:'
        Width = 250
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Cuenta:'
        Width = 250
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsXP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
end
