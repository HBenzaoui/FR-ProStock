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
  PixelsPerInch = 96
  TextHeight = 13
  object FournisseurGPgControl: TsPageControl
    Left = 0
    Top = 0
    Width = 516
    Height = 493
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
          Width = 49
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
          Width = 33
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
          Width = 132
          Height = 18
          Caption = 'Fournisseur Active:'
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
          Width = 25
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
          Width = 64
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
          Width = 41
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
          Width = 51
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
          Width = 59
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
          Width = 28
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
          Width = 425
          Height = 21
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
          Left = 192
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
          TabOrder = 11
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
          TabOrder = 10
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
          TabOrder = 3
          OnKeyDown = FixFournisseurGEdtKeyDown
          OnKeyPress = FaxFournisseurGEdtKeyPress
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
          TabOrder = 7
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
          TabOrder = 8
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
          TabOrder = 5
          OnKeyDown = FixFournisseurGEdtKeyDown
          OnKeyPress = FaxFournisseurGEdtKeyPress
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
          TabOrder = 6
          OnKeyDown = FixFournisseurGEdtKeyDown
          OnKeyPress = FaxFournisseurGEdtKeyPress
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
          TabOrder = 4
          OnKeyDown = FixFournisseurGEdtKeyDown
          OnKeyPress = FaxFournisseurGEdtKeyPress
        end
        object NameFournisseurGEdt: TEdit
          Left = 73
          Top = 60
          Width = 424
          Height = 26
          BevelInner = bvSpace
          BevelKind = bkFlat
          BevelOuter = bvSpace
          Ctl3D = True
          DoubleBuffered = False
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
          Left = 146
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          StyleElements = []
          BoundLabel.Caption = 'sSlider1'
          BoundLabel.Layout = sclBottomCenter
          FontOn.Charset = DEFAULT_CHARSET
          FontOn.Color = 4207405
          FontOn.Height = 12
          FontOn.Name = 'Roboto'
          FontOn.Style = []
          SliderCursor = crHandPoint
          Reversed = True
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
          TabOrder = 12
          OnDropDown = VilleFournisseurGCbxEnter
          OnEnter = VilleFournisseurGCbxEnter
          OnKeyPress = VilleFournisseurGCbxKeyPress
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
          Left = 26
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
          Left = 266
          Top = 18
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
        object NIFFournisseurGLbl: TLabel
          Left = 22
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
          Left = 278
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
          Width = 95
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
          Left = 266
          Top = 209
          Width = 77
          Height = 18
          Caption = 'Cr'#233'dit Max:'
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
        object CurrencyFournisseurG: TLabel
          Left = 236
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
          Left = 12
          Top = 208
          Width = 94
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
          Left = 12
          Top = 119
          Width = 121
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
          Left = 278
          Top = 119
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
          Left = 62
          Top = 15
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
          TabOrder = 0
        end
        object NArtFournisseurGEdt: TEdit
          Left = 312
          Top = 15
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
          TabOrder = 1
        end
        object NIFFournisseurGEdt: TEdit
          Left = 62
          Top = 61
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
          TabOrder = 2
        end
        object NISFournisseurGEdt: TEdit
          Left = 312
          Top = 61
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
          Left = 60
          Top = 232
          Width = 170
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
          OnExit = OldCreditFournisseurGEdtExit
          OnKeyDown = MaxCreditFournisseurGEdtKeyDown
          OnKeyPress = MaxCreditFournisseurGEdtKeyPress
        end
        object MaxCreditFournisseurGEdt: TEdit
          Left = 312
          Top = 232
          Width = 170
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
          TabOrder = 7
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
          Left = 62
          Top = 142
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
        end
        object RIBFournisseurGEdt: TEdit
          Left = 312
          Top = 141
          Width = 170
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
      Version = '1.6.1.1'
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
      Version = '1.6.1.1'
      TMSStyle = 0
    end
  end
end
