object FournisseurGestionF: TFournisseurGestionF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Les Fournisseurs'
  ClientHeight = 547
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FournisseurGPgControl: TsPageControl
    Left = 0
    Top = 0
    Width = 516
    Height = 493
    ActivePage = FicheFourTB
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
    TabWidth = 120
    StyleElements = []
    TabsLineSkin = 'BAR'
    object GeneralClientGTB: TsTabSheet
      Caption = 'G'#233'n'#233'ral'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GeneralTB: TPanel
        Left = 0
        Top = 0
        Width = 508
        Height = 458
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          508
          458)
        object WilayaFournisseurGLbl: TLabel
          Left = 18
          Top = 226
          Width = 48
          Height = 18
          Caption = 'Wilaya:'
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
        object VilleFournisseurGLbl: TLabel
          Left = 288
          Top = 226
          Width = 34
          Height = 18
          Caption = 'Ville:'
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
        object ActiveFournisseurGLbl: TLabel
          Left = 11
          Top = 15
          Width = 119
          Height = 18
          Caption = 'Fournisseur Actif:'
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
        object NameFournisseurGLbl: TLabel
          Left = 30
          Top = 64
          Width = 37
          Height = 18
          Caption = 'Nom:'
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
        object AdrFournisseurGLbl: TLabel
          Left = 8
          Top = 144
          Width = 59
          Height = 18
          Caption = 'Adresse:'
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
        object FixFournisseurGLbl: TLabel
          Left = 35
          Top = 306
          Width = 24
          Height = 18
          Caption = 'T'#233'l:'
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
        object SiteFournisseurGLbl: TLabel
          Left = 257
          Top = 414
          Width = 63
          Height = 18
          Caption = 'Site Web:'
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
        object EmailFournisseurGLbl: TLabel
          Left = 19
          Top = 414
          Width = 42
          Height = 18
          Caption = 'Email:'
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
        object MobileFournisseurGLbl: TLabel
          Left = 9
          Top = 360
          Width = 50
          Height = 18
          Caption = 'Mobile:'
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
        object Mobile2CFournisseurGLbl: TLabel
          Left = 262
          Top = 360
          Width = 58
          Height = 18
          Caption = 'Mobile2:'
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
        object FaxFournisseurGLbl: TLabel
          Left = 293
          Top = 306
          Width = 27
          Height = 18
          Caption = 'Fax:'
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
        object RequiredStarFournisseurGLbl: TLabel
          Left = 500
          Top = 62
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
        object RequiredFournisseurGlbl: TLabel
          Left = 73
          Top = 38
          Width = 426
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'S'#39'il vous pla'#238't entrer un nom'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4666873
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
          WordWrap = True
          StyleElements = [seClient, seBorder]
        end
        object ActiveFournisseurGOuiOuNon: TLabel
          Left = 184
          Top = 18
          Width = 18
          Height = 14
          Caption = 'Oui'
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
        object NameFournisseurGErrorP: TPanel
          Left = 71
          Top = 58
          Width = 428
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
        object LineP: TPanel
          Left = 0
          Top = 276
          Width = 515
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 12148480
          DoubleBuffered = False
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 11
          StyleElements = []
        end
        object AdrFournisseurGEdt: TEdit
          Left = 73
          Top = 141
          Width = 424
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 1
        end
        object FixFournisseurGEdt: TEdit
          Left = 66
          Top = 303
          Width = 170
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 4
          OnKeyDown = FixFournisseurGEdtKeyDown
        end
        object EmailFournisseurGEdt: TEdit
          Left = 66
          Top = 411
          Width = 170
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 8
        end
        object SiteFournisseurGEdt: TEdit
          Left = 327
          Top = 411
          Width = 170
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 9
        end
        object MobileFournisseurGEdt: TEdit
          Left = 66
          Top = 357
          Width = 170
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 6
          OnKeyDown = FixFournisseurGEdtKeyDown
        end
        object Mobile2FournisseurGEdt: TEdit
          Left = 327
          Top = 357
          Width = 170
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 7
          OnKeyDown = FixFournisseurGEdtKeyDown
        end
        object FaxFournisseurGEdt: TEdit
          Left = 327
          Top = 303
          Width = 170
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 5
          OnKeyDown = FixFournisseurGEdtKeyDown
        end
        object NameFournisseurGEdt: TEdit
          Left = 73
          Top = 60
          Width = 424
          Height = 26
          AutoSelect = False
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
          TabOrder = 0
          StyleElements = [seClient, seBorder]
          OnChange = NameFournisseurGEdtChange
        end
        object ActiveFournisseurGSlider: TsSlider
          Left = 138
          Top = 17
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
          OnChanging = ActiveFournisseurGSliderChanging
        end
        object WilayaFournisseurGCbx: TComboBox
          Left = 73
          Top = 223
          Width = 170
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnDropDown = WilayaFournisseurGCbxEnter
          OnEnter = WilayaFournisseurGCbxEnter
          Items.Strings = (
            'Adrar'
            'A'#239'n-Defla'
            'A'#239'n-T'#233'mouchent'
            'Alger'
            'Annaba'
            'Batna'
            'B'#233'char'
            'B'#233'ja'#239'a'
            'Biskra'
            'Blida'
            'Bordj-Bou-Arreridj'
            'Bouira'
            'Boumerd'#232's'
            'Chlef'
            'Constantine'
            'Djelfa'
            'El-Bayadh'
            'El-Oued'
            'El-Taref'
            'Ghardaia'
            'Guelma'
            'Illizi'
            'Jijel'
            'Khenchela'
            'Laghouat'
            'M'#39'Sila'
            'Mascara'
            'M'#233'd'#233'a'
            'Mila'
            'Mostaganem'
            'Na'#226'ma'
            'Oran'
            'Ouargla'
            'Oum-El-Bouaghi'
            'Relizane'
            'Saida'
            'S'#233'tif'
            'Sidi-Bel-Abb'#232's'
            'Skikda'
            'Souk-Ahras'
            'Tamanrasset'
            'T'#233'bessa'
            'Tiaret'
            'Tindouf'
            'Tipaza'
            'Tissemsilt'
            'Tizi-Ouzou'
            'Tlemcen')
        end
        object VilleFournisseurGCbx: TComboBox
          Left = 327
          Top = 223
          Width = 170
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnDropDown = VilleFournisseurGCbxEnter
          OnEnter = VilleFournisseurGCbxEnter
        end
      end
    end
    object PlusInfoClientGTB: TsTabSheet
      Caption = 'Plus D'#39'info'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PlusInfoTB: TPanel
        Left = 0
        Top = 0
        Width = 508
        Height = 458
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
        DesignSize = (
          508
          458)
        object RCFournisseurGLbl: TLabel
          Left = 22
          Top = 18
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
        object NArtFournisseurGLbl: TLabel
          Left = 258
          Top = 18
          Width = 41
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
        object NIFFournisseurGLbl: TLabel
          Left = 18
          Top = 64
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
        object NISFournisseurGLbl: TLabel
          Left = 270
          Top = 64
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
        object ObserFournisseurGLbl: TLabel
          Left = 16
          Top = 303
          Width = 92
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
        object MaxCreditFournisseurGLbl: TLabel
          Left = 258
          Top = 209
          Width = 76
          Height = 18
          Caption = 'Cr'#233'dit Max:'
          Color = 4207405
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = []
        end
        object CurrencyFournisseurG: TLabel
          Left = 234
          Top = 241
          Width = 20
          Height = 18
          Caption = 'DA'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object CurrencyFournisseurG1: TLabel
          Left = 486
          Top = 241
          Width = 20
          Height = 18
          Caption = 'DA'
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object OldCreditFournisseurGLbl: TLabel
          Left = 8
          Top = 208
          Width = 92
          Height = 18
          Caption = 'Ancien cr'#233'dit:'
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
        object NBankFournisseurGLbl: TLabel
          Left = 8
          Top = 119
          Width = 119
          Height = 18
          Caption = 'Compte Bancaire:'
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
        object RIBFournisseurGLbl: TLabel
          Left = 270
          Top = 119
          Width = 26
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
        object LineP03: TPanel
          Left = -4
          Top = 291
          Width = 509
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 12148480
          DoubleBuffered = False
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 9
          StyleElements = []
        end
        object RCFournisseurGEdt: TEdit
          Left = 49
          Top = 15
          Width = 186
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 0
        end
        object NArtFournisseurGEdt: TEdit
          Left = 299
          Top = 15
          Width = 186
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 1
        end
        object NIFFournisseurGEdt: TEdit
          Left = 49
          Top = 61
          Width = 186
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 2
        end
        object NISFournisseurGEdt: TEdit
          Left = 299
          Top = 61
          Width = 186
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 3
        end
        object LineP01: TPanel
          Left = 0
          Top = 105
          Width = 508
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 12148480
          DoubleBuffered = False
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 10
          StyleElements = []
        end
        object ObserFournisseurGMem: TMemo
          Left = 22
          Top = 327
          Width = 460
          Height = 117
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object OldCreditFournisseurGEdt: TEdit
          Left = 47
          Top = 232
          Width = 186
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 6
          OnChange = OldCreditFournisseurGEdtChange
          OnClick = OldCreditFournisseurGEdtClick
          OnExit = OldCreditFournisseurGEdtExit
          OnKeyDown = MaxCreditFournisseurGEdtKeyDown
          OnKeyPress = OldCreditFournisseurGEdtKeyPress
        end
        object MaxCreditFournisseurGEdt: TEdit
          Left = 299
          Top = 232
          Width = 186
          Height = 26
          Alignment = taRightJustify
          DoubleBuffered = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 7
          OnClick = MaxCreditFournisseurGEdtClick
          OnExit = MaxCreditFournisseurGEdtExit
          OnKeyDown = MaxCreditFournisseurGEdtKeyDown
          OnKeyPress = MaxCreditFournisseurGEdtKeyPress
        end
        object LineP02: TPanel
          Left = 0
          Top = 190
          Width = 508
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 12148480
          DoubleBuffered = False
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 11
          StyleElements = []
        end
        object NBankFournisseurGEdt: TEdit
          Left = 49
          Top = 142
          Width = 186
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 4
        end
        object RIBFournisseurGEdt: TEdit
          Left = 299
          Top = 141
          Width = 186
          Height = 26
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          MaxLength = 20
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 5
        end
      end
    end
    object FicheFourTB: TsTabSheet
      Caption = 'Fiche Fournisseur'
      DesignSize = (
        508
        458)
      object Label1: TLabel
        Left = 12
        Top = 17
        Width = 151
        Height = 18
        Caption = 'Ajouter comme Client:'
        Color = 4207405
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
      object CapitalFourGLbl: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 86
        Width = 485
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '0'
        Color = 15722984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7854350
        Font.Height = 21
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        StyleElements = []
      end
      object Label4: TLabel
        Left = 12
        Top = 65
        Width = 31
        Height = 18
        Caption = 'C.A:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label3: TLabel
        Left = 12
        Top = 129
        Width = 47
        Height = 18
        Caption = 'R'#233'gl'#233':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object RegleFourGLbl: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 151
        Width = 485
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '0'
        Color = 15722984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14727239
        Font.Height = 21
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        StyleElements = []
      end
      object Label6: TLabel
        Left = 12
        Top = 187
        Width = 47
        Height = 18
        Caption = 'Cr'#233'dit:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object CreditFourGLbl: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 210
        Width = 485
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '0'
        Color = 15722984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7566591
        Font.Height = 21
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        StyleElements = []
      end
      object Label8: TLabel
        Left = 12
        Top = 269
        Width = 242
        Height = 18
        Caption = 'Acquitter en cas Fournisseur/Client:'
        Color = 4207405
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
      object Label2: TLabel
        Left = 213
        Top = 19
        Width = 23
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
      object Label5: TLabel
        AlignWithMargins = True
        Left = 315
        Top = 267
        Width = 27
        Height = 21
        BiDiMode = bdLeftToRight
        Caption = 'OK'
        Color = 15722984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7854350
        Font.Height = 21
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold, fsItalic]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        Visible = False
        StyleElements = []
      end
      object FourClientGSlider: TsSlider
        Left = 169
        Top = 18
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
        OnChanging = FourClientGSliderChanging
      end
      object PayFourClientGSlider: TsSlider
        Left = 264
        Top = 270
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
        TabOrder = 1
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
        OnChanging = PayFourClientGSliderChanging
      end
      object Panel1: TPanel
        Left = 0
        Top = 113
        Width = 508
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = 12148480
        DoubleBuffered = False
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 2
        StyleElements = []
      end
      object Panel2: TPanel
        Left = 0
        Top = 48
        Width = 508
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = 12148480
        DoubleBuffered = False
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 3
        StyleElements = []
      end
      object Panel3: TPanel
        Left = 0
        Top = 237
        Width = 508
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = 12148480
        DoubleBuffered = False
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 4
        StyleElements = []
      end
      object Panel4: TPanel
        Left = 0
        Top = 180
        Width = 508
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = 12148480
        DoubleBuffered = False
        ParentBackground = False
        ParentDoubleBuffered = False
        TabOrder = 5
        StyleElements = []
      end
    end
  end
  object BottomP: TPanel
    Left = 0
    Top = 493
    Width = 516
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
    object OKFournisseurGBtn: TAdvToolButton
      Left = 129
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
      OnClick = OKFournisseurGBtnClick
      Version = '1.6.2.0'
      TMSStyle = 0
    end
    object CancelFournisseurGBtn: TAdvToolButton
      Left = 285
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
      OnClick = CancelFournisseurGBtnClick
      Version = '1.6.2.0'
      TMSStyle = 0
    end
  end
end
