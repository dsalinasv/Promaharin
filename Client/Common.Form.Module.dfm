inherited frmModule: TfrmModule
  Caption = 'frmModule'
  PixelsPerInch = 96
  TextHeight = 13
  object pcList: TcxPageControl [0]
    Left = 0
    Top = 58
    Width = 784
    Height = 503
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabData
    Properties.CustomButtons.Buttons = <>
    ExplicitTop = 42
    ExplicitHeight = 519
    ClientRectBottom = 499
    ClientRectLeft = 4
    ClientRectRight = 780
    ClientRectTop = 24
    object tabData: TcxTabSheet
      Caption = 'Datos'
      ImageIndex = 1
      ExplicitHeight = 491
      object lcData: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 776
        Height = 475
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        ExplicitHeight = 491
        object lcDataGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
    end
    object tabList: TcxTabSheet
      Caption = 'Listado'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdList: TcxGrid
        Left = 0
        Top = 0
        Width = 780
        Height = 491
        Align = alClient
        TabOrder = 0
        object grdListView: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Enabled = False
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Enabled = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Enabled = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Enabled = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          OnCellDblClick = grdListViewCellDblClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
        end
        object grdListLevel: TcxGridLevel
          GridView = grdListView
        end
      end
    end
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
  inherited barList: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      58
      0)
    inherited btnClose: TdxBarLargeButton
      ShowCaption = True
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Guardar'
      Category = 0
      Visible = ivAlways
      ShortCut = 114
      LargeImageIndex = 1
      ShowCaption = False
    end
  end
end
