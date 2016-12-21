object ChargesGestionF: TChargesGestionF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nouveau Charge'
  ClientHeight = 494
  ClientWidth = 637
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    637
    494)
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 612
    Top = 397
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
  object RequiredMontantTTCChargeGlbl: TLabel
    Left = 411
    Top = 375
    Width = 200
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't entrer un Montant'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 15
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object RequiredCompteGlbl: TLabel
    Left = 382
    Top = 150
    Width = 247
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't s'#233'lectionner le Compte'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 15
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object Label6: TLabel
    Left = 610
    Top = 169
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
  object RequiredMPGlbl: TLabel
    Left = 61
    Top = 150
    Width = 281
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't s'#233'lectionner le Mode de Paiement'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 15
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object Label7: TLabel
    Left = 36
    Top = 173
    Width = 57
    Height = 18
    Caption = 'Mode.P:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object AddModePaieChargeGBtn: TAdvToolButton
    Left = 299
    Top = 169
    Width = 26
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = clWhite
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    Color = clWhite
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
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object Label5: TLabel
    Left = 449
    Top = 21
    Width = 39
    Height = 20
    Caption = 'Date:'
    Color = 15722984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 20
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object ChargeGLbl: TLabel
    Left = 55
    Top = 122
    Width = 38
    Height = 18
    Caption = 'Type:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object AddTypeChargeGBtn: TAdvToolButton
    Left = 299
    Top = 118
    Width = 26
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = clWhite
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    Color = clWhite
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
    OnClick = AddTypeChargeGBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object Label1: TLabel
    Left = 327
    Top = 122
    Width = 77
    Height = 18
    Caption = 'Sous Type:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object AddSousTypeChargeGBtn: TAdvToolButton
    Left = 610
    Top = 118
    Width = 26
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = clWhite
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    Color = clWhite
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
    OnClick = AddSousTypeChargeGBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object NameChargeGLbl: TLabel
    Left = 6
    Top = 71
    Width = 87
    Height = 18
    Caption = 'D'#233'signation:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object RequiredChargeGlbl: TLabel
    Left = 95
    Top = 48
    Width = 512
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't entrer un d'#233'signation'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 15
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object Label19: TLabel
    Left = 16
    Top = 224
    Width = 77
    Height = 18
    Caption = 'N'#176' Ch'#233'que:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object AddCompteChargeGBtn: TAdvToolButton
    Left = 610
    Top = 169
    Width = 26
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = clWhite
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    Color = clWhite
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
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object Label16: TLabel
    Left = 347
    Top = 173
    Width = 57
    Height = 18
    Caption = 'Compte:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object ObserChargeGLbl: TLabel
    Left = 5
    Top = 276
    Width = 88
    Height = 17
    Caption = 'Observations:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 17
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object MontantAHTChargeLbl: TLabel
    Left = 15
    Top = 347
    Width = 86
    Height = 18
    Caption = 'Montant HT:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object MonatntTTCChargeLbl: TLabel
    Left = 49
    Top = 398
    Width = 52
    Height = 18
    Caption = 'Timber:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Label2: TLabel
    Left = 317
    Top = 347
    Width = 93
    Height = 18
    Caption = 'Montant TVA:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Label3: TLabel
    Left = 317
    Top = 398
    Width = 93
    Height = 18
    Caption = 'Montant TTC:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object RefChargeGLbl: TLabel
    Left = 20
    Top = 23
    Width = 73
    Height = 18
    Caption = 'Charge N'#176':'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object NumChargeGEdt: TLabel
    Left = 97
    Top = 21
    Width = 184
    Height = 22
    AutoSize = False
    Caption = '0001/2016'
    Color = 15722984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10379008
    Font.Height = 22
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object RequiredStarChargeGLbl: TLabel
    Left = 609
    Top = 69
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
  object Label4: TLabel
    Left = 295
    Top = 175
    Width = 5
    Height = 15
    Caption = '*'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 15
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label8: TLabel
    Left = 606
    Top = 175
    Width = 5
    Height = 15
    Caption = '*'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 15
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object MontantTTCChargeGErrorP: TPanel
    Left = 409
    Top = 392
    Width = 204
    Height = 30
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 17
    Visible = False
    StyleElements = []
  end
  object CompteChargeGErrorP: TPanel
    Left = 403
    Top = 167
    Width = 205
    Height = 30
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 16
    Visible = False
    StyleElements = []
  end
  object MPChargeGErrorP: TPanel
    Left = 92
    Top = 167
    Width = 205
    Height = 30
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 15
    Visible = False
    StyleElements = []
  end
  object NameChargeGErrorP: TPanel
    Left = 93
    Top = 65
    Width = 516
    Height = 30
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 12
    Visible = False
    StyleElements = []
  end
  object ModePaieChargeGCbx: TComboBox
    Left = 95
    Top = 169
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = ModePaieChargeGCbxChange
    OnClick = ModePaieChargeGCbxClick
    OnDropDown = ModePaieChargeGCbxDropDown
    OnEnter = ModePaieChargeGCbxClick
    OnExit = ModePaieChargeGCbxClick
    OnSelect = ModePaieChargeGCbxClick
    Items.Strings = (
      ''
      'ch'#232'que '
      'Esp'#232'ce')
  end
  object DateChargeGD: TDateTimePicker
    Left = 492
    Top = 18
    Width = 117
    Height = 26
    Date = 42571.604963831020000000
    Time = 42571.604963831020000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object TypeChargeGCbx: TComboBox
    Left = 95
    Top = 118
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnDropDown = TypeChargeGCbxEnter
    OnEnter = TypeChargeGCbxEnter
  end
  object STypeChargeGCbx: TComboBox
    Left = 406
    Top = 118
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnDropDown = STypeChargeGCbxEnter
    OnEnter = STypeChargeGCbxEnter
  end
  object NameChargeGEdt: TEdit
    Left = 95
    Top = 67
    Width = 512
    Height = 26
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
    TabOrder = 0
    StyleElements = [seClient, seBorder]
    OnChange = NameChargeGEdtChange
  end
  object NChequeChargeGCbx: TEdit
    Left = 97
    Top = 220
    Width = 510
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object CompteChargeGCbx: TComboBox
    Left = 406
    Top = 169
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = CompteChargeGCbxChange
    OnDropDown = CompteChargeGCbxDropDown
    OnEnter = CompteChargeGCbxDropDown
  end
  object ObserChargeMem: TMemo
    Left = 97
    Top = 271
    Width = 512
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object LineP: TPanel
    Left = 1
    Top = 319
    Width = 638
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 8637171
    ParentBackground = False
    TabOrder = 14
    StyleElements = []
  end
  object BottomP: TPanel
    Left = 0
    Top = 440
    Width = 637
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    Color = 8637171
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 13
    StyleElements = []
    object OKChargeGBtn: TAdvToolButton
      Left = 186
      Top = 12
      Width = 100
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
      OnClick = OKChargeGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object CancelChargeGBtn: TAdvToolButton
      Left = 352
      Top = 12
      Width = 100
      Height = 30
      Cursor = crHandPoint
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
      OnClick = CancelChargeGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
  end
  object MontantTimberChargeGEdt: TEdit
    Left = 103
    Top = 394
    Width = 200
    Height = 26
    Alignment = taRightJustify
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 9
    OnChange = MontantHTChargeGEdtChange
    OnExit = MontantTimberChargeGEdtExit
    OnKeyPress = MontantTimberChargeGEdtKeyPress
  end
  object MontantHTChargeGEdt: TEdit
    Left = 104
    Top = 343
    Width = 200
    Height = 26
    Alignment = taRightJustify
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 7
    OnChange = MontantHTChargeGEdtChange
    OnExit = MontantHTChargeGEdtExit
    OnKeyPress = MontantHTChargeGEdtKeyPress
  end
  object MontantTTCChargeGEdt: TEdit
    Left = 411
    Top = 394
    Width = 200
    Height = 26
    Alignment = taRightJustify
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 10
    OnChange = MontantTTCChargeGEdtChange
    OnExit = MontantTTCChargeGEdtExit
    OnKeyPress = MontantTTCChargeGEdtKeyPress
  end
  object MontantTVAChargeGEdt: TEdit
    Left = 411
    Top = 343
    Width = 200
    Height = 26
    Alignment = taRightJustify
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 8
    OnChange = MontantHTChargeGEdtChange
    OnExit = MontantTVAChargeGEdtExit
    OnKeyPress = MontantTVAChargeGEdtKeyPress
  end
end
