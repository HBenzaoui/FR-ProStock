object ProduitGestionF: TProduitGestionF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nouveau Produit'
  ClientHeight = 668
  ClientWidth = 685
  Color = 15527148
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = [seClient, seBorder]
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ProduitGPgControl: TsPageControl
    Left = 0
    Top = 0
    Width = 685
    Height = 614
    ActivePage = PlusInfoClientGTB
    Align = alClient
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Roboto'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabHeight = 25
    TabOrder = 0
    TabWidth = 80
    StyleElements = []
    TabsLineSkin = 'BAR'
    object GeneralClientGTB: TsTabSheet
      Caption = 'G'#233'n'#233'ral'
      object GeneralTB: TPanel
        Left = 0
        Top = 0
        Width = 677
        Height = 579
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          677
          579)
        object FamilleProduitGLbl: TLabel
          Left = 36
          Top = 110
          Width = 53
          Height = 18
          Caption = 'Famille:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object RefProduitGLbl: TLabel
          Left = 16
          Top = 17
          Width = 73
          Height = 18
          Caption = 'R'#233'ference:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object NameProduitGLbl: TLabel
          Left = 2
          Top = 66
          Width = 87
          Height = 18
          Caption = 'D'#233'signation:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object PrixAHTProduitLbl: TLabel
          Left = 24
          Top = 310
          Width = 55
          Height = 18
          Caption = 'Prix HT:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object RequiredStarProduitGLbl: TLabel
          Left = 629
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
        object RequiredProduitGlbl: TLabel
          Left = 257
          Top = 42
          Width = 203
          Height = 15
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
        object Label1: TLabel
          Left = 239
          Top = 110
          Width = 66
          Height = 18
          Caption = 'S.Famille:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label2: TLabel
          Left = 49
          Top = 155
          Width = 40
          Height = 18
          Caption = 'Unit'#233':'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label3: TLabel
          Left = 227
          Top = 155
          Width = 31
          Height = 18
          Caption = 'TVA:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label4: TLabel
          Left = 13
          Top = 198
          Width = 76
          Height = 18
          Caption = 'P'#233'rissable:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object PerProduitGLbl: TLabel
          Left = 140
          Top = 202
          Width = 22
          Height = 14
          Caption = 'Non'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
          StyleElements = []
        end
        object DatePerProduitGLbl: TLabel
          Left = 221
          Top = 198
          Width = 35
          Height = 18
          Caption = 'Date:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object AlertJoursProduitLbl: TLabel
          Left = 406
          Top = 198
          Width = 105
          Height = 18
          Caption = 'M'#39'avertir avant:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object AlertJoursProduitLbl2: TLabel
          Left = 608
          Top = 200
          Width = 31
          Height = 15
          Caption = 'Jours'
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4666873
          Font.Height = 15
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object PrixATTCProduitLbl: TLabel
          Left = 17
          Top = 374
          Width = 62
          Height = 18
          Caption = 'Prix TTC:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label10: TLabel
          Left = 73
          Top = 246
          Width = 87
          Height = 19
          Caption = 'Prix D'#39'Achat'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 19
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label11: TLabel
          Left = 349
          Top = 285
          Width = 43
          Height = 16
          Caption = 'Prix HT'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label12: TLabel
          Left = 472
          Top = 285
          Width = 50
          Height = 16
          Caption = 'Prix TTC'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label13: TLabel
          Left = 394
          Top = 246
          Width = 95
          Height = 19
          Caption = 'Prix De Vente'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 19
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label14: TLabel
          Left = 578
          Top = 285
          Width = 39
          Height = 16
          Caption = 'Marge'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label15: TLabel
          Left = 272
          Top = 311
          Width = 36
          Height = 16
          Caption = 'Detail:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label16: TLabel
          Left = 240
          Top = 344
          Width = 68
          Height = 16
          Caption = 'Revendeur:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label17: TLabel
          Left = 276
          Top = 376
          Width = 32
          Height = 16
          Caption = 'Gros:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label18: TLabel
          Left = 262
          Top = 408
          Width = 46
          Height = 16
          Caption = 'Autre 1:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label19: TLabel
          Left = 262
          Top = 440
          Width = 46
          Height = 16
          Caption = 'Autre 2:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label20: TLabel
          Left = 633
          Top = 312
          Width = 11
          Height = 18
          Caption = '%'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label21: TLabel
          Left = 633
          Top = 344
          Width = 11
          Height = 18
          Caption = '%'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label22: TLabel
          Left = 633
          Top = 377
          Width = 11
          Height = 18
          Caption = '%'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label23: TLabel
          Left = 633
          Top = 408
          Width = 11
          Height = 18
          Caption = '%'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label24: TLabel
          Left = 633
          Top = 440
          Width = 11
          Height = 18
          Caption = '%'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label25: TLabel
          Left = 18
          Top = 496
          Width = 89
          Height = 18
          Caption = 'Stock Initial :'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label26: TLabel
          Left = 494
          Top = 496
          Width = 47
          Height = 18
          Caption = 'Alerte :'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label27: TLabel
          Left = 238
          Top = 497
          Width = 94
          Height = 18
          Caption = 'Stock Actuel :'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4666873
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label28: TLabel
          Left = 21
          Top = 542
          Width = 86
          Height = 18
          Caption = 'Fournisseur:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label29: TLabel
          Left = 341
          Top = 156
          Width = 11
          Height = 18
          Caption = '%'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object RandomCBProduitGBtn: TAdvToolButton
          Left = 626
          Top = 14
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
          ImageIndex = 21
          Images = MainForm.PanelIcons24
          ParentFont = False
          ParentShowHint = False
          Rounded = True
          Shaded = False
          ShowHint = True
          Spacing = -1
          OnClick = RandomCBProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object Label9: TLabel
          Left = 350
          Top = 18
          Width = 91
          Height = 18
          Caption = 'Code '#226' Barre:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object AddSousFamilleProduitGBtn: TAdvToolButton
          Left = 422
          Top = 106
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
          OnClick = AddSousFamilleProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object AddFamilleProduitGBtn: TAdvToolButton
          Left = 207
          Top = 106
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
          OnClick = AddFamilleProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object AddUniteProduitGBtn: TAdvToolButton
          Left = 169
          Top = 152
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
          OnClick = AddUniteProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object AddFourProduitGBtn: TAdvToolButton
          Left = 423
          Top = 539
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
          OnClick = AddFourProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object ShowCalculaturProduitGBtn: TAdvToolButton
          Left = 612
          Top = 244
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
          ImageIndex = 24
          Images = MainForm.PanelIcons24
          ParentFont = False
          ParentShowHint = False
          Rounded = True
          Shaded = False
          ShowHint = True
          Spacing = -1
          OnClick = ShowCalculaturProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object MulteCBProduitGBtn: TAdvToolButton
          Left = 652
          Top = 14
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
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ImageIndex = 38
          Images = MainForm.PanelIcons24
          ParentFont = False
          ParentShowHint = False
          Rounded = True
          Shaded = False
          ShowHint = True
          Spacing = -1
          OnClick = MulteCBProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object RequiredRefProduitGlbl: TLabel
          Left = 92
          Top = -2
          Width = 149
          Height = 15
          AutoSize = False
          Caption = 'R'#233'ference Produit Existe D'#233'ja !!'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4666873
          Font.Height = 12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
          WordWrap = True
          StyleElements = [seClient, seBorder]
        end
        object ShowKeyBoardProduitGBtn: TAdvToolButton
          Left = 644
          Top = 244
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
          ImageIndex = 43
          Images = MainForm.PanelIcons24
          ParentFont = False
          ParentShowHint = False
          Rounded = True
          Shaded = False
          ShowHint = True
          Spacing = -1
          OnClick = ShowKeyBoardProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object PMPProduitLbl: TLabel
          Left = 34
          Top = 439
          Width = 45
          Height = 18
          Caption = 'P.M.P:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object MarkProduitGLbl: TLabel
          Left = 451
          Top = 110
          Width = 56
          Height = 18
          Caption = 'Marque:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
          StyleElements = []
        end
        object AddMarkProduitGBtn: TAdvToolButton
          Left = 626
          Top = 106
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
          Visible = False
          OnClick = AddMarkProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object NameProduitGErrorP: TPanel
          Left = 90
          Top = 60
          Width = 535
          Height = 30
          BevelOuter = bvNone
          BevelWidth = 2
          Color = 8421631
          Ctl3D = False
          FullRepaint = False
          ParentBackground = False
          ParentCtl3D = False
          ShowCaption = False
          TabOrder = 13
          Visible = False
          StyleElements = []
        end
        object LineP: TPanel
          Left = 0
          Top = 236
          Width = 684
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 9
          StyleElements = []
        end
        object PrixAHTProduitEdt: TEdit
          Left = 85
          Top = 307
          Width = 114
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
          OnChange = PrixAHTProduitEdtChange
          OnClick = PrixAHTProduitEdtClick
          OnExit = PrixAHTProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object NameProduitGEdt: TEdit
          Left = 92
          Top = 62
          Width = 531
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
          TabOrder = 2
          StyleElements = [seClient, seBorder]
          OnChange = NameProduitGEdtChange
          OnDblClick = ShowKeyBoardProduitGBtnClick
          OnKeyPress = NameProduitGEdtKeyPress
          OnMouseEnter = NameProduitGEdtMouseEnter
        end
        object FamilleProduitGCbx: TComboBox
          Left = 92
          Top = 106
          Width = 115
          Height = 26
          BevelEdges = []
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 3
          OnDropDown = FamilleProduitGCbxEnter
          OnEnter = FamilleProduitGCbxEnter
        end
        object SFamilleProduitGCbx: TComboBox
          Left = 307
          Top = 106
          Width = 115
          Height = 26
          Style = csOwnerDrawVariable
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 4
          OnDropDown = SFamilleProduitGCbxEnter
          OnEnter = SFamilleProduitGCbxEnter
        end
        object UniteProduitGCbx: TComboBox
          Left = 92
          Top = 152
          Width = 74
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnDropDown = UniteProduitGCbxDropDown
          OnEnter = UniteProduitGCbxEnter
        end
        object TVAProduitGCbx: TComboBox
          Left = 262
          Top = 152
          Width = 74
          Height = 26
          BiDiMode = bdLeftToRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 3
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
          Text = '0'
          OnChange = TVAProduitGCbxChange
          OnKeyDown = TVAProduitGCbxKeyDown
          OnKeyPress = TVAProduitGCbxKeyPress
          Items.Strings = (
            '0'
            '9'
            '19')
        end
        object PerProduitGSlider: TsSlider
          Left = 92
          Top = 200
          Width = 40
          Height = 16
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 12
          Font.Name = 'Roboto'
          Font.Style = []
          StyleElements = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          TabStop = True
          BoundLabel.Caption = 'sSlider1'
          BoundLabel.Layout = sclBottomCenter
          FontOn.Charset = DEFAULT_CHARSET
          FontOn.Color = 4207405
          FontOn.Height = 12
          FontOn.Name = 'Roboto'
          FontOn.Style = []
          SliderCursor = crHandPoint
          Reversed = True
          SliderOn = False
          OnChanging = PerProduitGSliderChanging
        end
        object AlertJoursProduitEdt: TEdit
          Left = 517
          Top = 195
          Width = 85
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 3
          NumbersOnly = True
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 8
          Text = '0'
          StyleElements = []
        end
        object PrixATTCProduitEdt: TEdit
          Left = 85
          Top = 371
          Width = 114
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
          TabOrder = 11
          OnChange = PrixAHTProduitEdtChange
          OnClick = PrixATTCProduitEdtClick
          OnExit = PrixATTCProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixATTCProduitEdtKeyPress
        end
        object LineP3: TPanel
          Left = 73
          Top = 270
          Width = 83
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 12
          StyleElements = []
        end
        object PrixVHTDProduitEdt: TEdit
          Left = 314
          Top = 307
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 14
          OnChange = PrixVHTDProduitEdtChange
          OnClick = PrixVHTDProduitEdtClick
          OnExit = PrixVHTDProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVHTDProduitEdtKeyPress
        end
        object PrixVTTCDProduitEdt: TEdit
          Left = 441
          Top = 307
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 15
          OnChange = PrixVHTDProduitEdtChange
          OnClick = PrixVTTCDProduitEdtClick
          OnExit = PrixVTTCDProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVTTCDProduitEdtKeyPress
        end
        object LineP4: TPanel
          Left = 394
          Top = 271
          Width = 94
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 29
          StyleElements = []
        end
        object MargeDProduitEdt: TEdit
          Left = 567
          Top = 307
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 24
          StyleElements = [seClient, seBorder]
          OnChange = MargeDProduitEdtChange
          OnClick = MargeDProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = MargeDProduitEdtKeyPress
        end
        object PrixVHTRProduitEdt: TEdit
          Left = 314
          Top = 339
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 16
          OnChange = PrixVHTRProduitEdtChange
          OnClick = PrixVHTRProduitEdtClick
          OnExit = PrixVHTRProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVHTRProduitEdtKeyPress
        end
        object PrixVTTCRProduitEdt: TEdit
          Left = 441
          Top = 339
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 17
          OnChange = PrixVHTRProduitEdtChange
          OnClick = PrixVTTCRProduitEdtClick
          OnExit = PrixVTTCRProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVTTCRProduitEdtKeyPress
        end
        object MargeRProduitEdt: TEdit
          Left = 567
          Top = 339
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 25
          OnChange = MargeRProduitEdtChange
          OnClick = MargeRProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = MargeRProduitEdtKeyPress
        end
        object PrixVHTGProduitEdt: TEdit
          Left = 314
          Top = 371
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 18
          OnChange = PrixVHTGProduitEdtChange
          OnClick = PrixVHTGProduitEdtClick
          OnExit = PrixVHTGProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVHTGProduitEdtKeyPress
        end
        object PrixVTTCGProduitEdt: TEdit
          Left = 441
          Top = 371
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 19
          OnChange = PrixVHTGProduitEdtChange
          OnClick = PrixVTTCGProduitEdtClick
          OnExit = PrixVTTCGProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVTTCGProduitEdtKeyPress
        end
        object MargeGProduitEdt: TEdit
          Left = 567
          Top = 371
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 26
          OnChange = MargeGProduitEdtChange
          OnClick = MargeGProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = MargeGProduitEdtKeyPress
        end
        object PrixVHTA1ProduitEdt: TEdit
          Left = 314
          Top = 403
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 20
          OnChange = PrixVHTA1ProduitEdtChange
          OnClick = PrixVHTA1ProduitEdtClick
          OnExit = PrixVHTA1ProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVHTA1ProduitEdtKeyPress
        end
        object PrixVTTCA1ProduitEdt: TEdit
          Left = 441
          Top = 403
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 21
          OnChange = PrixVHTA1ProduitEdtChange
          OnClick = PrixVTTCA1ProduitEdtClick
          OnExit = PrixVTTCA1ProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVTTCA1ProduitEdtKeyPress
        end
        object MargeA1ProduitEdt: TEdit
          Left = 567
          Top = 403
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 27
          OnChange = MargeA1ProduitEdtChange
          OnClick = MargeA1ProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = MargeA1ProduitEdtKeyPress
        end
        object PrixVHTA2ProduitEdt: TEdit
          Left = 314
          Top = 435
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 22
          OnChange = PrixVHTA2ProduitEdtChange
          OnClick = PrixVHTA2ProduitEdtClick
          OnExit = PrixVHTA2ProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVHTA2ProduitEdtKeyPress
        end
        object PrixVTTCA2ProduitEdt: TEdit
          Left = 441
          Top = 435
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 23
          OnChange = PrixVHTA2ProduitEdtChange
          OnClick = PrixVTTCA2ProduitEdtClick
          OnExit = PrixVTTCA2ProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixVTTCA2ProduitEdtKeyPress
        end
        object MargeA2ProduitEdt: TEdit
          Left = 567
          Top = 435
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 28
          OnChange = MargeA2ProduitEdtChange
          OnClick = MargeA2ProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = MargeA2ProduitEdtKeyPress
        end
        object LineP2: TPanel
          Left = 0
          Top = 475
          Width = 684
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 30
          StyleElements = []
        end
        object StockINProduitEdt: TEdit
          Left = 113
          Top = 493
          Width = 108
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 31
          OnKeyDown = PrixVHTDProduitEdtKeyDown
        end
        object StockAlertProduitEdt: TEdit
          Left = 547
          Top = 493
          Width = 108
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 32
          OnKeyDown = PrixVHTDProduitEdtKeyDown
        end
        object StockActuelProduitEdt: TEdit
          Left = 341
          Top = 493
          Width = 108
          Height = 26
          TabStop = False
          Alignment = taCenter
          CharCase = ecUpperCase
          Color = 15722984
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 33
          Text = '0'
        end
        object FournisseurProduitGCbx: TComboBox
          Left = 113
          Top = 539
          Width = 309
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 34
          OnDropDown = FournisseurProduitGCbxEnter
          OnEnter = FournisseurProduitGCbxEnter
        end
        object LineP5: TPanel
          Left = 220
          Top = 238
          Width = 1
          Height = 239
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 35
          StyleElements = []
        end
        object RefProduitGErrorP: TPanel
          Left = 90
          Top = 12
          Width = 147
          Height = 30
          BevelOuter = bvNone
          BevelWidth = 2
          Color = 8421631
          Ctl3D = False
          FullRepaint = False
          ParentBackground = False
          ParentCtl3D = False
          ShowCaption = False
          TabOrder = 36
          Visible = False
          StyleElements = []
        end
        object RefProduitGEdt: TEdit
          Left = 92
          Top = 14
          Width = 143
          Height = 26
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 0
          StyleElements = [seClient, seBorder]
          OnChange = RefProduitGEdtChange
        end
        object DatePerProduitGD: TDateTimePicker
          Left = 262
          Top = 195
          Width = 121
          Height = 24
          Date = 42435.000000000000000000
          Format = ' '
          Time = 0.595104571759293300
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 37
          OnKeyUp = DatePerProduitGDKeyUp
        end
        object CodeBarProduitGEdt: TEdit
          Left = 447
          Top = 14
          Width = 178
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          NumbersOnly = True
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 1
          OnChange = CodeBarProduitGEdtChange
          OnEnter = CodeBarProduitGEdtEnter
          OnExit = CodeBarProduitGEdtExit
          OnKeyPress = CodeBarProduitGEdtKeyPress
        end
        object PMPProduitEdt: TEdit
          Left = 85
          Top = 435
          Width = 114
          Height = 26
          TabStop = False
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Color = 15722984
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 38
          Text = '0'
        end
        object MarkProduitGCbx: TComboBox
          Left = 508
          Top = 106
          Width = 115
          Height = 26
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 39
          Visible = False
          OnDropDown = MarkProduitGCbxEnter
          OnEnter = MarkProduitGCbxEnter
        end
      end
    end
    object PlusInfoClientGTB: TsTabSheet
      Caption = 'Plus D'#39'info'
      object PlusInfoTB: TPanel
        Left = 0
        Top = 0
        Width = 677
        Height = 579
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          677
          579)
        object ObserClientGLbl: TLabel
          Left = 11
          Top = 414
          Width = 95
          Height = 20
          Caption = 'Observations:'
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
        object Label30: TLabel
          Left = 18
          Top = 168
          Width = 88
          Height = 18
          Caption = 'Localisation:'
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
        object AddLocationProduitGBtn: TAdvToolButton
          Left = 384
          Top = 165
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
          OnClick = AddLocationProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object Label31: TLabel
          Left = 30
          Top = 107
          Width = 76
          Height = 18
          Caption = 'Max.Stock:'
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
        object Label32: TLabel
          Left = 33
          Top = 47
          Width = 73
          Height = 18
          Caption = 'Min.Stock:'
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
          Left = 512
          Top = 6
          Width = 109
          Height = 17
          Caption = 'Photo De produit'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 17
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
          StyleElements = []
        end
        object ImageEditProduitGBtn: TAdvToolButton
          Left = 449
          Top = 28
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
          ImageIndex = 22
          Images = MainForm.PanelIcons24
          ParentFont = False
          ParentShowHint = False
          Rounded = True
          Shaded = False
          ShowHint = True
          Spacing = -1
          Visible = False
          OnClick = ImageShowProduitGClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object ImageDeleteProduitGBtn: TAdvToolButton
          Left = 449
          Top = 57
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
          ImageIndex = 23
          Images = MainForm.PanelIcons24
          ParentFont = False
          ParentShowHint = False
          Rounded = True
          Shaded = False
          ShowHint = True
          Spacing = -1
          Visible = False
          OnClick = ImageDeleteProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object Shape1: TShape
          Left = 477
          Top = 25
          Width = 179
          Height = 205
          Pen.Color = 7854350
        end
        object ImageShowProduitG: TsImage
          Left = 478
          Top = 26
          Width = 177
          Height = 203
          Cursor = crHandPoint
          Center = True
          Picture.Data = {07544269746D617000000000}
          Proportional = True
          OnClick = ImageShowProduitGClick
          OnMouseEnter = ImageShowProduitGMouseEnter
          OnMouseLeave = ImageShowProduitGMouseLeave
          Blend = 40
          ImageIndex = 0
          Images = sAlphaImageList1
          Grayed = True
          SkinData.SkinSection = 'CHECKBOX'
        end
        object Label6: TLabel
          Left = 11
          Top = 256
          Width = 95
          Height = 18
          Caption = 'Les N'#176' S'#233'ries:'
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
        object LineP03: TPanel
          Left = 0
          Top = 246
          Width = 679
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 1
          StyleElements = []
        end
        object ObserProduitGMem: TMemo
          Left = 22
          Top = 435
          Width = 633
          Height = 128
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object LocalisationProduitGCbx: TComboBox
          Left = 112
          Top = 165
          Width = 270
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnDropDown = LocalisationProduitGCbxEnter
          OnEnter = LocalisationProduitGCbxEnter
        end
        object MinStockProduitGCbx: TEdit
          Left = 112
          Top = 44
          Width = 126
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 3
        end
        object MaxStockProduitGCbx: TEdit
          Left = 112
          Top = 104
          Width = 126
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 4
        end
        object Panel3: TPanel
          Left = 478
          Top = 25
          Width = 0
          Height = 203
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 5
          StyleElements = []
        end
        object Panel4: TPanel
          Left = 655
          Top = 25
          Width = 0
          Height = 203
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 6
          StyleElements = []
        end
        object Memo1: TMemo
          Left = 22
          Top = 277
          Width = 633
          Height = 128
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
    end
  end
  object BottomP: TPanel
    Left = 0
    Top = 614
    Width = 685
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    Color = 7854350
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
    object OKProduitGBtn: TAdvToolButton
      Left = 212
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
      OnClick = OKProduitGBtnClick
      Version = '1.7.2.0'
      TMSStyle = 0
    end
    object CancelProduitGBtn: TAdvToolButton
      Left = 378
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
      OnClick = CancelProduitGBtnClick
      Version = '1.7.2.0'
      TMSStyle = 0
    end
  end
  object OpenPictureDialogProduitG: TOpenPictureDialog
    Filter = 'JPEG graphics|*.jpg'
    Left = 596
    Top = 183
  end
  object sAlphaImageList1: TsAlphaImageList
    Height = 96
    Width = 96
    Items = <
      item
        ImageFormat = ifPNG
        ImageName = 'add_image-96'
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000005
          034944415478DAED9DDD4B145118C6D7EBE8BE3F60FF8B6E22C3B52805C23BF1
          26224010A8AB8C0CA12040DD2C2CB3C4EF3449934DA02FD5D24A8BA828B5B515
          4BD3483228F5FAEDBCC3CEB68CBB3B1FE79C993933AFF0C0B0F311BCBF7CDE73
          9E739C8D004084E49DA808048000900800012011000240220004804400080089
          001000925F01343C9D8F32D5312598D69920E45A4FD7026B129506803DBC88A9
          8669878A9E573BE91A150905902EFE2815D8B246AD42B00AA0868A6A5B354200
          A43D9F6CC7991D454500A8A3623A569D0800092AA463254400A0A126C7105504
          002A24870800012000048000A8A1DBAF5760E0E32FB89FFCAB098FF133022059
          5726937077EE373C58DAC9293C87D71000492A54FC6C08044092ED98155F9713
          3B220026429FB70A00AF25008285CDD62A00BC3654009A27173511000FD434B6
          0037675634E1315990CBBAF16219DA665735E13135611775F5592A537C5DF819
          0D43DDB09EF1CF9AED18016856C4CED1444CA6C698F5BCFCBAABF8192B62E7F0
          1A8A226459CF542A6FF133563495A2304E86E29AF5AC9A02C06BE292AC28B400
          1AD17A5E7D332D7EC68AD8B58D63044098AE4D2D592EBE2EBC870088B09E8924
          B4CDACDA0680F7E0BD0480CB7A16A0D586F518D5AA59D1020170AA96E925C7C5
          D785CFB03DDC9C5DD1146A00F1C945EEE2EB8ADB08EC5A58EF48A4B635B5B8D0
          477C0940B39E1CB35DC756C49E65C58A70369B9D7EE2B1D319AED2005AA69785
          15FFBF152D9B421F9CDF1D37E06732FB88EF00340BB41EA30AAD1DF4BCFF9937
          EBC173A100A067FCB200E45B3BC0866B1A354B6ACABE02909DF1CB9271ED406F
          BA6600643565DF00C895F1CB92BE76606CBA56961C4537655F00C897F1CBB422
          9C25E76ABA6612DD94BD076092F1CB52FFA74DDBC597D1943D076025E317ADDE
          0F1B8E8B2FBA297B0AC06AC62F529D6F7FB0026E730310D5943D036037E317A1
          F6376B30F2658BBBF89A0DCDA5E0C2E41DA8BA770E2AFAABA1ACB712625D659A
          F0183FAB1CAC85EA91EB50FFF0B9FF0038C9F8F9F41D86927FB88A3EB0B00667
          C76F41C5E00928EE8CD952795F159C1A6E804B8F66BD07E038E3E79095AD25F9
          34B4B809B5E3ED50DA536EBBF04695741D63209AE0F2E377DE00E0CDF8DD6EBA
          8D334FE0685F0577E18D3ADC7D1CCE24FADD072022E377A3E926D83D6837A20B
          6FD4A1CED8C508448A5C01109718B4896CBAC3CC724E26CE4B2F7E461DB19192
          EE923D520188CEF865355DFC9FEF6AF1B320E4FA4D10064046C62FA3E9BA613B
          85EC28D47FA0814DD16ED1CC7EEC3EEF604769452801E0B01047269E03E88C6D
          EC6F2FDB1B3A00383677621BA201A4551F2A00383BC509928F006C1FE838B22F
          3400302270DA382501C834E45000C09CC66F0098E6420100934A9EA1A3440070
          A027160D3C008C8BFD0AA0B8ABF474E0016066CF5360DE9F8243D2AE585FE001
          E0C2895F01304D04FEA57DB87AE56300C9C0BFB61297107D0C602BF02F6E0D02
          00A55F5DACBC05A9FEF26EE59BB0EAAFAF577E18AAFA1738283F1153FD2B4C94
          8F2282200CBE940DE382208C7E958DA383205CFCC04510251764026443F54A2E
          490645B8108E0BE2CA2DCA0749B82544B96D29D4903DDE9815BCEF6E8C14E136
          4165B6260651B851D655083C9B7383FC9BE0861D716F4F0F436376323AB232DA
          31365C025060889A9E276C0B283E3EA33E7BA849006CCC98D3B6E4243B9AC37B
          F5192E7DA3362F8C9E5814E362CCEC71E10457AF7009312D3C9ED0CEB16BF05A
          A7FFCE3F0F6AAD62752ECB450000000049454E44AE426082}
      end>
    Left = 634
    Top = 184
    Bitmap = {}
  end
end
