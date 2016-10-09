object FSplashAddUnite: TFSplashAddUnite
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FSplashAddUnite'
  ClientHeight = 147
  ClientWidth = 313
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
    313
    147)
  PixelsPerInch = 96
  TextHeight = 13
  object NameAddUniteSLbl: TLabel
    Left = 58
    Top = 66
    Width = 42
    Height = 18
    Caption = 'Unite:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object OKAddUniteSBtn: TAdvToolButton
    Tag = 2
    Left = 44
    Top = 111
    Width = 100
    Height = 30
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    AutoThemeAdapt = False
    BorderColor = 7854350
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    ColorDown = 7854350
    ColorHot = clBtnFace
    ColorChecked = clNone
    DropDownSplit = False
    Caption = 'OK'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 18
    Images = MainForm.PanelIcons24
    Margin = 10
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    ShowHint = True
    Spacing = 10
    OnClick = OKAddUniteSBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object CancelAddUniteSBtn: TAdvToolButton
    Left = 168
    Top = 111
    Width = 100
    Height = 30
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    AutoThemeAdapt = False
    BorderColor = 4666873
    BorderDownColor = 4666873
    BorderHotColor = 15970832
    ColorDown = clBtnFace
    ColorHot = clBtnFace
    ColorChecked = clNone
    DropDownSplit = False
    Caption = 'Annuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 19
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    ShowHint = True
    Spacing = -1
    OnClick = CancelAddUniteSBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object RequiredAddUniteSlbl: TLabel
    Left = 106
    Top = 46
    Width = 186
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't entrer un Unite'
    Color = clBtnFace
    FocusControl = NameAddUniteSEdt
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
  object RequiredStarAddUniteSLbl: TLabel
    Left = 298
    Top = 64
    Width = 8
    Height = 22
    Caption = '*'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 22
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Image1: TsImage
    Left = 8
    Top = 49
    Width = 50
    Height = 50
    Cursor = crHandPoint
    Center = True
    Picture.Data = {07544269746D617000000000}
    Proportional = True
    Visible = False
    ImageIndex = 2
    Images = MainForm.PanelIcons48
    SkinData.SkinSection = 'CHECKBOX'
  end
  object CompteAddUniteSBtn: TAdvToolButton
    Left = 297
    Top = 103
    Width = 26
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = 15722984
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    Color = 15722984
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
    Visible = False
    OnClick = CompteAddUniteSBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object CompteAddUniteSLbl: TLabel
    Left = 44
    Top = 107
    Width = 57
    Height = 18
    Caption = 'Compte:'
    Color = 4207405
    FocusControl = CompteAddUniteSCbx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleElements = []
  end
  object NameAddUniteSErrorP: TPanel
    Left = 105
    Top = 60
    Width = 189
    Height = 30
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 3
    Visible = False
    StyleElements = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 314
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 7854350
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    StyleElements = []
    object FormCaptionAddUniteSLbl: TLabel
      Left = 99
      Top = 10
      Width = 116
      Height = 24
      Caption = 'Ajouter Unite'
      Color = 4207405
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 24
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
  end
  object LineP: TPanel
    Left = 0
    Top = 103
    Width = 314
    Height = 2
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    Color = 7854350
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
  end
  object NameAddUniteSEdt: TEdit
    Left = 106
    Top = 62
    Width = 187
    Height = 26
    Anchors = [akTop, akRight]
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvSpace
    Ctl3D = True
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    StyleElements = [seClient, seBorder]
    OnChange = NameAddUniteSEdtChange
  end
  object CompteAddUniteSCbx: TComboBox
    Left = 106
    Top = 103
    Width = 188
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnDropDown = CompteAddUniteSCbxEnter
    OnEnter = CompteAddUniteSCbxEnter
  end
end
