object ReglementCGestionF: TReglementCGestionF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'R'#233'glement Client'
  ClientHeight = 403
  ClientWidth = 540
  Color = 15527148
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
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 540
    Height = 97
    Align = alTop
    Brush.Color = 15527148
    Pen.Color = 7854350
    ExplicitLeft = 8
    ExplicitTop = 1
    ExplicitWidth = 543
  end
  object Shape2: TShape
    Left = 0
    Top = 97
    Width = 540
    Height = 160
    Align = alTop
    Brush.Color = 15527148
    Pen.Color = 7854350
    ExplicitWidth = 556
  end
  object Shape3: TShape
    Left = 0
    Top = 257
    Width = 540
    Height = 81
    Align = alTop
    Brush.Color = 15527148
    Pen.Color = 4207405
    ExplicitTop = 344
  end
  object NumRegCGEdt: TLabel
    Left = 119
    Top = 13
    Width = 10
    Height = 20
    Caption = '0'
    Color = 15722984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10379008
    Font.Height = 20
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 105
    Height = 20
    Caption = 'Versement N'#176
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
  object Label2: TLabel
    Left = 8
    Top = 60
    Width = 35
    Height = 20
    Caption = 'Date'
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
  object ObserRegCGLbl: TLabel
    Left = 357
    Top = 4
    Width = 98
    Height = 20
    Caption = 'Observations'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 20
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object RequiredRegCGlbl: TLabel
    Left = 169
    Top = 102
    Width = 267
    Height = 30
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't entrer le nom de le Client'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 14
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object AddFourRegCGBtn: TAdvToolButton
    Left = 510
    Top = 122
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
    OnClick = AddFourRegCGBtnClick
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object AddCompteRegCGBtn: TAdvToolButton
    Left = 510
    Top = 167
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
    OnClick = AddCompteRegCGBtnClick
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object Label3: TLabel
    Left = 293
    Top = 171
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
  object AddModePaieRegCGBtn: TAdvToolButton
    Left = 251
    Top = 167
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
    OnClick = AddModePaieRegCGBtnClick
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object Label4: TLabel
    Left = 49
    Top = 171
    Width = 43
    Height = 18
    Caption = 'Mode:'
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
  object Label5: TLabel
    Left = 49
    Top = 125
    Width = 43
    Height = 18
    Caption = 'Client:'
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
  object Label6: TLabel
    Left = 15
    Top = 217
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
  object Shape4: TShape
    Left = 0
    Top = 338
    Width = 540
    Height = 81
    Align = alTop
    Brush.Color = 7854350
    Pen.Color = 7854350
    ExplicitTop = 342
  end
  object OKRegCGBtn: TAdvToolButton
    Left = 132
    Top = 356
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
    OnClick = OKRegCGBtnClick
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object CancelRegCGBtn: TAdvToolButton
    Left = 298
    Top = 356
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
    OnClick = CancelRegCGBtnClick
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object label13: TLabel
    Left = 192
    Top = 263
    Width = 88
    Height = 21
    Caption = 'Versement:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object label12: TLabel
    Left = 365
    Top = 263
    Width = 71
    Height = 21
    Caption = 'Le Reste:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object RegCGClientNEWCredit: TLabel
    AlignWithMargins = True
    Left = 359
    Top = 296
    Width = 175
    Height = 37
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Alignment = taRightJustify
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = '0'
    Color = 15722984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7854350
    Font.Height = 25
    Font.Name = 'Helvetica LT Std'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    StyleElements = []
  end
  object Label7: TLabel
    Left = 8
    Top = 263
    Width = 87
    Height = 21
    Caption = 'Client Sold:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object RegCGClientOLDCredit: TLabel
    AlignWithMargins = True
    Left = -1
    Top = 296
    Width = 175
    Height = 37
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Alignment = taRightJustify
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = '0'
    Color = 15722984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7566591
    Font.Height = 25
    Font.Name = 'Helvetica LT Std'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    StyleElements = []
  end
  object ListClientregCGBtn: TAdvToolButton
    Left = 473
    Top = 122
    Width = 35
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
    ImageIndex = 58
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    Shaded = False
    ShowHint = True
    Spacing = -1
    OnClick = ListClientregCGBtnClick
    Version = '1.6.2.0'
    TMSStyle = 0
  end
  object Label21: TLabel
    Left = 467
    Top = 127
    Width = 6
    Height = 16
    Caption = '*'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 16
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object RegCGErrorP: TPanel
    Left = 187
    Top = 294
    Width = 166
    Height = 30
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 10
    Visible = False
    StyleElements = []
  end
  object DateRegCGD: TDateTimePicker
    Left = 65
    Top = 58
    Width = 124
    Height = 26
    Date = 42565.000000000000000000
    Time = 0.478213819442316900
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object ObserRegCGMem: TMemo
    Left = 280
    Top = 27
    Width = 252
    Height = 61
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object NameClientGErrorP: TPanel
    Left = 96
    Top = 118
    Width = 371
    Height = 34
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 2
    Visible = False
    StyleElements = []
  end
  object ClientRegCGCbx: TComboBox
    Left = 98
    Top = 120
    Width = 368
    Height = 30
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    Sorted = True
    TabOrder = 3
    OnChange = ClientRegCGCbxChange
    OnDropDown = ClientRegCGCbxDropDown
    OnEnter = ClientRegCGCbxDropDown
    OnExit = ClientRegCGCbxExit
    OnKeyPress = ClientRegCGCbxKeyPress
  end
  object CompteRegCGCbx: TComboBox
    Left = 356
    Top = 165
    Width = 152
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnChange = CompteRegCGCbxChange
    OnDropDown = CompteRegCGCbxDropDown
    OnEnter = CompteRegCGCbxDropDown
    OnKeyPress = ClientRegCGCbxKeyPress
  end
  object ModePaieRegCGCbx: TComboBox
    Left = 98
    Top = 165
    Width = 152
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = ModePaieRegCGCbxClick
    OnDropDown = ModePaieRegCGCbxDropDown
    OnEnter = ModePaieRegCGCbxClick
    OnExit = ModePaieRegCGCbxClick
    OnKeyPress = ClientRegCGCbxKeyPress
    OnSelect = ModePaieRegCGCbxClick
    Items.Strings = (
      'Esp'#232'ce'
      'ch'#232'que '
      '')
  end
  object NChequeRegCGCbx: TEdit
    Left = 98
    Top = 210
    Width = 409
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyPress = ClientRegCGCbxKeyPress
  end
  object Panel1: TPanel
    Left = 358
    Top = 256
    Width = 1
    Height = 80
    ParentCustomHint = False
    BevelEdges = []
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Color = 7854350
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    StyleElements = []
  end
  object VerRegCGEdt: TEdit
    Left = 188
    Top = 295
    Width = 164
    Height = 28
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    MaxLength = -1
    ParentFont = False
    TabOrder = 4
    OnChange = VerRegCGEdtChange
    OnKeyPress = VerRegCGEdtKeyPress
  end
  object Panel2: TPanel
    Left = 181
    Top = 256
    Width = 1
    Height = 80
    ParentCustomHint = False
    BevelEdges = []
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Color = 7854350
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
    StyleElements = []
  end
end
