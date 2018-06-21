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
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
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
    OptionsBehavior.NavigationPane.AllowCustomizing = False
    OptionsView.NavigationPane.ShowOverflowPanel = False
    object navRecepcion: TdxNavBarGroup
      Caption = 'Recepci'#243'n de materia prima'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = mnuProductos
        end
        item
          Item = mnuProveedores
        end
        item
          Item = mnuRecepcion
        end>
    end
    object navBarGroup1: TdxNavBarGroup
      Caption = 'M'#243'dulo 1'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = navBarItem1
        end>
    end
    object navBarGroup2: TdxNavBarGroup
      Caption = 'M'#243'dulo 2'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = navBarItem2
        end>
    end
    object mnuProductos: TdxNavBarItem
      Action = actProduct
    end
    object mnuProveedores: TdxNavBarItem
      Action = actProvider
    end
    object mnuRecepcion: TdxNavBarItem
      Action = actReception
    end
    object navBarItem1: TdxNavBarItem
      Caption = 'Opci'#243'n 1'
    end
    object navBarItem2: TdxNavBarItem
      Caption = 'Opci'#243'n 2'
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
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 583
      ExplicitHeight = 533
      object imgLogo: TcxImage
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebsNone
        StyleHot.BorderStyle = ebsUltraFlat
        TabOrder = 0
        ExplicitWidth = 583
        ExplicitHeight = 533
        Height = 531
        Width = 587
      end
    end
  end
  object actList: TActionList
    Left = 224
    Top = 8
    object actProduct: TAction
      Caption = 'Cat'#225'logo de productos'
      OnExecute = actExecute
    end
    object actProvider: TAction
      Caption = 'Cat'#225'logo de proveedores'
      OnExecute = actExecute
    end
    object actReception: TAction
      Caption = 'Recepci'#243'n de materia prima'
      OnExecute = actExecute
    end
  end
end
