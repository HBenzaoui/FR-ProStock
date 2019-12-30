object ModePaieListF: TModePaieListF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 488
  ClientWidth = 326
  Color = 15527148
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    326
    488)
  PixelsPerInch = 96
  TextHeight = 13
  object AdvToolButton1: TAdvToolButton
    Left = 8
    Top = 61
    Width = 100
    Height = 30
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = 7854350
    BorderDownColor = 7854350
    BorderHotColor = 4666873
    Color = 15722984
    ColorDown = 7854350
    ColorHot = 15722984
    ColorChecked = clNone
    DropDownSplit = False
    Caption = 'Nouveau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 4
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Shaded = False
    ShowHint = True
    Spacing = -1
    OnClick = AdvToolButton1Click
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object AdvToolButton2: TAdvToolButton
    Left = 112
    Top = 61
    Width = 100
    Height = 30
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = 7854350
    BorderDownColor = 7854350
    BorderHotColor = 4666873
    Color = 15722984
    ColorDown = 7854350
    ColorHot = 15722984
    ColorChecked = clNone
    DropDownSplit = False
    Caption = 'Modifier'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 5
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Shaded = False
    ShowHint = True
    Spacing = -1
    OnClick = AdvToolButton2Click
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object AdvToolButton3: TAdvToolButton
    Left = 218
    Top = 61
    Width = 100
    Height = 30
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = 7854350
    BorderDownColor = 7854350
    BorderHotColor = 4666873
    Color = 15722984
    ColorDown = 7854350
    ColorHot = 15722984
    ColorChecked = clNone
    DropDownSplit = False
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 6
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Shaded = False
    ShowHint = True
    Spacing = -2
    OnClick = AdvToolButton3Click
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object Label1: TLabel
    Left = 8
    Top = 101
    Width = 43
    Height = 18
    Caption = 'Mode:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object CodeBarresDBGridEh: TDBGridEh
    AlignWithMargins = True
    Left = 8
    Top = 129
    Width = 310
    Height = 296
    Anchors = [akLeft, akTop, akRight]
    AutoFitColWidths = True
    DataSource = ModePaieListDataS
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Segoe UI'
    Font.Style = []
    HorzScrollBar.Tracking = False
    HorzScrollBar.ExtraPanel.NavigatorButtons = []
    HorzScrollBar.ExtraPanel.VisibleItems = []
    HorzScrollBar.VisibleMode = sbNeverShowEh
    IndicatorOptions = []
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    ReadOnly = True
    RowHeight = 4
    RowLines = 1
    TabOrder = 0
    TreeViewParams.ShowTreeLines = False
    VertScrollBar.SmoothStep = True
    VertScrollBar.Width = 10
    OnDblClick = CodeBarresDBGridEhDblClick
    OnKeyDown = CodeBarresDBGridEhKeyDown
    OnKeyPress = CodeBarresDBGridEhKeyPress
    Columns = <
      item
        Alignment = taCenter
        CaseInsensitiveTextSearch = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nom_mdpai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Caption = '                     Mode de Paiement'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 10379008
        Title.Font.Height = 20
        Title.Font.Name = 'Roboto'
        Title.Font.Style = []
        Width = 260
        WordWrap = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_mdpai'
        Footers = <>
        ImageList = MainForm.GridIconsMP20
        KeyList.Strings = (
          '1'
          '2'
          '3'
          '4')
        Title.Caption = ' '
        Width = 36
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 326
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Caption = 'Les Modes de Paiement'
    Color = 4207405
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15722984
    Font.Height = 22
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    StyleElements = []
  end
  object BottomP: TPanel
    Left = 0
    Top = 434
    Width = 326
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    Color = 4207405
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 2
    StyleElements = []
    object OKAddUniteSBtn: TAdvToolButton
      Tag = 2
      Left = 46
      Top = 12
      Width = 233
      Height = 30
      Cursor = crHandPoint
      AutoThemeAdapt = False
      BorderColor = 7854350
      BorderDownColor = 7854350
      BorderHotColor = 15970832
      Color = 7854350
      ColorTo = 7854350
      ColorDown = 7854350
      ColorDownTo = 7854350
      ColorHot = 8453888
      ColorHotTo = 8453888
      ColorChecked = clNone
      DropDownSplit = False
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 20
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      ShowHint = True
      Spacing = -1
      OnClick = OKAddUniteSBtnClick
      Version = '1.6.2.0'
      TMSStyle = 0
    end
  end
  object ResearchModePaiEdt: TSearchBox
    Left = 57
    Top = 97
    Width = 261
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = ResearchModePaiEdtChange
  end
  object ModePaieListDataS: TDataSource
    DataSet = MainForm.Mode_paiementTable
    Left = 240
    Top = 340
  end
end
