object FSplashAddCodeBarre: TFSplashAddCodeBarre
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 386
  ClientWidth = 226
  Color = 15722984
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    226
    386)
  PixelsPerInch = 96
  TextHeight = 13
  object OKAddUniteSBtn: TAdvToolButton
    Tag = 2
    Left = 12
    Top = 343
    Width = 187
    Height = 30
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = 7854350
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    ColorDown = 7854350
    ColorHot = clBtnFace
    ColorChecked = clNone
    DropDownSplit = False
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    ShowHint = True
    Spacing = -1
    OnClick = OKAddUniteSBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object AddCBAddCodeBarreSBtn: TAdvToolButton
    Left = 174
    Top = 63
    Width = 26
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    ColorDown = 7854350
    ColorHot = clBtnFace
    ColorChecked = clNone
    DropDownSplit = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 10
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    Shaded = False
    ShowHint = True
    Spacing = -1
    OnClick = AddCBAddCodeBarreSBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object DeleteCBAddCodeBarreSBtn: TAdvToolButton
    Left = 199
    Top = 120
    Width = 26
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    ColorDown = 7854350
    ColorHot = clBtnFace
    ColorChecked = clNone
    DropDownSplit = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 14
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    Shaded = False
    ShowHint = True
    Spacing = -1
    OnClick = DeleteCBAddCodeBarreSBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object NumberCBAddCodeBarreSLbl: TLabel
    Left = 202
    Top = 152
    Width = 20
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10379008
    Font.Height = 17
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RandomCBAddCodeBarreSBtn: TAdvToolButton
    Left = 199
    Top = 63
    Width = 26
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    ColorDown = 7854350
    ColorHot = clBtnFace
    ColorChecked = clNone
    DropDownSplit = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 21
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    Shaded = False
    ShowHint = True
    Spacing = -1
    OnClick = RandomCBAddCodeBarreSBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object DuplicatedCodeBarrelbl: TLabel
    Left = 12
    Top = 47
    Width = 163
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'le code '#226' Barre est existent d'#233'j'#224
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 12
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object MaxCodeBarrelbl: TLabel
    Left = 31
    Top = 90
    Width = 120
    Height = 13
    Caption = 'Vous avez atteint le max 70'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 12
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object NameCodeBarreErrorP: TPanel
    Left = 11
    Top = 62
    Width = 164
    Height = 28
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 5
    Visible = False
    StyleElements = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 226
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    StyleElements = []
    object FormCaptionAddUniteSLbl: TLabel
      Left = 40
      Top = 10
      Width = 151
      Height = 22
      Caption = 'Multi Code '#226' barre'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15722984
      Font.Height = 22
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
  end
  object LineP: TPanel
    Left = 0
    Top = 105
    Width = 241
    Height = 2
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
  end
  object NameAddCodeBarreSEdt: TEdit
    Left = 12
    Top = 63
    Width = 162
    Height = 26
    Alignment = taCenter
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvSpace
    Ctl3D = True
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    StyleElements = [seClient, seBorder]
    OnKeyPress = NameAddCodeBarreSEdtKeyPress
  end
  object Panel2: TPanel
    Left = 0
    Top = 327
    Width = 241
    Height = 2
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 3
    StyleElements = []
  end
  object CodeBarresDBGridEh: TDBGridEh
    AlignWithMargins = True
    Left = 12
    Top = 120
    Width = 187
    Height = 197
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    AutoFitColWidths = True
    DataSource = CodeBarreDataS
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 26
    Font.Name = 'Segoe UI'
    Font.Style = []
    HorzScrollBar.Tracking = False
    HorzScrollBar.ExtraPanel.NavigatorButtons = []
    HorzScrollBar.ExtraPanel.VisibleItems = []
    HorzScrollBar.SmoothStep = False
    IndicatorOptions = []
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    ReadOnly = True
    RowHeight = 4
    RowLines = 1
    TabOrder = 4
    TreeViewParams.ShowTreeLines = False
    VertScrollBar.SmoothStep = True
    VertScrollBar.Width = 10
    OnKeyDown = CodeBarresDBGridEhKeyDown
    OnKeyPress = CodeBarresDBGridEhKeyPress
    Columns = <
      item
        Alignment = taCenter
        CaseInsensitiveTextSearch = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'nom_cb'
        Footers = <>
        Layout = tlCenter
        MaxWidth = 184
        MinWidth = 184
        Title.Alignment = taCenter
        Title.Caption = 'Les Codes '#226' barres'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 10379008
        Title.Font.Height = 20
        Title.Font.Name = 'Roboto'
        Title.Font.Style = []
        Width = 184
        WordWrap = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object CodeBarreDataS: TDataSource
    DataSet = MainForm.CodebarresTable
    Left = 164
    Top = 282
  end
end
