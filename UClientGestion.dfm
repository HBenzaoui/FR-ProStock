object ClientGestionF: TClientGestionF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Les Clients'
  ClientHeight = 547
  ClientWidth = 516
  Color = 14276563
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
  object ClientGPgControl: TsPageControl
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
        object WilayaClientGLbl: TLabel
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
        object VilleClientGLbl: TLabel
          Left = 288
          Top = 227
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
        object ActiveClientGLbl: TLabel
          Left = 30
          Top = 15
          Width = 89
          Height = 18
          Caption = 'Client Active:'
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
        object NameClientGLbl: TLabel
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
        object AcitiviteClientGLbl: TLabel
          Left = 12
          Top = 118
          Width = 55
          Height = 18
          Caption = 'Activit'#233':'
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
        object AdrClientGLbl: TLabel
          Left = 8
          Top = 172
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
        object FixClientGLbl: TLabel
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
        object SiteClientGLbl: TLabel
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
        object EmailClientGLbl: TLabel
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
        object MobileClientGLbl: TLabel
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
        object Mobile2ClientGLbl: TLabel
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
        object FaxClientGLbl: TLabel
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
        object RequiredStarClientGLbl: TLabel
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
        object RequiredClientGlbl: TLabel
          Left = 194
          Top = 38
          Width = 139
          Height = 32
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
        object ActiveClientGOuiOuNon: TLabel
          Left = 171
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
        object NameClientGErrorP: TPanel
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
          Color = 11544476
          DoubleBuffered = False
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 11
          StyleElements = []
        end
        object AcitiviteClientGEdt: TEdit
          Left = 73
          Top = 115
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
          OnKeyPress = NameClientGEdtKeyPress
        end
        object AdrClientGEdt: TEdit
          Left = 73
          Top = 169
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
          TabOrder = 2
          OnKeyPress = NameClientGEdtKeyPress
        end
        object FixClientGEdt: TEdit
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
          OnKeyDown = FaxClientGEdtKeyDown
          OnKeyPress = Mobile2ClientGEdtKeyPress
        end
        object EmailClientGEdt: TEdit
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
          OnKeyPress = NameClientGEdtKeyPress
        end
        object SiteClientGEdt: TEdit
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
          OnKeyPress = NameClientGEdtKeyPress
        end
        object MobileClientGEdt: TEdit
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
          OnKeyDown = FaxClientGEdtKeyDown
          OnKeyPress = Mobile2ClientGEdtKeyPress
        end
        object Mobile2ClientGEdt: TEdit
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
          OnKeyDown = FaxClientGEdtKeyDown
          OnKeyPress = Mobile2ClientGEdtKeyPress
        end
        object FaxClientGEdt: TEdit
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
          OnKeyDown = FaxClientGEdtKeyDown
          OnKeyPress = Mobile2ClientGEdtKeyPress
        end
        object NameClientGEdt: TEdit
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
          OnChange = NameClientGEdtChange
          OnKeyPress = NameClientGEdtKeyPress
        end
        object ActiveClientGSlider: TsSlider
          Left = 125
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
          TabOrder = 10
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
          OnChanging = ActiveClientGSliderChanging
        end
        object WilayaClientGCbx: TComboBox
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
          TabOrder = 3
          OnDropDown = WilayaClientGCbxEnter
          OnEnter = WilayaClientGCbxEnter
          OnKeyPress = NameClientGEdtKeyPress
        end
        object VilleClientGCbx: TComboBox
          Left = 328
          Top = 223
          Width = 170
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnDropDown = VilleClientGCbxEnter
          OnEnter = VilleClientGCbxEnter
          OnKeyPress = NameClientGEdtKeyPress
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
        object RCClientGLbl: TLabel
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
        object NArtClientGLbl: TLabel
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
        object NIFClientGLbl: TLabel
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
        object NISClientGLbl: TLabel
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
        object ObserClientGLbl: TLabel
          Left = 16
          Top = 324
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
        object MaxCreditClientGLbl: TLabel
          Left = 268
          Top = 252
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
        object ModeTarifClientGLbl: TLabel
          Left = 16
          Top = 185
          Width = 99
          Height = 18
          Caption = 'Mode de Tarif:'
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
        object CurrencyClientG: TLabel
          Left = 238
          Top = 284
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
        object CurrencyClientG1: TLabel
          Left = 488
          Top = 284
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
        object OldCreditClientGLbl: TLabel
          Left = 14
          Top = 252
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
        object NBankClientGLbl: TLabel
          Left = 12
          Top = 113
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
        object RIBClientGLbl: TLabel
          Left = 278
          Top = 113
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
          Left = 0
          Top = 315
          Width = 509
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 11544476
          DoubleBuffered = False
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 10
          StyleElements = []
        end
        object RCClientGEdt: TEdit
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
          OnKeyPress = NameClientGEdtKeyPress
        end
        object NArtClientGEdt: TEdit
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
          OnKeyPress = NameClientGEdtKeyPress
        end
        object NIFClientGEdt: TEdit
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
          OnKeyPress = NameClientGEdtKeyPress
        end
        object NISClientGEdt: TEdit
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
          OnKeyPress = NameClientGEdtKeyPress
        end
        object LineP01: TPanel
          Left = 0
          Top = 105
          Width = 508
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 11544476
          DoubleBuffered = False
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 11
          StyleElements = []
        end
        object ObserClientGMem: TMemo
          Left = 22
          Top = 344
          Width = 460
          Height = 103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnKeyPress = NameClientGEdtKeyPress
        end
        object OldCreditClientGEdt: TEdit
          Left = 62
          Top = 275
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
          OnExit = OldCreditClientGEdtExit
          OnKeyDown = OldCreditClientGEdtKeyDown
          OnKeyPress = OldCreditClientGEdtKeyPress
        end
        object MaxCreditClientGEdt: TEdit
          Left = 314
          Top = 275
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
          OnExit = MaxCreditClientGEdtExit
          OnKeyDown = OldCreditClientGEdtKeyDown
          OnKeyPress = OldCreditClientGEdtKeyPress
        end
        object ModeTarifClientGCbx: TComboBox
          Left = 62
          Top = 208
          Width = 170
          Height = 26
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 18
          Font.Name = 'Roboto'
          Font.Style = []
          ItemIndex = 0
          ParentColor = True
          ParentFont = False
          TabOrder = 8
          Text = 'D'#233'taillant'
          OnKeyPress = NameClientGEdtKeyPress
          Items.Strings = (
            'D'#233'taillant'
            'Revendeur'
            'Gros'
            'Autre 1'
            'Autre 2')
        end
        object LineP02: TPanel
          Left = 0
          Top = 175
          Width = 508
          Height = 2
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 11544476
          DoubleBuffered = False
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 12
          StyleElements = []
        end
        object NBankClientGEdt: TEdit
          Left = 62
          Top = 136
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
          OnKeyPress = NameClientGEdtKeyPress
        end
        object RIBClientGEdt: TEdit
          Left = 312
          Top = 135
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
          OnKeyPress = NameClientGEdtKeyPress
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
    Color = 11544476
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
    object OKClientGBtn: TAdvToolButton
      Left = 130
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
      OnClick = OKClientGBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object CancelClientGBtn: TAdvToolButton
      Left = 286
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
      OnClick = CancelClientGBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
  end
end