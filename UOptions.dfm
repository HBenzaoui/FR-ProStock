object FOptions: TFOptions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 674
  ClientWidth = 448
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OptionsPgControl: TsPageControl
    Left = 0
    Top = 27
    Width = 448
    Height = 611
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
    object GeneralOptionGTB: TsTabSheet
      Caption = 'G'#233'n'#233'ral'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object P1: TPanel
        Left = 0
        Top = 284
        Width = 448
        Height = 286
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          448
          286)
        object Label1: TLabel
          Left = 14
          Top = 22
          Width = 96
          Height = 21
          Caption = 'Impression'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 22
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object AutoImL: TLabel
          Left = 10
          Top = 55
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
          Top = 79
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
          Top = 139
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
          Top = 188
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
          Top = 236
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
        object LineP: TPanel
          Left = 2
          Top = 134
          Width = 434
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 7854350
          DoubleBuffered = True
          ParentBackground = False
          ParentDoubleBuffered = False
          TabOrder = 2
          StyleElements = []
        end
        object APrintOptionGSlider: TsSlider
          Left = 210
          Top = 57
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
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
          SliderOn = False
        end
        object PrintersListFOptionCaisseCbx: TComboBox
          Left = 25
          Top = 100
          Width = 381
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object PrintersListFOptionCodeBCbx: TComboBox
          Left = 25
          Top = 160
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
        object FormatFOptionCodeBCbx: TComboBox
          Left = 25
          Top = 209
          Width = 381
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Items.Strings = (
            '40X20 Code 128 avec prix'
            '40X20 Code 128 sans prix'
            '40X20 Code 128 sans tous'
            '45X35 Code 128 avec prix'
            '45X35 Code 128 sans prix')
        end
        object PrixVenteListFOptionCodeBCbx: TComboBox
          Left = 25
          Top = 257
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
          Items.Strings = (
            'Prix D'#233'tail'
            'Prix Revendeur'
            'Prix Gros'
            'Prix Autre 1'
            'Prix Autre 2')
        end
        object PrinterCaisse57mmOptionCaisseRdioBtn: TRadioButton
          Left = 346
          Top = 79
          Width = 61
          Height = 17
          Caption = '57 mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object PrinterCaisse80mmOptionCaisseRdioBtn: TRadioButton
          Left = 279
          Top = 79
          Width = 63
          Height = 17
          Caption = '80 mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object P2: TPanel
        Left = 7
        Top = 3
        Width = 476
        Height = 294
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label5: TLabel
          Left = 7
          Top = 1
          Width = 89
          Height = 21
          Caption = 'Enterprise'
          Color = 4207405
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4207405
          Font.Height = 22
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 1
          Top = 32
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
          Left = 41
          Top = 72
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
          Left = 64
          Top = 112
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
          Left = 56
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
        object ImageDeleteProduitGBtn: TAdvToolButton
          Left = 396
          Top = 213
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
          Version = '1.6.1.2'
          TMSStyle = 0
        end
        object ImageEditProduitGBtn: TAdvToolButton
          Left = 396
          Top = 184
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
          Version = '1.6.1.2'
          TMSStyle = 0
        end
        object Label10: TLabel
          Left = 71
          Top = 230
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
        object Shape1: TShape
          Left = 113
          Top = 184
          Width = 284
          Height = 108
          Pen.Color = 7854350
        end
        object ImageCompanyOptionImg: TsImage
          Left = 114
          Top = 185
          Width = 282
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
        object NameCompanyOptionEdt: TEdit
          Left = 114
          Top = 28
          Width = 282
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
          Left = 114
          Top = 68
          Width = 282
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
        object MobCompanyOptionEdt: TEdit
          Left = 114
          Top = 108
          Width = 282
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
        object AdrCompanyOptionEdt: TEdit
          Left = 114
          Top = 148
          Width = 282
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
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 4
        Height = 581
        Align = alLeft
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 435
        Top = 0
        Width = 5
        Height = 581
        Align = alRight
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 3
      end
      object S1: TPanel
        Left = -8
        Top = 300
        Width = 448
        Height = 4
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 4
      end
    end
    object sTabSheet1: TsTabSheet
      Caption = 'Utilit'#233's'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
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
          Width = 130
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
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
          Width = 106
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
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
        Height = 581
        Align = alLeft
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 3
      end
      object Panel9: TPanel
        Left = 435
        Top = 0
        Width = 5
        Height = 581
        Align = alRight
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 4
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = 'Base de donn'#233
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object Panel11: TPanel
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
        object Label13: TLabel
          Left = 8
          Top = 0
          Width = 105
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
          Top = 44
          Width = 31
          Height = 15
          Caption = 'Tous:'
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
          Left = 32
          Top = 77
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
          Left = 27
          Top = 97
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
          Left = 22
          Top = 137
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
          Left = 22
          Top = 117
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
          Left = 6
          Top = 217
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
          Left = 33
          Top = 197
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
          Left = 31
          Top = 177
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
          Left = 34
          Top = 158
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
          Left = 61
          Top = 257
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
          Left = 67
          Top = 237
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
          Left = 331
          Top = 77
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
          Left = 340
          Top = 97
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
          Left = 312
          Top = 137
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
          Left = 307
          Top = 117
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
          Left = 342
          Top = 217
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
          Left = 258
          Top = 197
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
          Left = 288
          Top = 177
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
          Left = 322
          Top = 158
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
          Left = 207
          Top = 257
          Width = 172
          Height = 14
          Caption = 'Supprimer les dettes des clients:'
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
          Left = 308
          Top = 237
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
          Left = 175
          Top = 276
          Width = 204
          Height = 14
          Caption = 'Supprimer les dettes des fournisseurs:'
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
        object AllSdr0: TsSlider
          Left = 45
          Top = 46
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
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
          SliderOn = False
          OnChanging = AllSdr0Changing
        end
        object CtrSdr1: TsSlider
          Left = 132
          Top = 78
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
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
          SliderOn = False
        end
        object BLSdr2: TsSlider
          Left = 132
          Top = 98
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
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
          SliderOn = False
        end
        object FVSdr4: TsSlider
          Left = 132
          Top = 138
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
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
          SliderOn = False
        end
        object BRSdr3: TsSlider
          Left = 132
          Top = 118
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
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
          SliderOn = False
        end
        object RFSdr8: TsSlider
          Left = 132
          Top = 218
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
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
          SliderOn = False
        end
        object RCSdr7: TsSlider
          Left = 132
          Top = 198
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
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
          SliderOn = False
        end
        object FPSdr6: TsSlider
          Left = 132
          Top = 178
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
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
          SliderOn = False
        end
        object FASdr5: TsSlider
          Left = 132
          Top = 158
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
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
          SliderOn = False
        end
        object BankSdr10: TsSlider
          Left = 132
          Top = 258
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
          SliderOn = False
        end
        object CaisseSdr9: TsSlider
          Left = 132
          Top = 238
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
          SliderOn = False
        end
        object ClientCreditSdr20: TsSlider
          Left = 381
          Top = 258
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
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
          SliderOn = False
        end
        object localSdr19: TsSlider
          Left = 381
          Top = 238
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
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
          SliderOn = False
        end
        object ClientSdr12: TsSlider
          Left = 381
          Top = 97
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
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
          SliderOn = False
          OnChanging = ClientSdr12Changing
        end
        object ChargeSdr14: TsSlider
          Left = 381
          Top = 138
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
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
          SliderOn = False
        end
        object FourSdr13: TsSlider
          Left = 381
          Top = 118
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
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
          SliderOn = False
          OnChanging = FourSdr13Changing
        end
        object UniteSdr18: TsSlider
          Left = 381
          Top = 218
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 16
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
          SliderOn = False
        end
        object PSFamileSdr17: TsSlider
          Left = 381
          Top = 198
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
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
          SliderOn = False
        end
        object PFamileSdr16: TsSlider
          Left = 381
          Top = 178
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
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
          SliderOn = False
        end
        object PerteSdr15: TsSlider
          Left = 381
          Top = 158
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
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
          SliderOn = False
        end
        object ProduitSdr11: TsSlider
          Left = 381
          Top = 78
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
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
          Left = 381
          Top = 277
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
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
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
          SliderOn = False
        end
      end
      object Panel15: TPanel
        Left = -9
        Top = 303
        Width = 448
        Height = 4
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 1
      end
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 4
        Height = 581
        Align = alLeft
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 2
      end
      object Panel17: TPanel
        Left = 435
        Top = 0
        Width = 5
        Height = 581
        Align = alRight
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 3
      end
    end
    object sTabSheet3: TsTabSheet
      Caption = 'Produit Favoris'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object Label40: TLabel
        Left = 10
        Top = 7
        Width = 131
        Height = 21
        Caption = 'Produit Favoris'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 22
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 4
        Height = 581
        Align = alLeft
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 0
      end
      object Panel13: TPanel
        Left = 435
        Top = 0
        Width = 5
        Height = 581
        Align = alRight
        BevelOuter = bvNone
        Color = 15658734
        ParentBackground = False
        TabOrder = 1
      end
    end
  end
  object TopP: TPanel
    Left = 0
    Top = 0
    Width = 448
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
    Top = 638
    Width = 448
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
    DesignSize = (
      448
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
      Version = '1.6.1.2'
      TMSStyle = 0
    end
  end
  object OpenPictureDialogProduitG: TOpenPictureDialog
    Filter = 'JPEG graphics (*.jpg)|*.jpg'
    Left = 36
    Top = 207
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
    Left = 30
    Top = 286
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
    Left = 282
    Top = 100
  end
end
