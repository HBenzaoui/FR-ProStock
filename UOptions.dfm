object FOptions: TFOptions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 718
  ClientWidth = 437
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OptionsPgControl: TsPageControl
    Left = 0
    Top = 27
    Width = 437
    Height = 655
    ActivePage = GeneralOptionGTB
    Align = alClient
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Roboto'
    Font.Style = []
    MultiLine = True
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    StyleElements = []
    AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeGlobalDef]
    TabsLineSkin = 'BAR'
    ExplicitHeight = 611
    object GeneralOptionGTB: TsTabSheet
      Caption = 'Enterprise'
      ExplicitTop = 50
      ExplicitHeight = 610
      DesignSize = (
        429
        605)
      object ImageDeleteProduitGBtn: TAdvToolButton
        Left = 405
        Top = 252
        Width = 26
        Height = 30
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
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object ImageEditProduitGBtn: TAdvToolButton
        Left = 405
        Top = 223
        Width = 26
        Height = 30
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
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object Label10: TLabel
        Left = 10
        Top = 201
        Width = 37
        Height = 16
        Caption = 'Logo :'
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
      object Label6: TLabel
        Left = 10
        Top = 0
        Width = 107
        Height = 16
        Caption = 'Nom d'#39'enterprise:'
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
      object Label7: TLabel
        Left = 10
        Top = 50
        Width = 67
        Height = 16
        Caption = 'T'#233'l'#233'phone:'
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
      object Label8: TLabel
        Left = 10
        Top = 101
        Width = 44
        Height = 16
        Caption = 'Mobile:'
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
      object Label9: TLabel
        Left = 10
        Top = 152
        Width = 52
        Height = 16
        Caption = 'Adresse:'
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
      object Shape1: TShape
        Left = 25
        Top = 225
        Width = 382
        Height = 108
        Pen.Color = 7854350
      end
      object ImageCompanyOptionImg: TsImage
        Left = 26
        Top = 226
        Width = 380
        Height = 106
        Cursor = crHandPoint
        Center = True
        Picture.Data = {07544269746D617000000000}
        Proportional = True
        OnClick = ImageCompanyOptionImgClick
        OnMouseEnter = ImageCompanyOptionImgMouseEnter
        OnMouseLeave = ImageCompanyOptionImgMouseLeave
        Blend = 40
        ImageIndex = 0
        Images = sAlphaImageList1
        Grayed = True
        SkinData.SkinSection = 'CHECKBOX'
      end
      object RCCompanyGLbl: TLabel
        Left = 10
        Top = 348
        Width = 23
        Height = 18
        Caption = 'RC:'
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
      object NIFCompanyGLbl: TLabel
        Left = 10
        Top = 399
        Width = 27
        Height = 18
        Caption = 'NIF:'
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
      object NArtCompanyLbl: TLabel
        Left = 10
        Top = 447
        Width = 40
        Height = 18
        Caption = 'N'#176'Art:'
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
      object NISCompanyGLbl: TLabel
        Left = 10
        Top = 497
        Width = 28
        Height = 18
        Caption = 'NIS:'
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
      object Label51: TLabel
        Left = 10
        Top = 548
        Width = 28
        Height = 18
        Caption = 'RIB:'
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
      object AdrCompanyOptionEdt: TEdit
        Left = 25
        Top = 172
        Width = 381
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
        TabOrder = 3
      end
      object MobCompanyOptionEdt: TEdit
        Left = 25
        Top = 122
        Width = 381
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
        TabOrder = 2
      end
      object NameCompanyOptionEdt: TEdit
        Left = 25
        Top = 22
        Width = 381
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
        TabOrder = 0
      end
      object TelCompanyOptionEdt: TEdit
        Left = 25
        Top = 72
        Width = 381
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
        TabOrder = 1
      end
      object NIFCompanyGEdt: TEdit
        Left = 25
        Top = 419
        Width = 381
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
        TabOrder = 5
      end
      object RCCompanyGEdt: TEdit
        Left = 25
        Top = 367
        Width = 381
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
        TabOrder = 4
      end
      object NArtCompanyGEdt: TEdit
        Left = 25
        Top = 469
        Width = 381
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
        TabOrder = 6
      end
      object NISCompanyGEdt: TEdit
        Left = 25
        Top = 519
        Width = 381
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
        TabOrder = 7
      end
      object Panel2: TPanel
        Left = -3
        Top = 345
        Width = 434
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = 7854350
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 8
        StyleElements = []
      end
      object RIBCompanyGEdt: TEdit
        Left = 25
        Top = 570
        Width = 381
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
        TabOrder = 9
      end
    end
    object sTabSheet7: TsTabSheet
      Caption = 'Impression'
      ExplicitHeight = 561
      DesignSize = (
        429
        605)
      object AutoImL: TLabel
        Left = 10
        Top = 17
        Width = 171
        Height = 15
        Caption = 'Impression Auto sur Comptoir:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object CaiseeLbl: TLabel
        Left = 10
        Top = 51
        Width = 196
        Height = 16
        Caption = 'Imprimante de caisse par d'#233'faut:'
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
      object Label2: TLabel
        Left = 10
        Top = 111
        Width = 224
        Height = 16
        Caption = 'Imprimante de Code barre par d'#233'faut:'
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
      object Label3: TLabel
        Left = 10
        Top = 160
        Width = 176
        Height = 16
        Caption = 'Format d'#39#233'tiquette par d'#233'faut:'
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
      object Label4: TLabel
        Left = 10
        Top = 208
        Width = 210
        Height = 16
        Caption = 'Prix de vente d'#39#233'tiquette par d'#233'faut:'
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
      object Label1: TLabel
        Left = 10
        Top = 272
        Width = 213
        Height = 16
        Caption = 'Format Bon de Livraison par d'#233'faut:'
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
      object Label5: TLabel
        Left = 10
        Top = 320
        Width = 218
        Height = 16
        Caption = 'Format Facture Proforma par d'#233'faut:'
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
      object Label43: TLabel
        Left = 10
        Top = 369
        Width = 213
        Height = 16
        Caption = 'Format Facture de Vente par d'#233'faut:'
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
      object Label44: TLabel
        Left = 10
        Top = 419
        Width = 218
        Height = 16
        Caption = 'Format Bon de R'#233'ception par d'#233'faut:'
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
      object Label45: TLabel
        Left = 10
        Top = 467
        Width = 206
        Height = 16
        Caption = 'Format Facture d'#39'Achat par d'#233'faut:'
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
      object APrintOptionGSlider: TsSlider
        Left = 190
        Top = 18
        Width = 37
        Height = 15
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Color = 2497560
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
        TabOrder = 0
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
      end
      object PrinterCaisse80mmOptionCaisseRdioBtn: TRadioButton
        Left = 279
        Top = 51
        Width = 63
        Height = 17
        Caption = '80 mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object PrinterCaisse57mmOptionCaisseRdioBtn: TRadioButton
        Left = 346
        Top = 51
        Width = 61
        Height = 17
        Caption = '57 mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object PrintersListFOptionCaisseCbx: TComboBox
        Left = 25
        Top = 72
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object LineP: TPanel
        Left = -5
        Top = 106
        Width = 434
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = 7854350
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 4
        StyleElements = []
      end
      object PrintersListFOptionCodeBCbx: TComboBox
        Left = 25
        Top = 132
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object FormatFOptionCodeBCbx: TComboBox
        Left = 25
        Top = 181
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Items.Strings = (
          '40X20 Code 128 avec prix'
          '40X20 Code 128 sans prix'
          '40X20 Code 128 sans tous'
          '45X35 Code 128 avec prix'
          '45X35 Code 128 sans prix'
          '40X20 Porduit avec prix'
          '47X30 Code 128 avec prix'
          '47X30 Code 128 sans prix'
          '58X45 Porduit avec prix')
      end
      object PrixVenteListFOptionCodeBCbx: TComboBox
        Left = 25
        Top = 229
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Items.Strings = (
          'Prix D'#233'tail'
          'Prix Revendeur'
          'Prix Gros'
          'Prix Autre 1'
          'Prix Autre 2')
      end
      object Panel3: TPanel
        Left = -5
        Top = 262
        Width = 434
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = 7854350
        DoubleBuffered = True
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 8
        StyleElements = []
      end
      object FormatBLOptionCbx: TComboBox
        Left = 25
        Top = 293
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Items.Strings = (
          'Bon de livraison'
          'Bon de livraison (A5)'
          'Bon de livraison hors taxe'
          'Bon de livraison simple'
          'Bon de r'#232'glement'
          'Bon de r'#232'glement (A5)'
          'Bon de livraison sans les cr'#233'dits'
          'Bon de livraison hors taxe sans les cr'#233'dits'
          'Bon de caisse sans les cr'#233'dits')
      end
      object FormatFPOptionCbx: TComboBox
        Left = 25
        Top = 341
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        Items.Strings = (
          'Facture proforma'
          'Facture proforma avec les cr'#233'dits')
      end
      object FormatFVOptionCbx: TComboBox
        Left = 25
        Top = 390
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        Items.Strings = (
          'Facture de vente'
          'Facture de vente avec les cr'#233'dits')
      end
      object FormatBROptionCbx: TComboBox
        Left = 25
        Top = 440
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        Items.Strings = (
          'Bon de r'#233'ception'
          'Bon de r'#233'ception hors taxe'
          'Bon de r'#233'ception sans les cr'#233'dits'
          'Bon de r'#233'ception hors taxe sans les cr'#233'dits')
      end
      object FormatFAOptionCbx: TComboBox
        Left = 25
        Top = 488
        Width = 381
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Items.Strings = (
          'Facture d'#39'Achat'
          'Facture d'#39'Achat avec les cr'#233'dits')
      end
    end
    object sTabSheet1: TsTabSheet
      Caption = 'Utilit'#233's'
      ExplicitHeight = 561
      object Panel1: TPanel
        Left = 3
        Top = 6
        Width = 476
        Height = 294
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          476
          294)
        object Label11: TLabel
          Left = 7
          Top = 0
          Width = 128
          Height = 21
          Caption = 'Afficheur client'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 22
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 9
          Top = 32
          Width = 38
          Height = 15
          Caption = 'Active:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object PoleDisplayCOMListLbl: TLabel
          Left = 9
          Top = 55
          Width = 151
          Height = 16
          Caption = 'Port de cummunications:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object PoleDisplayMsgLbl: TLabel
          Left = 9
          Top = 106
          Width = 108
          Height = 16
          Caption = 'Premier message:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object PoleDisplayMsg2Lbl: TLabel
          Left = 9
          Top = 160
          Width = 105
          Height = 16
          Caption = 'Dernier message:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object PoleDisplayTotalLbl: TLabel
          Left = 9
          Top = 219
          Width = 89
          Height = 16
          Caption = #192' la fin montre:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object TestPoleBtn: TsSpeedButton
          Left = 383
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Ferm'#233'r'
          Anchors = [akTop, akRight]
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          OnClick = TestPoleBtnClick
          SkinData.SkinSection = 'SPEEDBUTTON'
          Images = MainForm.PanelIcons24
          ImageIndex = 51
        end
        object TestPoleLbl: TLabel
          Left = 385
          Top = 32
          Width = 26
          Height = 16
          Caption = 'Test'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object PoleDisplayActiveSdr: TsSlider
          Left = 53
          Top = 32
          Width = 37
          Height = 15
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 0
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
          OnChanging = PoleDisplayActiveSdrChanging
        end
        object PoleDisplayCOMListCbx: TComboBox
          Left = 22
          Top = 76
          Width = 392
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnDropDown = PoleDisplayCOMListCbxDropDown
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9'
            'COM10'
            'COM11'
            'COM12')
        end
        object PoleDisplayMsgEdt: TEdit
          Left = 21
          Top = 130
          Width = 391
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 19
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 2
          Text = 'SOYEZ LES BIENVENUS'
        end
        object PoleDisplayMsg2Edt: TEdit
          Left = 22
          Top = 184
          Width = 391
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 19
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 3
          Text = 'MERCI ET A BIENTOT'
        end
        object PoleDisplayTotalEdt: TComboBox
          Left = 20
          Top = 240
          Width = 392
          Height = 24
          Style = csDropDownList
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 4
          Text = 'Totat'
          Items.Strings = (
            'Totat'
            'Rendu')
        end
      end
      object Panel5: TPanel
        Left = -4
        Top = 306
        Width = 448
        Height = 297
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          448
          297)
        object Label17: TLabel
          Left = 10
          Top = -2
          Width = 103
          Height = 21
          Caption = 'Tiroir caisse'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 22
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 16
          Top = 29
          Width = 38
          Height = 15
          Caption = 'Active:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object CaseCOMLbl: TLabel
          Left = 19
          Top = 83
          Width = 151
          Height = 16
          Caption = 'Port de cummunications:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object CasePrinterLbl: TLabel
          Left = 21
          Top = 175
          Width = 148
          Height = 16
          Caption = 'L'#39'imprimante connect'#233'e:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object TiroirCaisseCasePasswordLbl: TLabel
          Left = 11
          Top = 244
          Width = 275
          Height = 15
          Caption = 'Ouvrez le tiroir avec le mot de passe d'#39'utilisateur:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object TestTeroirBtn: TsSpeedButton
          Left = 389
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Ferm'#233'r'
          Anchors = [akTop, akRight]
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          OnClick = TestTeroirBtnClick
          SkinData.SkinSection = 'SPEEDBUTTON'
          Images = MainForm.PanelIcons24
          ImageIndex = 52
        end
        object TestTeroirLbl: TLabel
          Left = 391
          Top = 32
          Width = 26
          Height = 16
          Caption = 'Test'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object TiroirCaisseActiveSdr: TsSlider
          Left = 60
          Top = 29
          Width = 37
          Height = 15
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 0
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
          OnChanging = TiroirCaisseActiveSdrChanging
        end
        object TiroirCaisseCOMListCbx: TComboBox
          Left = 27
          Top = 105
          Width = 392
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnDropDown = TiroirCaisseCOMListCbxDropDown
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9'
            'COM10'
            'COM11'
            'COM12')
        end
        object TiroirCaisseCasePRINTRbtn: TcxRadioButton
          Tag = 1
          Left = 16
          Top = 150
          Width = 259
          Height = 17
          Caption = 'Cas RJ11 Connect'#233' '#224' une imprimante USB'
          Enabled = False
          TabOrder = 3
          OnClick = TiroirCaisseCasePRINTRbtnClick
        end
        object TiroirCaissePrinterListCbx: TComboBox
          Left = 27
          Top = 197
          Width = 392
          Height = 24
          Style = csDropDownList
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object TiroirCaisseCaseCOMRbtn: TcxRadioButton
          Left = 15
          Top = 59
          Width = 129
          Height = 17
          Caption = 'Cas COM/USB Port'
          Checked = True
          Enabled = False
          TabOrder = 1
          TabStop = True
          OnClick = TiroirCaisseCaseCOMRbtnClick
        end
        object Panel6: TPanel
          Left = 7
          Top = 138
          Width = 433
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 6
          StyleElements = []
        end
        object Panel10: TPanel
          Left = 9
          Top = 230
          Width = 433
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 7
          StyleElements = []
        end
        object TiroirCaisseCasePasswordSdr: TsSlider
          Left = 294
          Top = 244
          Width = 37
          Height = 15
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
          Ctl3D = False
          Enabled = False
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
          TabOrder = 5
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
        end
      end
      object Panel7: TPanel
        Left = -4
        Top = 293
        Width = 448
        Height = 4
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 2
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 4
        Height = 605
        Align = alLeft
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 3
        ExplicitHeight = 561
      end
      object Panel9: TPanel
        Left = 424
        Top = 0
        Width = 5
        Height = 605
        Align = alRight
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 4
        ExplicitHeight = 561
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = 'Base de donn'#233
      ExplicitHeight = 561
      object Panel11: TPanel
        Left = 3
        Top = 6
        Width = 476
        Height = 513
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          476
          513)
        object Label13: TLabel
          Left = 8
          Top = 0
          Width = 104
          Height = 21
          Caption = 'Initialisation'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 22
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label15: TLabel
          Left = 11
          Top = 368
          Width = 31
          Height = 15
          Caption = 'Tous:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4666873
          Font.Height = 15
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
          StyleElements = []
        end
        object ResetDBBtn: TsSpeedButton
          Left = 383
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Ferm'#233'r'
          Anchors = [akTop, akRight]
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ResetDBBtnClick
          SkinData.SkinSection = 'SPEEDBUTTON'
          Images = MainForm.PanelIcons24
          ImageIndex = 53
        end
        object Label21: TLabel
          Left = 374
          Top = 32
          Width = 48
          Height = 16
          Caption = 'initialise'
          Color = 4207405
          Enabled = False
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
          Left = 30
          Top = 87
          Width = 98
          Height = 14
          Caption = 'Bons au Comptoir:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label18: TLabel
          Left = 25
          Top = 107
          Width = 103
          Height = 14
          Caption = 'Bons des Livraison:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label19: TLabel
          Left = 20
          Top = 147
          Width = 109
          Height = 14
          Caption = 'Factures des Ventes:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label20: TLabel
          Left = 20
          Top = 127
          Width = 108
          Height = 14
          Caption = 'Bons des R'#233'ception:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label22: TLabel
          Left = 4
          Top = 227
          Width = 125
          Height = 14
          Caption = 'R'#232'glement Fournisseur:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label23: TLabel
          Left = 31
          Top = 207
          Width = 98
          Height = 14
          Caption = 'R'#232'glement Clients:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label24: TLabel
          Left = 29
          Top = 187
          Width = 100
          Height = 14
          Caption = 'Factures Proforma:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label25: TLabel
          Left = 32
          Top = 168
          Width = 97
          Height = 14
          Caption = 'Factures d'#39'Achats:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label26: TLabel
          Left = 59
          Top = 267
          Width = 70
          Height = 14
          Caption = 'Les Banques:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label27: TLabel
          Left = 65
          Top = 247
          Width = 64
          Height = 14
          Caption = 'Les Caisses:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label28: TLabel
          Left = 329
          Top = 87
          Width = 48
          Height = 14
          Caption = 'Produits:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label29: TLabel
          Left = 338
          Top = 107
          Width = 39
          Height = 14
          Caption = 'Clients:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label30: TLabel
          Left = 310
          Top = 147
          Width = 67
          Height = 14
          Caption = 'Les Charges:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label31: TLabel
          Left = 305
          Top = 127
          Width = 72
          Height = 14
          Caption = 'Fournisseurs:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label32: TLabel
          Left = 340
          Top = 227
          Width = 37
          Height = 14
          Caption = 'Unites:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label33: TLabel
          Left = 256
          Top = 207
          Width = 121
          Height = 14
          Caption = 'Produits Sous Familes:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label34: TLabel
          Left = 286
          Top = 187
          Width = 91
          Height = 14
          Caption = 'Produits Familes:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label35: TLabel
          Left = 320
          Top = 168
          Width = 57
          Height = 14
          Caption = 'Les Pertes:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label36: TLabel
          Left = 280
          Top = 331
          Width = 97
          Height = 14
          Caption = 'Dettes des clients:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label37: TLabel
          Left = 306
          Top = 247
          Width = 71
          Height = 14
          Caption = 'Localitations:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label38: TLabel
          Left = 203
          Top = 9
          Width = 74
          Height = 14
          Caption = 'Mot de Passe:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label39: TLabel
          Left = 248
          Top = 350
          Width = 129
          Height = 14
          Caption = 'Dettes des fournisseurs:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label47: TLabel
          Left = 163
          Top = 369
          Width = 214
          Height = 14
          Caption = 'Les bons non valid'#233'es dans le Comptoir:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 14
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label48: TLabel
          Left = 65
          Top = 54
          Width = 65
          Height = 18
          Caption = 'Les Bons'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label49: TLabel
          Left = 162
          Top = 54
          Width = 103
          Height = 18
          Caption = 'Les op'#233'rations'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label50: TLabel
          Left = 340
          Top = 54
          Width = 47
          Height = 18
          Caption = 'Listing'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object AllSdr0: TsSlider
          Left = 45
          Top = 370
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4666873
          Font.Height = 12
          Font.Name = 'Roboto'
          Font.Style = []
          StyleElements = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = False
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
          OnChanging = AllSdr0Changing
        end
        object CtrSdr1: TsSlider
          Left = 130
          Top = 88
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 1
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
        end
        object BLSdr2: TsSlider
          Left = 130
          Top = 108
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 2
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
        end
        object FVSdr4: TsSlider
          Left = 130
          Top = 148
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 3
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
        end
        object BRSdr3: TsSlider
          Left = 130
          Top = 128
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 4
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
        end
        object RFSdr8: TsSlider
          Left = 130
          Top = 228
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 5
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
        end
        object RCSdr7: TsSlider
          Left = 130
          Top = 208
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 6
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
        end
        object FPSdr6: TsSlider
          Left = 130
          Top = 188
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
        end
        object FASdr5: TsSlider
          Left = 130
          Top = 168
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 8
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
        end
        object BankSdr10: TsSlider
          Left = 130
          Top = 268
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
        end
        object CaisseSdr9: TsSlider
          Left = 130
          Top = 248
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 10
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
        end
        object ClientCreditSdr20: TsSlider
          Left = 379
          Top = 332
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 11
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
        end
        object localSdr19: TsSlider
          Left = 379
          Top = 248
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 12
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
        end
        object ClientSdr12: TsSlider
          Left = 379
          Top = 107
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 13
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
          OnChanging = ClientSdr12Changing
        end
        object ChargeSdr14: TsSlider
          Left = 379
          Top = 148
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 14
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
        end
        object FourSdr13: TsSlider
          Left = 379
          Top = 128
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 15
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
          OnChanging = FourSdr13Changing
        end
        object UniteSdr18: TsSlider
          Left = 379
          Top = 228
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 16
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
        end
        object PSFamileSdr17: TsSlider
          Left = 379
          Top = 208
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 17
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
        end
        object PFamileSdr16: TsSlider
          Left = 379
          Top = 188
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 18
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
        end
        object PerteSdr15: TsSlider
          Left = 379
          Top = 168
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 19
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
        end
        object ProduitSdr11: TsSlider
          Left = 379
          Top = 88
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 20
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
          OnChanging = ProduitSdr11Changing
        end
        object ResetDBPaswordGEdt: TEdit
          Left = 280
          Top = 4
          Width = 97
          Height = 23
          Alignment = taCenter
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          PasswordChar = #8226
          ShowHint = False
          TabOrder = 21
          OnChange = ResetDBPaswordGEdtChange
          OnMouseEnter = ResetDBPaswordGEdtMouseEnter
        end
        object FourCreditSdr21: TsSlider
          Left = 379
          Top = 351
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 22
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
        end
        object CtrNoValidBonSdr22: TsSlider
          Left = 379
          Top = 369
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 23
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
        end
        object CtrSdrF23: TsSlider
          Left = 190
          Top = 88
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 24
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
        end
        object BLSdrF24: TsSlider
          Left = 190
          Top = 108
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 25
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
        end
        object BRSdrF25: TsSlider
          Left = 190
          Top = 128
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 26
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
        end
        object FVSdrF26: TsSlider
          Left = 190
          Top = 148
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 27
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
        end
        object FASdrF27: TsSlider
          Left = 190
          Top = 168
          Width = 35
          Height = 12
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 28
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
        end
      end
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 4
        Height = 605
        Align = alLeft
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 1
        ExplicitHeight = 561
      end
      object Panel17: TPanel
        Left = 424
        Top = 0
        Width = 5
        Height = 605
        Align = alRight
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 2
        ExplicitHeight = 561
      end
    end
    object sTabSheet3: TsTabSheet
      Caption = 'Produit Favoris'
      ExplicitHeight = 561
      DesignSize = (
        429
        605)
      object Label40: TLabel
        Left = 0
        Top = 0
        Width = 429
        Height = 40
        Align = alTop
        AutoSize = False
        Caption = ' Produit Favoris'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 22
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 440
      end
      object EditFavOSp: TsSpeedButton
        Left = 360
        Top = 5
        Width = 30
        Height = 30
        Hint = 'Ajout Fav'
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        OnClick = EditFavOSpClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 55
        ExplicitLeft = 371
      end
      object SaveFavOSp: TsSpeedButton
        Left = 396
        Top = 5
        Width = 30
        Height = 30
        Hint = 'Ferm'#233'r'
        Anchors = [akTop, akRight]
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SaveFavOSpClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 17
        ExplicitLeft = 407
      end
      object FavProduitOptPgControl: TsPageControl
        Left = 0
        Top = 40
        Width = 429
        Height = 565
        ActivePage = Fav1ListTB
        Align = alClient
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 13
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        MultiLine = True
        ParentDoubleBuffered = False
        ParentFont = False
        TabHeight = 40
        TabOrder = 0
        TabWidth = 42
        StyleElements = []
        ShowFocus = False
        TabsLineSkin = 'DIVIDER'
        ExplicitHeight = 521
        object Fav1ListTB: TsTabSheet
          Caption = 'Liste 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 471
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 421
            Height = 2
            Align = alTop
            BevelOuter = bvNone
            Color = 8469216
            ParentBackground = False
            TabOrder = 0
            StyleElements = []
          end
          object GridPanel2: TGridPanel
            Left = 0
            Top = 2
            Width = 421
            Height = 513
            Align = alClient
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Color = clWhite
            ColumnCollection = <
              item
                Value = 50.000000000000000000
              end
              item
                Value = 50.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Fav1sp
                Row = 0
              end
              item
                Column = 1
                Control = Fav2sp
                Row = 0
              end
              item
                Column = 0
                Control = Fav3sp
                Row = 1
              end
              item
                Column = 1
                Control = Fav4sp
                Row = 1
              end
              item
                Column = 0
                Control = Fav5sp
                Row = 2
              end
              item
                Column = 1
                Control = Fav6sp
                Row = 2
              end
              item
                Column = 0
                Control = Fav7sp
                Row = 3
              end
              item
                Column = 1
                Control = Fav8sp
                Row = 3
              end
              item
                Column = 0
                Control = Fav9sp
                Row = 4
              end
              item
                Column = 1
                Control = Fav10sp
                Row = 4
              end
              item
                Column = 0
                Control = Fav11sp
                Row = 5
              end
              item
                Column = 1
                Control = Fav12sp
                Row = 5
              end>
            Ctl3D = False
            Locked = True
            ParentBiDiMode = False
            ParentBackground = False
            ParentCtl3D = False
            RowCollection = <
              item
                Value = 16.671429660133540000
              end
              item
                Value = 16.669524172383990000
              end
              item
                Value = 16.667618902425200000
              end
              item
                Value = 16.665713850232300000
              end
              item
                Value = 16.663809015780390000
              end
              item
                Value = 16.661904399044590000
              end>
            ShowCaption = False
            TabOrder = 1
            ExplicitHeight = 469
            DesignSize = (
              421
              513)
            object Fav1sp: TsSpeedButton
              Left = 25
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 16
            end
            object Fav2sp: TsSpeedButton
              Left = 235
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 16
            end
            object Fav3sp: TsSpeedButton
              Left = 25
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 99
            end
            object Fav4sp: TsSpeedButton
              Left = 235
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 99
            end
            object Fav5sp: TsSpeedButton
              Left = 25
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
            end
            object Fav6sp: TsSpeedButton
              Left = 235
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
            end
            object Fav7sp: TsSpeedButton
              Left = 25
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 265
            end
            object Fav8sp: TsSpeedButton
              Left = 235
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 265
            end
            object Fav9sp: TsSpeedButton
              Left = 25
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 348
            end
            object Fav10sp: TsSpeedButton
              Left = 235
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 348
            end
            object Fav11sp: TsSpeedButton
              Left = 25
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 432
            end
            object Fav12sp: TsSpeedButton
              Left = 235
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 432
            end
          end
        end
        object Fav2ListTB: TsTabSheet
          Caption = 'Liste 2'
          ExplicitHeight = 471
          object Panel31: TPanel
            Left = 0
            Top = 0
            Width = 421
            Height = 2
            Align = alTop
            BevelOuter = bvNone
            Color = 8637171
            ParentBackground = False
            TabOrder = 0
            StyleElements = []
          end
          object GridPanel3: TGridPanel
            Left = 0
            Top = 2
            Width = 421
            Height = 513
            Align = alClient
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Color = clWhite
            ColumnCollection = <
              item
                Value = 50.000000000000000000
              end
              item
                Value = 50.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Fav13sp
                Row = 0
              end
              item
                Column = 1
                Control = Fav14sp
                Row = 0
              end
              item
                Column = 0
                Control = Fav15sp
                Row = 1
              end
              item
                Column = 1
                Control = Fav16sp
                Row = 1
              end
              item
                Column = 0
                Control = Fav17sp
                Row = 2
              end
              item
                Column = 1
                Control = Fav18sp
                Row = 2
              end
              item
                Column = 0
                Control = Fav19sp
                Row = 3
              end
              item
                Column = 1
                Control = Fav20sp
                Row = 3
              end
              item
                Column = 0
                Control = Fav21sp
                Row = 4
              end
              item
                Column = 1
                Control = Fav22sp
                Row = 4
              end
              item
                Column = 0
                Control = Fav23sp
                Row = 5
              end
              item
                Column = 1
                Control = Fav24sp
                Row = 5
              end>
            Ctl3D = False
            Locked = True
            ParentBiDiMode = False
            ParentBackground = False
            ParentCtl3D = False
            RowCollection = <
              item
                Value = 16.671429660133540000
              end
              item
                Value = 16.669524172383990000
              end
              item
                Value = 16.667618902425200000
              end
              item
                Value = 16.665713850232300000
              end
              item
                Value = 16.663809015780390000
              end
              item
                Value = 16.661904399044590000
              end>
            ShowCaption = False
            TabOrder = 1
            ExplicitHeight = 469
            DesignSize = (
              421
              513)
            object Fav13sp: TsSpeedButton
              Left = 25
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 11
            end
            object Fav14sp: TsSpeedButton
              Left = 235
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 11
            end
            object Fav15sp: TsSpeedButton
              Left = 25
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 94
            end
            object Fav16sp: TsSpeedButton
              Left = 235
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 94
            end
            object Fav17sp: TsSpeedButton
              Left = 25
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 177
            end
            object Fav18sp: TsSpeedButton
              Left = 235
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 177
            end
            object Fav19sp: TsSpeedButton
              Left = 25
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 260
            end
            object Fav20sp: TsSpeedButton
              Left = 235
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 260
            end
            object Fav21sp: TsSpeedButton
              Left = 25
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 343
            end
            object Fav22sp: TsSpeedButton
              Left = 235
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 343
            end
            object Fav23sp: TsSpeedButton
              Left = 25
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 427
            end
            object Fav24sp: TsSpeedButton
              Left = 235
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 427
            end
          end
        end
        object Fav3ListTB: TsTabSheet
          Caption = 'Liste 3'
          ExplicitHeight = 471
          object Panel32: TPanel
            Left = 0
            Top = 0
            Width = 421
            Height = 2
            Align = alTop
            BevelOuter = bvNone
            Color = 13344790
            ParentBackground = False
            TabOrder = 0
            StyleElements = []
          end
          object GridPanel4: TGridPanel
            Left = 0
            Top = 2
            Width = 421
            Height = 513
            Align = alClient
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Color = clWhite
            ColumnCollection = <
              item
                Value = 50.000000000000000000
              end
              item
                Value = 50.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Fav25sp
                Row = 0
              end
              item
                Column = 1
                Control = Fav26sp
                Row = 0
              end
              item
                Column = 0
                Control = Fav27sp
                Row = 1
              end
              item
                Column = 1
                Control = Fav28sp
                Row = 1
              end
              item
                Column = 0
                Control = Fav29sp
                Row = 2
              end
              item
                Column = 1
                Control = Fav30sp
                Row = 2
              end
              item
                Column = 0
                Control = Fav31sp
                Row = 3
              end
              item
                Column = 1
                Control = Fav32sp
                Row = 3
              end
              item
                Column = 0
                Control = Fav33sp
                Row = 4
              end
              item
                Column = 1
                Control = Fav34sp
                Row = 4
              end
              item
                Column = 0
                Control = Fav35sp
                Row = 5
              end
              item
                Column = 1
                Control = Fav36sp
                Row = 5
              end>
            Ctl3D = False
            Locked = True
            ParentBiDiMode = False
            ParentBackground = False
            ParentCtl3D = False
            RowCollection = <
              item
                Value = 16.671429660133540000
              end
              item
                Value = 16.669524172383990000
              end
              item
                Value = 16.667618902425200000
              end
              item
                Value = 16.665713850232300000
              end
              item
                Value = 16.663809015780390000
              end
              item
                Value = 16.661904399044590000
              end>
            ShowCaption = False
            TabOrder = 1
            ExplicitHeight = 469
            DesignSize = (
              421
              513)
            object Fav25sp: TsSpeedButton
              Left = 25
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 16
            end
            object Fav26sp: TsSpeedButton
              Left = 235
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 16
            end
            object Fav27sp: TsSpeedButton
              Left = 25
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 99
            end
            object Fav28sp: TsSpeedButton
              Left = 235
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 99
            end
            object Fav29sp: TsSpeedButton
              Left = 25
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
            end
            object Fav30sp: TsSpeedButton
              Left = 235
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
            end
            object Fav31sp: TsSpeedButton
              Left = 25
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 265
            end
            object Fav32sp: TsSpeedButton
              Left = 235
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 265
            end
            object Fav33sp: TsSpeedButton
              Left = 25
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 348
            end
            object Fav34sp: TsSpeedButton
              Left = 235
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 348
            end
            object Fav35sp: TsSpeedButton
              Left = 25
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 432
            end
            object Fav36sp: TsSpeedButton
              Left = 235
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 432
            end
          end
        end
        object Fav4ListTB: TsTabSheet
          Caption = 'Liste 4'
          ExplicitHeight = 471
          object Panel33: TPanel
            Left = 0
            Top = 0
            Width = 421
            Height = 2
            Align = alTop
            BevelOuter = bvNone
            Color = 12568683
            ParentBackground = False
            TabOrder = 0
            StyleElements = []
          end
          object GridPanel5: TGridPanel
            Left = 0
            Top = 2
            Width = 421
            Height = 513
            Align = alClient
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Color = clWhite
            ColumnCollection = <
              item
                Value = 50.000000000000000000
              end
              item
                Value = 50.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Fav37sp
                Row = 0
              end
              item
                Column = 1
                Control = Fav38sp
                Row = 0
              end
              item
                Column = 0
                Control = Fav39sp
                Row = 1
              end
              item
                Column = 1
                Control = Fav40sp
                Row = 1
              end
              item
                Column = 0
                Control = Fav41sp
                Row = 2
              end
              item
                Column = 1
                Control = Fav42sp
                Row = 2
              end
              item
                Column = 0
                Control = Fav43sp
                Row = 3
              end
              item
                Column = 1
                Control = Fav44sp
                Row = 3
              end
              item
                Column = 0
                Control = Fav45sp
                Row = 4
              end
              item
                Column = 1
                Control = Fav46sp
                Row = 4
              end
              item
                Column = 0
                Control = Fav47sp
                Row = 5
              end
              item
                Column = 1
                Control = Fav48sp
                Row = 5
              end>
            Ctl3D = False
            Locked = True
            ParentBiDiMode = False
            ParentBackground = False
            ParentCtl3D = False
            RowCollection = <
              item
                Value = 16.671429660133540000
              end
              item
                Value = 16.669524172383990000
              end
              item
                Value = 16.667618902425200000
              end
              item
                Value = 16.665713850232300000
              end
              item
                Value = 16.663809015780390000
              end
              item
                Value = 16.661904399044590000
              end>
            ShowCaption = False
            TabOrder = 1
            ExplicitHeight = 469
            DesignSize = (
              421
              513)
            object Fav37sp: TsSpeedButton
              Left = 25
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 11
            end
            object Fav38sp: TsSpeedButton
              Left = 235
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 11
            end
            object Fav39sp: TsSpeedButton
              Left = 25
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 94
            end
            object Fav40sp: TsSpeedButton
              Left = 235
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 94
            end
            object Fav41sp: TsSpeedButton
              Left = 25
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 177
            end
            object Fav42sp: TsSpeedButton
              Left = 235
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 177
            end
            object Fav43sp: TsSpeedButton
              Left = 25
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 260
            end
            object Fav44sp: TsSpeedButton
              Left = 235
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 260
            end
            object Fav45sp: TsSpeedButton
              Left = 25
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 343
            end
            object Fav46sp: TsSpeedButton
              Left = 235
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 343
            end
            object Fav47sp: TsSpeedButton
              Left = 25
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 427
            end
            object Fav48sp: TsSpeedButton
              Left = 235
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 274
              ExplicitTop = 427
            end
          end
        end
        object Fav5ListTB: TsTabSheet
          Caption = 'Liste 5'
          ExplicitHeight = 471
          object Panel34: TPanel
            Left = 0
            Top = 0
            Width = 421
            Height = 2
            Align = alTop
            BevelOuter = bvNone
            Color = 7854350
            ParentBackground = False
            TabOrder = 0
            StyleElements = []
          end
          object GridPanel6: TGridPanel
            Left = 0
            Top = 2
            Width = 421
            Height = 513
            Align = alClient
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            Color = clWhite
            ColumnCollection = <
              item
                Value = 50.000000000000000000
              end
              item
                Value = 50.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Fav49sp
                Row = 0
              end
              item
                Column = 1
                Control = Fav50sp
                Row = 0
              end
              item
                Column = 0
                Control = Fav51sp
                Row = 1
              end
              item
                Column = 1
                Control = Fav52sp
                Row = 1
              end
              item
                Column = 0
                Control = Fav53sp
                Row = 2
              end
              item
                Column = 1
                Control = Fav54sp
                Row = 2
              end
              item
                Column = 0
                Control = Fav55sp
                Row = 3
              end
              item
                Column = 1
                Control = Fav56sp
                Row = 3
              end
              item
                Column = 0
                Control = Fav57sp
                Row = 4
              end
              item
                Column = 1
                Control = Fav58sp
                Row = 4
              end
              item
                Column = 0
                Control = Fav59sp
                Row = 5
              end
              item
                Column = 1
                Control = Fav60sp
                Row = 5
              end>
            Ctl3D = False
            Locked = True
            ParentBiDiMode = False
            ParentBackground = False
            ParentCtl3D = False
            RowCollection = <
              item
                Value = 16.671429660133540000
              end
              item
                Value = 16.669524172383990000
              end
              item
                Value = 16.667618902425200000
              end
              item
                Value = 16.665713850232300000
              end
              item
                Value = 16.663809015780390000
              end
              item
                Value = 16.661904399044590000
              end>
            ShowCaption = False
            TabOrder = 1
            ExplicitHeight = 469
            DesignSize = (
              421
              513)
            object Fav49sp: TsSpeedButton
              Left = 25
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 58
              ExplicitTop = 11
            end
            object Fav50sp: TsSpeedButton
              Left = 235
              Top = 12
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 16
            end
            object Fav51sp: TsSpeedButton
              Left = 25
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 99
            end
            object Fav52sp: TsSpeedButton
              Left = 235
              Top = 97
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 99
            end
            object Fav53sp: TsSpeedButton
              Left = 25
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
            end
            object Fav54sp: TsSpeedButton
              Left = 235
              Top = 182
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
            end
            object Fav55sp: TsSpeedButton
              Left = 25
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 265
            end
            object Fav56sp: TsSpeedButton
              Left = 235
              Top = 267
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 265
            end
            object Fav57sp: TsSpeedButton
              Left = 25
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 348
            end
            object Fav58sp: TsSpeedButton
              Left = 235
              Top = 352
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 348
            end
            object Fav59sp: TsSpeedButton
              Left = 25
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 28
              ExplicitTop = 432
            end
            object Fav60sp: TsSpeedButton
              Left = 235
              Top = 439
              Width = 160
              Height = 60
              ParentCustomHint = False
              Anchors = []
              BiDiMode = bdLeftToRight
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 12
              Font.Name = 'Helvetica LT Std'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ParentBiDiMode = False
              PopupMenu = FavPopMenu
              ShowHint = True
              OnClick = Fav1spClick
              OnMouseEnter = Fav1spMouseEnter
              SkinData.SkinSection = 'EDIT'
              ExplicitLeft = 244
              ExplicitTop = 432
            end
          end
        end
      end
    end
    object sTabSheet4: TsTabSheet
      Caption = 'Modules'
      ExplicitHeight = 561
      object Panel13: TPanel
        Left = 2
        Top = 7
        Width = 424
        Height = 224
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          424
          224)
        object Label41: TLabel
          Left = 7
          Top = 0
          Width = 91
          Height = 21
          Caption = 'Balance IP'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 22
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label42: TLabel
          Left = 9
          Top = 32
          Width = 38
          Height = 15
          Caption = 'Active:'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object BalanceIPListLbl: TLabel
          Left = 9
          Top = 55
          Width = 67
          Height = 16
          Caption = 'Le Balance:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object BalanceIPAdressIPLbl: TLabel
          Left = 9
          Top = 106
          Width = 67
          Height = 16
          Caption = 'Adresse IP:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object BalanceIPBareCodeListLbl: TLabel
          Left = 7
          Top = 161
          Width = 130
          Height = 16
          Caption = 'Type de Code '#226' Barre:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object TestBalanceIPBtn: TsSpeedButton
          Left = 338
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Ferm'#233'r'
          Anchors = [akTop, akRight]
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          OnClick = TestBalanceIPBtnClick
          SkinData.SkinSection = 'SPEEDBUTTON'
          Images = MainForm.PanelIcons24
          ImageIndex = 56
        end
        object TestBalanceIPLbl: TLabel
          Left = 340
          Top = 32
          Width = 26
          Height = 16
          Caption = 'Test'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object Label46: TLabel
          Left = 177
          Top = 208
          Width = 70
          Height = 12
          Anchors = [akTop, akRight]
          Caption = '[A] Article  [P] Prix'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10395294
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object UploadToBalBtn: TsSpeedButton
          Left = 384
          Top = 1
          Width = 30
          Height = 30
          Hint = 'Ferm'#233'r'
          Anchors = [akTop, akRight]
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          OnClick = UploadToBalBtnClick
          SkinData.SkinSection = 'SPEEDBUTTON'
          Images = MainForm.PanelIcons24
          ImageIndex = 57
        end
        object UploadToBalLbl: TLabel
          Left = 375
          Top = 32
          Width = 49
          Height = 16
          Caption = 'Envoyer'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object BalanceIPActiveSdr: TsSlider
          Left = 53
          Top = 32
          Width = 37
          Height = 15
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = 2497560
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
          TabOrder = 0
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
          OnChanging = BalanceIPActiveSdrChanging
        end
        object BalanceIPListCbx: TComboBox
          Left = 22
          Top = 76
          Width = 392
          Height = 24
          Style = csDropDownList
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'DIGI SM-100'
          OnDropDown = PoleDisplayCOMListCbxDropDown
          Items.Strings = (
            'DIGI SM-100')
        end
        object BalanceIPAdressIPEdt: TEdit
          Left = 21
          Top = 129
          Width = 391
          Height = 26
          Alignment = taCenter
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 19
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 2
          Text = '192.168.1.16'
        end
        object BalanceIPBareCodeListCbx: TComboBox
          Left = 21
          Top = 183
          Width = 392
          Height = 24
          Style = csDropDownList
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = '55AAAAAPPPPPC'
          Items.Strings = (
            '55AAAAAPPPPPC')
        end
        object edt1: TEdit
          Left = 294
          Top = 3
          Width = 26
          Height = 26
          Alignment = taCenter
          AutoSelect = False
          AutoSize = False
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = False
        end
      end
      object Panel20: TPanel
        Left = -8
        Top = 232
        Width = 448
        Height = 4
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 1
      end
      object Panel21: TPanel
        Left = 0
        Top = 0
        Width = 4
        Height = 605
        Align = alLeft
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 2
        ExplicitHeight = 561
      end
      object Panel22: TPanel
        Left = 424
        Top = 0
        Width = 5
        Height = 605
        Align = alRight
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 3
        ExplicitHeight = 561
      end
      object Panel14: TPanel
        Left = 3
        Top = 233
        Width = 431
        Height = 340
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 4
        object GridPanel1: TGridPanel
          Left = 0
          Top = 0
          Width = 431
          Height = 340
          Align = alClient
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = clWhite
          ColumnCollection = <
            item
              Value = 12.500000000000000000
            end
            item
              Value = 12.500000000000000000
            end
            item
              Value = 12.500000000000000000
            end
            item
              Value = 12.500000000000000000
            end
            item
              Value = 12.500000000000000000
            end
            item
              Value = 12.500000000000000000
            end
            item
              Value = 12.500000000000000000
            end
            item
              Value = 12.500000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Bal1sp
              Row = 0
            end
            item
              Column = 1
              Control = Bal2sp
              Row = 0
            end
            item
              Column = 2
              Control = Bal3sp
              Row = 0
            end
            item
              Column = 3
              Control = Bal4sp
              Row = 0
            end
            item
              Column = 4
              Control = Bal5sp
              Row = 0
            end
            item
              Column = 5
              Control = Bal6sp
              Row = 0
            end
            item
              Column = 6
              Control = Bal7sp
              Row = 0
            end
            item
              Column = 7
              Control = Bal8sp
              Row = 0
            end
            item
              Column = 0
              Control = Bal9sp
              Row = 1
            end
            item
              Column = 1
              Control = Bal10sp
              Row = 1
            end
            item
              Column = 2
              Control = Bal11sp
              Row = 1
            end
            item
              Column = 3
              Control = Bal12sp
              Row = 1
            end
            item
              Column = 4
              Control = Bal13sp
              Row = 1
            end
            item
              Column = 5
              Control = Bal14sp
              Row = 1
            end
            item
              Column = 6
              Control = Bal15sp
              Row = 1
            end
            item
              Column = 7
              Control = Bal16sp
              Row = 1
            end
            item
              Column = 0
              Control = Bal17sp
              Row = 2
            end
            item
              Column = 1
              Control = Bal18sp
              Row = 2
            end
            item
              Column = 2
              Control = Bal19sp
              Row = 2
            end
            item
              Column = 3
              Control = Bal20sp
              Row = 2
            end
            item
              Column = 4
              Control = Bal21sp
              Row = 2
            end
            item
              Column = 5
              Control = Bal22sp
              Row = 2
            end
            item
              Column = 6
              Control = Bal23sp
              Row = 2
            end
            item
              Column = 7
              Control = Bal24sp
              Row = 2
            end
            item
              Column = 0
              Control = Bal25sp
              Row = 3
            end
            item
              Column = 1
              Control = Bal26sp
              Row = 3
            end
            item
              Column = 2
              Control = Bal27sp
              Row = 3
            end
            item
              Column = 3
              Control = Bal28sp
              Row = 3
            end
            item
              Column = 4
              Control = Bal29sp
              Row = 3
            end
            item
              Column = 5
              Control = Bal30sp
              Row = 3
            end
            item
              Column = 6
              Control = Bal31sp
              Row = 3
            end
            item
              Column = 7
              Control = Bal32sp
              Row = 3
            end
            item
              Column = 0
              Control = Bal33sp
              Row = 4
            end
            item
              Column = 1
              Control = Bal34sp
              Row = 4
            end
            item
              Column = 2
              Control = Bal35sp
              Row = 4
            end
            item
              Column = 3
              Control = Bal36sp
              Row = 4
            end
            item
              Column = 4
              Control = Bal37sp
              Row = 4
            end
            item
              Column = 5
              Control = Bal38sp
              Row = 4
            end
            item
              Column = 6
              Control = Bal39sp
              Row = 4
            end
            item
              Column = 7
              Control = Bal40sp
              Row = 4
            end
            item
              Column = 0
              Control = Bal41sp
              Row = 5
            end
            item
              Column = 1
              Control = Bal42sp
              Row = 5
            end
            item
              Column = 2
              Control = Bal43sp
              Row = 5
            end
            item
              Column = 3
              Control = Bal44sp
              Row = 5
            end
            item
              Column = 4
              Control = Bal45sp
              Row = 5
            end
            item
              Column = 5
              Control = Bal46sp
              Row = 5
            end
            item
              Column = 6
              Control = Bal47sp
              Row = 5
            end
            item
              Column = 7
              Control = Bal48sp
              Row = 5
            end
            item
              Column = 0
              Control = Bal49sp
              Row = 6
            end
            item
              Column = 1
              Control = Bal50sp
              Row = 6
            end
            item
              Column = 2
              Control = Bal51sp
              Row = 6
            end
            item
              Column = 3
              Control = Bal52sp
              Row = 6
            end
            item
              Column = 4
              Control = Bal53sp
              Row = 6
            end
            item
              Column = 5
              Control = Bal54sp
              Row = 6
            end
            item
              Column = 6
              Control = Bal55sp
              Row = 6
            end
            item
              Column = 7
              Control = Bal56sp
              Row = 6
            end>
          Ctl3D = False
          Locked = True
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          RowCollection = <
            item
              Value = 14.285500002499970000
            end
            item
              Value = 14.285571429642850000
            end
            item
              Value = 14.285642857142860000
            end
            item
              Value = 14.285714285000010000
            end
            item
              Value = 14.285785713214300000
            end
            item
              Value = 14.285857141785720000
            end
            item
              Value = 14.285928570714290000
            end>
          ShowCaption = False
          TabOrder = 0
          object Bal1sp: TsSpeedButton
            Left = 0
            Top = 0
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal2sp: TsSpeedButton
            Left = 53
            Top = 0
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal3sp: TsSpeedButton
            Left = 106
            Top = 0
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal4sp: TsSpeedButton
            Left = 159
            Top = 0
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal5sp: TsSpeedButton
            Left = 212
            Top = 0
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal6sp: TsSpeedButton
            Left = 265
            Top = 0
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal7sp: TsSpeedButton
            Left = 318
            Top = 0
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal8sp: TsSpeedButton
            Left = 371
            Top = 0
            Width = 60
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitLeft = 373
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal9sp: TsSpeedButton
            Left = 0
            Top = 48
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal10sp: TsSpeedButton
            Left = 53
            Top = 48
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal11sp: TsSpeedButton
            Left = 106
            Top = 48
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal12sp: TsSpeedButton
            Left = 159
            Top = 48
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal13sp: TsSpeedButton
            Left = 212
            Top = 48
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal14sp: TsSpeedButton
            Left = 265
            Top = 48
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal15sp: TsSpeedButton
            Left = 318
            Top = 48
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal16sp: TsSpeedButton
            Left = 371
            Top = 48
            Width = 60
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitLeft = 373
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal17sp: TsSpeedButton
            Left = 0
            Top = 96
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal18sp: TsSpeedButton
            Left = 53
            Top = 96
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal19sp: TsSpeedButton
            Left = 106
            Top = 96
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal20sp: TsSpeedButton
            Left = 159
            Top = 96
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal21sp: TsSpeedButton
            Left = 212
            Top = 96
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal22sp: TsSpeedButton
            Left = 265
            Top = 96
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal23sp: TsSpeedButton
            Left = 318
            Top = 96
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal24sp: TsSpeedButton
            Left = 371
            Top = 96
            Width = 60
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitLeft = 373
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal25sp: TsSpeedButton
            Left = 0
            Top = 144
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal26sp: TsSpeedButton
            Left = 53
            Top = 144
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal27sp: TsSpeedButton
            Left = 106
            Top = 144
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal28sp: TsSpeedButton
            Left = 159
            Top = 144
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal29sp: TsSpeedButton
            Left = 212
            Top = 144
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal30sp: TsSpeedButton
            Left = 265
            Top = 144
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal31sp: TsSpeedButton
            Left = 318
            Top = 144
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal32sp: TsSpeedButton
            Left = 371
            Top = 144
            Width = 60
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitLeft = 373
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal33sp: TsSpeedButton
            Left = 0
            Top = 192
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 191
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal34sp: TsSpeedButton
            Left = 53
            Top = 192
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 191
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal35sp: TsSpeedButton
            Left = 106
            Top = 192
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 191
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal36sp: TsSpeedButton
            Left = 159
            Top = 192
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 191
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal37sp: TsSpeedButton
            Left = 212
            Top = 192
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 191
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal38sp: TsSpeedButton
            Left = 265
            Top = 192
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 191
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal39sp: TsSpeedButton
            Left = 318
            Top = 192
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 191
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal40sp: TsSpeedButton
            Left = 371
            Top = 192
            Width = 60
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitLeft = 373
            ExplicitTop = 191
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal41sp: TsSpeedButton
            Left = 0
            Top = 240
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 238
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal42sp: TsSpeedButton
            Left = 53
            Top = 240
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 238
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal43sp: TsSpeedButton
            Left = 106
            Top = 240
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 238
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal44sp: TsSpeedButton
            Left = 159
            Top = 240
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 238
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal45sp: TsSpeedButton
            Left = 212
            Top = 240
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 238
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal46sp: TsSpeedButton
            Left = 265
            Top = 240
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 238
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal47sp: TsSpeedButton
            Left = 318
            Top = 240
            Width = 53
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 238
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal48sp: TsSpeedButton
            Left = 371
            Top = 240
            Width = 60
            Height = 48
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitLeft = 373
            ExplicitTop = 238
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal49sp: TsSpeedButton
            Left = 0
            Top = 288
            Width = 53
            Height = 52
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 285
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal50sp: TsSpeedButton
            Left = 53
            Top = 288
            Width = 53
            Height = 52
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 285
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal51sp: TsSpeedButton
            Left = 106
            Top = 288
            Width = 53
            Height = 52
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 285
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal52sp: TsSpeedButton
            Left = 159
            Top = 288
            Width = 53
            Height = 52
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 285
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal53sp: TsSpeedButton
            Left = 212
            Top = 288
            Width = 53
            Height = 52
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 285
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal54sp: TsSpeedButton
            Left = 265
            Top = 288
            Width = 53
            Height = 52
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 285
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal55sp: TsSpeedButton
            Left = 318
            Top = 288
            Width = 53
            Height = 52
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitTop = 285
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
          object Bal56sp: TsSpeedButton
            Left = 371
            Top = 288
            Width = 60
            Height = 52
            ParentCustomHint = False
            Align = alClient
            BiDiMode = bdLeftToRight
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 11
            Font.Name = 'Helvetica LT Std'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ParentBiDiMode = False
            PopupMenu = BalPopMenu
            ShowHint = True
            OnClick = Bal1spClick
            OnMouseEnter = Bal1spMouseEnter
            SkinData.SkinSection = 'EDIT'
            ExplicitLeft = 373
            ExplicitTop = 285
            ExplicitWidth = 52
            ExplicitHeight = 42
          end
        end
      end
    end
  end
  object TopP: TPanel
    Left = 0
    Top = 0
    Width = 437
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Configurations'
    Color = 4207405
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15527148
    Font.Height = 22
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    StyleElements = []
  end
  object Panel4: TPanel
    Left = 0
    Top = 682
    Width = 437
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Color = 4207405
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15722984
    Font.Height = 27
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    StyleElements = []
    ExplicitTop = 638
    DesignSize = (
      437
      36)
    object OKFPrintingBtn: TAdvToolButton
      Tag = 2
      Left = 130
      Top = 3
      Width = 187
      Height = 30
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
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
      OnClick = OKFPrintingBtnClick
      Version = '1.6.2.0'
      TMSStyle = 0
    end
  end
  object OpenPictureDialogProduitG: TOpenPictureDialog
    Filter = 'JPEG graphics (*.jpg)|*.jpg'
    Left = 272
    Top = 205
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
    Left = 222
    Top = 216
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    Left = 174
    Top = 76
  end
  object FavPopMenu: TPopupMenu
    MenuAnimation = [maNone]
    OwnerDraw = True
    Left = 229
    Top = 78
    object S2: TMenuItem
      Caption = 'Vider le champ'
      OnClick = S2Click
    end
  end
  object BalPopMenu: TPopupMenu
    Left = 298
    Top = 80
    object Viderlechamp1: TMenuItem
      Caption = 'Vider le champ'
      OnClick = Viderlechamp1Click
    end
  end
  object BalBtnLblDrawerTimer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = BalBtnLblDrawerTimerTimer
    Left = 378
    Top = 198
  end
end
