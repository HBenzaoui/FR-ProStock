object ProduitGestionF: TProduitGestionF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nouveau Produit'
  ClientHeight = 668
  ClientWidth = 662
  Color = 15527148
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 4207405
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
    Width = 662
    Height = 668
    ActivePage = GeneralClientGTB
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
        Width = 654
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          654
          633)
        object FamilleProduitGLbl: TLabel
          Left = 37
          Top = 162
          Width = 51
          Height = 17
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
          Width = 72
          Height = 17
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
          Left = 7
          Top = 63
          Width = 81
          Height = 17
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
          Left = 28
          Top = 360
          Width = 50
          Height = 17
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
          Top = 65
          Width = 7
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
          Top = 41
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
          Top = 162
          Width = 65
          Height = 17
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
          Left = 8
          Top = 207
          Width = 80
          Height = 17
          Alignment = taRightJustify
          Caption = 'Unit'#233' de M. :'
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
          Top = 207
          Width = 30
          Height = 17
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
          Left = 15
          Top = 250
          Width = 73
          Height = 17
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
          Top = 254
          Width = 19
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
          Top = 250
          Width = 35
          Height = 17
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
          Top = 250
          Width = 97
          Height = 17
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
          Top = 252
          Width = 33
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
          Left = 21
          Top = 424
          Width = 62
          Height = 17
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
          Top = 294
          Width = 85
          Height = 19
          Caption = 'Prix d'#39'achat'
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
          Top = 333
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
          Left = 469
          Top = 333
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
          Top = 294
          Width = 94
          Height = 19
          Caption = 'Prix de vente'
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
          Left = 574
          Top = 333
          Width = 36
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
        object PrixVHTDProduitLbl: TLabel
          Left = 220
          Top = 359
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
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
        object PrixVHTRProduitLbl: TLabel
          Left = 220
          Top = 392
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
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
        object PrixVHTGProduitLbl: TLabel
          Left = 220
          Top = 424
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
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
        object PrixVHTA1ProduitLbl: TLabel
          Left = 220
          Top = 456
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
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
        object PrixVHTA2ProduitLbl: TLabel
          Left = 220
          Top = 488
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
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
          Left = 626
          Top = 360
          Width = 13
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
          Left = 626
          Top = 392
          Width = 13
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
          Left = 626
          Top = 425
          Width = 13
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
          Left = 626
          Top = 456
          Width = 13
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
          Left = 626
          Top = 488
          Width = 13
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
          Left = 3
          Top = 545
          Width = 77
          Height = 17
          Caption = 'Stock initial:'
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
          Left = 464
          Top = 545
          Width = 45
          Height = 17
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
          Left = 214
          Top = 545
          Width = 88
          Height = 17
          Caption = 'Stock actuel :'
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
        object Label29: TLabel
          Left = 341
          Top = 208
          Width = 13
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
          Left = 601
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
          Left = 320
          Top = 18
          Width = 89
          Height = 17
          Caption = 'Code '#226' barre:'
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
          Top = 158
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
          Top = 158
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
          Top = 204
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
        object ShowCalculaturProduitGBtn: TAdvToolButton
          Left = 601
          Top = 292
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
          Left = 627
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
          Left = 627
          Top = 292
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
          Left = 38
          Top = 488
          Width = 41
          Height = 17
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
          Top = 162
          Width = 52
          Height = 17
          Caption = 'Marque:'
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
        object AddMarkProduitGBtn: TAdvToolButton
          Left = 627
          Top = 158
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
          OnClick = AddMarkProduitGBtnClick
          Version = '1.7.2.0'
          TMSStyle = 0
        end
        object Label6: TLabel
          Left = 39
          Top = 101
          Width = 49
          Height = 17
          Caption = 'D'#233'tails:'
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
        object NameProduitGErrorP: TPanel
          Left = 90
          Top = 57
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
          TabOrder = 34
          Visible = False
          StyleElements = []
        end
        object LineP: TPanel
          Left = 0
          Top = 288
          Width = 661
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 16537434
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 32
          StyleElements = []
        end
        object PrixAHTProduitEdt: TEdit
          Left = 85
          Top = 355
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 12
          OnChange = PrixAHTProduitEdtChange
          OnClick = PrixAHTProduitEdtClick
          OnExit = PrixAHTProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object NameProduitGEdt: TEdit
          Left = 92
          Top = 59
          Width = 531
          Height = 26
          BevelInner = bvSpace
          BevelKind = bkFlat
          BevelOuter = bvSpace
          Ctl3D = True
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
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
          Top = 158
          Width = 115
          Height = 26
          BevelEdges = []
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 4
          OnEnter = FamilleProduitGCbxEnter
          OnExit = FamilleProduitGCbxExit
        end
        object SFamilleProduitGCbx: TComboBox
          Left = 307
          Top = 158
          Width = 115
          Height = 26
          Style = csOwnerDrawVariable
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 5
          OnEnter = SFamilleProduitGCbxEnter
          OnExit = SFamilleProduitGCbxExit
        end
        object UniteProduitGCbx: TComboBox
          Left = 92
          Top = 204
          Width = 74
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = UniteProduitGCbxEnter
          OnExit = UniteProduitGCbxExit
        end
        object TVAProduitGCbx: TComboBox
          Left = 262
          Top = 204
          Width = 74
          Height = 26
          BiDiMode = bdLeftToRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemIndex = 0
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 8
          Text = '0'
          OnChange = TVAProduitGCbxChange
          OnKeyDown = TVAProduitGCbxKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
          Items.Strings = (
            '0')
        end
        object PerProduitGSlider: TsSlider
          Left = 92
          Top = 252
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
          TabOrder = 9
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
          Top = 247
          Width = 85
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 3
          NumbersOnly = True
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 11
          Text = '0'
          StyleElements = []
        end
        object PrixATTCProduitEdt: TEdit
          Left = 85
          Top = 419
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 13
          OnChange = PrixAHTProduitEdtChange
          OnClick = PrixATTCProduitEdtClick
          OnExit = PrixATTCProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object LineP3: TPanel
          Left = 86
          Top = 318
          Width = 60
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 16537434
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 33
          StyleElements = []
        end
        object PrixVHTDProduitEdt: TEdit
          Left = 314
          Top = 355
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
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
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVTTCDProduitEdt: TEdit
          Left = 438
          Top = 355
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
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
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object LineP4: TPanel
          Left = 406
          Top = 319
          Width = 71
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 16537434
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 35
          StyleElements = []
        end
        object MargeDProduitEdt: TEdit
          Left = 563
          Top = 355
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 16
          StyleElements = [seClient, seBorder]
          OnChange = MargeDProduitEdtChange
          OnClick = MargeDProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVHTRProduitEdt: TEdit
          Left = 314
          Top = 387
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 17
          OnChange = PrixVHTRProduitEdtChange
          OnClick = PrixVHTRProduitEdtClick
          OnExit = PrixVHTRProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVTTCRProduitEdt: TEdit
          Left = 438
          Top = 387
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 18
          OnChange = PrixVHTRProduitEdtChange
          OnClick = PrixVTTCRProduitEdtClick
          OnExit = PrixVTTCRProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object MargeRProduitEdt: TEdit
          Left = 563
          Top = 387
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 19
          OnChange = MargeRProduitEdtChange
          OnClick = MargeRProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVHTGProduitEdt: TEdit
          Left = 314
          Top = 419
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 20
          OnChange = PrixVHTGProduitEdtChange
          OnClick = PrixVHTGProduitEdtClick
          OnExit = PrixVHTGProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVTTCGProduitEdt: TEdit
          Left = 438
          Top = 419
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 21
          OnChange = PrixVHTGProduitEdtChange
          OnClick = PrixVTTCGProduitEdtClick
          OnExit = PrixVTTCGProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object MargeGProduitEdt: TEdit
          Left = 563
          Top = 419
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 22
          OnChange = MargeGProduitEdtChange
          OnClick = MargeGProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVHTA1ProduitEdt: TEdit
          Left = 314
          Top = 451
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 23
          OnChange = PrixVHTA1ProduitEdtChange
          OnClick = PrixVHTA1ProduitEdtClick
          OnExit = PrixVHTA1ProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVTTCA1ProduitEdt: TEdit
          Left = 438
          Top = 451
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 24
          OnChange = PrixVHTA1ProduitEdtChange
          OnClick = PrixVTTCA1ProduitEdtClick
          OnExit = PrixVTTCA1ProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object MargeA1ProduitEdt: TEdit
          Left = 563
          Top = 451
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 5
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 25
          OnChange = MargeA1ProduitEdtChange
          OnClick = MargeA1ProduitEdtClick
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVHTA2ProduitEdt: TEdit
          Left = 314
          Top = 483
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 26
          OnChange = PrixVHTA2ProduitEdtChange
          OnClick = PrixVHTA2ProduitEdtClick
          OnExit = PrixVHTA2ProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object PrixVTTCA2ProduitEdt: TEdit
          Left = 438
          Top = 483
          Width = 114
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 14
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 27
          OnChange = PrixVHTA2ProduitEdtChange
          OnClick = PrixVTTCA2ProduitEdtClick
          OnExit = PrixVTTCA2ProduitEdtExit
          OnKeyDown = PrixVHTDProduitEdtKeyDown
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object MargeA2ProduitEdt: TEdit
          Left = 563
          Top = 483
          Width = 60
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
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
          OnKeyPress = PrixAHTProduitEdtKeyPress
        end
        object LineP2: TPanel
          Left = 0
          Top = 527
          Width = 661
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 16537434
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 36
          StyleElements = []
        end
        object StockINProduitEdt: TEdit
          Left = 92
          Top = 542
          Width = 108
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 29
          OnKeyDown = PrixVHTDProduitEdtKeyDown
        end
        object StockAlertProduitEdt: TEdit
          Left = 515
          Top = 542
          Width = 108
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 30
          OnKeyDown = PrixVHTDProduitEdtKeyDown
        end
        object StockActuelProduitEdt: TEdit
          Left = 314
          Top = 542
          Width = 114
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
          TabOrder = 37
          Text = '0'
        end
        object LineP5: TPanel
          Left = 220
          Top = 288
          Width = 1
          Height = 239
          BevelOuter = bvNone
          Color = 16537434
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 38
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
          TabOrder = 39
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
          Font.Color = 4207405
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
          Top = 247
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
          TabOrder = 10
          OnKeyUp = DatePerProduitGDKeyUp
        end
        object CodeBarProduitGEdt: TEdit
          Left = 417
          Top = 14
          Width = 178
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
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
          Top = 483
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
          TabOrder = 31
          Text = '0'
        end
        object MarkProduitGCbx: TComboBox
          Left = 508
          Top = 158
          Width = 115
          Height = 26
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 6
          OnEnter = MarkProduitGCbxEnter
          OnExit = MarkProduitGCbxExit
        end
        object DetailProduitGMem: TMemo
          Left = 92
          Top = 101
          Width = 531
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = NSeriesProduitGMemChange
        end
      end
    end
    object PlusInfoClientGTB: TsTabSheet
      Caption = 'Plus d'#39'info'
      object PlusInfoTB: TPanel
        Left = 0
        Top = 0
        Width = 654
        Height = 633
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          654
          633)
        object ObserClientGLbl: TLabel
          Left = 11
          Top = 414
          Width = 96
          Height = 18
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
          Left = 17
          Top = 147
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
          Left = 431
          Top = 143
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
          Left = 28
          Top = 86
          Width = 77
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
          Left = 32
          Top = 26
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
          Left = 494
          Top = 6
          Width = 106
          Height = 17
          Caption = 'Photo de produit'
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
          Left = 431
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
          Left = 431
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
          Left = 459
          Top = 25
          Width = 179
          Height = 205
          Pen.Color = 7854350
        end
        object ImageShowProduitG: TsImage
          Left = 460
          Top = 25
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
        object NSeriesProduitGLbl: TLabel
          Left = 11
          Top = 256
          Width = 101
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
        object NSeriesCountProduitGLbl: TLabel
          Left = 537
          Top = 256
          Width = 101
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
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
        object Label28: TLabel
          Left = 8
          Top = 205
          Width = 97
          Height = 17
          Caption = 'Four. Principal:'
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
        object AddFourProduitGBtn: TAdvToolButton
          Left = 431
          Top = 200
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
        object LineP03: TPanel
          Left = 0
          Top = 246
          Width = 661
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 16537434
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 6
          StyleElements = []
        end
        object ObserProduitGMem: TMemo
          Left = 22
          Top = 435
          Width = 616
          Height = 128
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object LocalisationProduitGCbx: TComboBox
          Left = 110
          Top = 143
          Width = 317
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnDropDown = LocalisationProduitGCbxEnter
          OnEnter = LocalisationProduitGCbxEnter
        end
        object MinStockProduitGCbx: TEdit
          Left = 110
          Top = 22
          Width = 132
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 0
        end
        object MaxStockProduitGCbx: TEdit
          Left = 110
          Top = 82
          Width = 132
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 1
        end
        object NSeriesProduitGMem: TMemo
          Left = 22
          Top = 277
          Width = 616
          Height = 128
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = NSeriesProduitGMemChange
        end
        object FournisseurProduitGCbx: TComboBox
          Left = 111
          Top = 201
          Width = 317
          Height = 26
          Hint = 'Fournisseur principal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnDropDown = FournisseurProduitGCbxEnter
          OnEnter = FournisseurProduitGCbxEnter
        end
      end
    end
  end
  object BottomP: TPanel
    Left = 0
    Top = 612
    Width = 661
    Height = 2
    BevelOuter = bvNone
    Color = 16537434
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
  end
  object Panel1: TPanel
    Left = -3
    Top = 614
    Width = 668
    Height = 54
    BevelOuter = bvSpace
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object CancelProduitGBtn: TAdvToolButton
      Left = 419
      Top = 12
      Width = 100
      Height = 30
      Cursor = crHandPoint
      AutoThemeAdapt = False
      BorderColor = 16537434
      BorderDownColor = 16537434
      BorderHotColor = 13176452
      Color = clWhite
      ColorTo = clWhite
      ColorDown = clWhite
      ColorDownTo = clWhite
      ColorHot = clWhite
      ColorHotTo = clWhite
      ColorChecked = clNone
      DropDownSplit = False
      Caption = 'Annuler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16537434
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      ShowHint = True
      Spacing = -1
      OnClick = CancelProduitGBtnClick
      OnMouseEnter = CancelProduitGBtnMouseEnter
      OnMouseLeave = CancelProduitGBtnMouseLeave
      Version = '1.7.2.0'
      TMSStyle = 0
    end
    object OKProduitGBtn: TAdvToolButton
      Left = 532
      Top = 12
      Width = 100
      Height = 30
      Cursor = crHandPoint
      AutoThemeAdapt = False
      BorderColor = 16537434
      BorderDownColor = 16537434
      BorderHotColor = 13176452
      Color = 16537434
      ColorTo = 16537434
      ColorDown = 16537434
      ColorDownTo = 16537434
      ColorHot = 13176452
      ColorHotTo = 13176452
      ColorChecked = clNone
      DropDownSplit = False
      Caption = 'Valider'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      ShowHint = True
      Spacing = -1
      OnClick = OKProduitGBtnClick
      Version = '1.7.2.0'
      TMSStyle = 0
    end
  end
  object OpenPictureDialogProduitG: TOpenPictureDialog
    Filter = 'JPEG graphics|*.jpg'
    Left = 366
    Top = 49
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
    Left = 350
    Top = 100
    Bitmap = {}
  end
end
