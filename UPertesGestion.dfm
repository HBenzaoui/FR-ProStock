object PertesGestionF: TPertesGestionF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nouveau Perte'
  ClientHeight = 447
  ClientWidth = 606
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
    606
    447)
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 298
    Top = 124
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
  object RequiredQuantityPerteGlbl: TLabel
    Left = 95
    Top = 102
    Width = 201
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't entrer le Quantit'#233
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
  object RequiredPerteGlbl: TLabel
    Left = 94
    Top = 50
    Width = 399
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't s'#233'lectionner le Produit'
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
  object Label5: TLabel
    Left = 415
    Top = 23
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
  object PerteGLbl: TLabel
    Left = 31
    Top = 126
    Width = 62
    Height = 18
    Caption = 'Quantit'#233':'
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
  object AddTypePerteGBtn: TAdvToolButton
    Left = 578
    Top = 123
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
    OnClick = AddTypePerteGBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object Label1: TLabel
    Left = 336
    Top = 125
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
  object NamePerteGLbl: TLabel
    Left = 9
    Top = 73
    Width = 84
    Height = 17
    Caption = 'Les Produits:'
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
  object ObserPerteGLbl: TLabel
    Left = 5
    Top = 232
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
  object MontantAHTPerteLbl: TLabel
    Left = 3
    Top = 351
    Width = 90
    Height = 18
    Caption = 'Stock Actuel:'
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
    Left = 285
    Top = 351
    Width = 109
    Height = 18
    Caption = 'Nouveau Stock:'
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
  object RefPerteGLbl: TLabel
    Left = 32
    Top = 25
    Width = 61
    Height = 18
    Caption = 'Perte N'#176':'
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
  object NumPerteGEdt: TLabel
    Left = 97
    Top = 23
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
  object ListAddProduitPerteGBtn: TAdvToolButton
    Left = 506
    Top = 69
    Width = 71
    Height = 26
    Cursor = crHandPoint
    AutoThemeAdapt = False
    BorderColor = 7854350
    BorderDownColor = 7854350
    BorderHotColor = 4666873
    Color = clWhite
    ColorDown = 7854350
    ColorHot = clWhite
    ColorChecked = clNone
    DropDownSplit = False
    Caption = 'Liste'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 13
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Shaded = False
    ShowHint = True
    Spacing = -1
    OnClick = ListAddProduitPerteGBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object AdvToolButton1: TAdvToolButton
    Left = 299
    Top = 69
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
  object RequiredStarPerteGLbl: TLabel
    Left = 496
    Top = 71
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
  object Label3: TLabel
    Left = 7
    Top = 303
    Width = 86
    Height = 18
    Caption = 'Montant.HT:'
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
  object Label4: TLabel
    Left = 293
    Top = 303
    Width = 101
    Height = 18
    Caption = 'Monatant.TTC:'
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
  object AddProduitPerteGBtn: TAdvToolButton
    Left = 578
    Top = 69
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
    OnClick = AddProduitPerteGBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object Label6: TLabel
    Left = 26
    Top = 179
    Width = 68
    Height = 18
    Caption = 'Prix.A.HT:'
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
  object Label8: TLabel
    Left = 299
    Top = 179
    Width = 75
    Height = 18
    Caption = 'Prix.A.TTC:'
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
  object QuantityPerteGErrorP: TPanel
    Left = 93
    Top = 120
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
    TabOrder = 12
    Visible = False
    StyleElements = []
  end
  object NamePerteGErrorP: TPanel
    Left = 93
    Top = 67
    Width = 402
    Height = 30
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 9
    Visible = False
    StyleElements = []
  end
  object TypePerteGCbx: TComboBox
    Left = 377
    Top = 122
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnDropDown = TypePerteGCbxDropDown
    OnEnter = TypePerteGCbxDropDown
  end
  object DatePerteGD: TDateTimePicker
    Left = 460
    Top = 20
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
    TabOrder = 4
  end
  object ObserPerteGMem: TMemo
    Left = 95
    Top = 227
    Width = 482
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object LineP: TPanel
    Left = -1
    Top = 282
    Width = 607
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 8469216
    ParentBackground = False
    TabOrder = 5
    StyleElements = []
  end
  object BottomP: TPanel
    Left = 0
    Top = 393
    Width = 606
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    Color = 8469216
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 6
    StyleElements = []
    object OKPerteGBtn: TAdvToolButton
      Left = 171
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
      OnClick = OKPerteGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object CancelPerteGBtn: TAdvToolButton
      Left = 337
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
      OnClick = CancelPerteGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
  end
  object PerteGOLDStockEdt: TEdit
    Left = 95
    Top = 347
    Width = 180
    Height = 26
    TabStop = False
    Alignment = taRightJustify
    AutoSelect = False
    Color = 15722984
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object PerteGNEWStockEdt: TEdit
    Left = 397
    Top = 347
    Width = 180
    Height = 26
    TabStop = False
    Alignment = taRightJustify
    AutoSelect = False
    Color = 15722984
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object NamePerteGCbx: TcxComboBox
    Left = 95
    Top = 69
    AutoSize = False
    ParentFont = False
    Properties.OnChange = NamePerteGCbxPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = 18
    Style.Font.Name = 'Helvetica LT Std'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    OnEnter = NamePerteGCbxEnter
    OnExit = NamePerteGCbxExit
    Height = 26
    Width = 398
  end
  object PrixHTTotalPerteGEdt: TEdit
    Left = 95
    Top = 299
    Width = 180
    Height = 26
    TabStop = False
    Alignment = taRightJustify
    AutoSelect = False
    Color = 15722984
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object PrixTTCTotalPerteGEdt: TEdit
    Left = 397
    Top = 299
    Width = 180
    Height = 26
    TabStop = False
    Alignment = taRightJustify
    AutoSelect = False
    Color = 15722984
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object QuantityPerteGEdt: TEdit
    Left = 95
    Top = 122
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
    TabOrder = 1
    OnChange = QuantityPerteGEdtChange
    OnEnter = QuantityPerteGEdtEnter
    OnExit = QuantityPerteGEdtExit
    OnKeyPress = QuantityPerteGEdtKeyPress
  end
  object PrixHTPerteGEdt: TEdit
    Left = 96
    Top = 175
    Width = 199
    Height = 26
    TabStop = False
    Alignment = taRightJustify
    AutoSelect = False
    Color = 15722984
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
  end
  object PrixTTCPerteGEdt: TEdit
    Left = 377
    Top = 175
    Width = 200
    Height = 26
    TabStop = False
    Alignment = taRightJustify
    AutoSelect = False
    Color = 15722984
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = 14
    ParentDoubleBuffered = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
  end
end
