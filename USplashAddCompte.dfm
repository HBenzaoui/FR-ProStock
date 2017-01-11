object FSplashAddCompte: TFSplashAddCompte
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FSplashAddCompte'
  ClientHeight = 240
  ClientWidth = 330
  Color = 15527148
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
    330
    240)
  PixelsPerInch = 96
  TextHeight = 13
  object NameAddCompteSLbl: TLabel
    Left = 78
    Top = 94
    Width = 38
    Height = 19
    Caption = 'Nom:'
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
  object OKAddCompteSBtn: TAdvToolButton
    Left = 48
    Top = 204
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
    OnClick = OKAddCompteSBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object CancelAddCompteSBtn: TAdvToolButton
    Left = 185
    Top = 204
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
    OnClick = CancelAddCompteSBtnClick
    Version = '1.6.1.2'
    ExplicitTop = 219
    TMSStyle = 0
  end
  object RequiredAddCompteSlbl: TLabel
    Left = 125
    Top = 76
    Width = 186
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't entrer le Nom'
    Color = clBtnFace
    FocusControl = NameAddCompteSEdt
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
  object RequiredStarAddCompteSLbl: TLabel
    Left = 317
    Top = 91
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
    Top = 95
    Width = 50
    Height = 50
    Cursor = crHandPoint
    Center = True
    Picture.Data = {07544269746D617000000000}
    Proportional = True
    ImageIndex = 4
    Images = MainForm.PanelIcons48
    SkinData.SkinSection = 'CHECKBOX'
  end
  object CompteAddCompteSLbl: TLabel
    Left = 66
    Top = 132
    Width = 50
    Height = 18
    Caption = 'Nature:'
    Color = 4207405
    FocusControl = NatureAddCompteSCbx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Label1: TLabel
    Left = 63
    Top = 55
    Width = 56
    Height = 19
    Caption = 'Num'#233'o:'
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
  object Label2: TLabel
    Left = 28
    Top = 170
    Width = 89
    Height = 19
    Caption = 'Solde Initial:'
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
  object NameAddCompteSErrorP: TPanel
    Left = 124
    Top = 87
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
    TabOrder = 0
    Visible = False
    StyleElements = []
  end
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 331
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
    object FormCaptionAddUniteSLbl: TLabel
      Left = 97
      Top = 10
      Width = 138
      Height = 24
      Caption = 'Ajouter Compte'
      Color = 4207405
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15722984
      Font.Height = 24
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
  end
  object LineP: TPanel
    Left = -1
    Top = 196
    Width = 331
    Height = 2
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 2
    StyleElements = []
  end
  object NameAddCompteSEdt: TEdit
    Left = 125
    Top = 89
    Width = 187
    Height = 26
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
    TabOrder = 3
    StyleElements = [seClient, seBorder]
    OnChange = NameAddCompteSEdtChange
    OnKeyDown = NumAddCompteSEdtKeyDown
  end
  object NatureAddCompteSCbx: TComboBox
    Left = 125
    Top = 127
    Width = 188
    Height = 26
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'Caisse'
    OnKeyDown = NumAddCompteSEdtKeyDown
    Items.Strings = (
      'Caisse'
      'Banque')
  end
  object NumAddCompteSEdt: TEdit
    Left = 125
    Top = 51
    Width = 187
    Height = 26
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
    TabOrder = 6
    StyleElements = [seClient, seBorder]
    OnKeyDown = NumAddCompteSEdtKeyDown
  end
  object SoldeAddCompteSCbx: TEdit
    Left = 125
    Top = 165
    Width = 187
    Height = 26
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
    TabOrder = 5
    StyleElements = [seClient, seBorder]
    OnExit = SoldeAddCompteSCbxExit
    OnKeyDown = NumAddCompteSEdtKeyDown
    OnKeyPress = SoldeAddCompteSCbxKeyPress
  end
end
