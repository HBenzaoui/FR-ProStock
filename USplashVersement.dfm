object FSplashVersement: TFSplashVersement
  Left = 2090
  Top = 83
  BorderStyle = bsNone
  Caption = 'FSplashVersement'
  ClientHeight = 400
  ClientWidth = 304
  Color = 15722984
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    304
    400)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 86
    Width = 92
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = 'Ancien Solde:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Helvetica LT Std Fractions'
    Font.Style = []
    ParentFont = False
  end
  object OldCreditVersementSLbl: TLabel
    Left = 278
    Top = 106
    Width = 18
    Height = 38
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = 1776156
    Font.Height = -33
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 225
    Width = 75
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = 'Versement:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2497560
    Font.Height = 18
    Font.Name = 'Helvetica LT Std Fractions'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 296
    Width = 65
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = 'Le Reste:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2497560
    Font.Height = 18
    Font.Name = 'Helvetica LT Std Fractions'
    Font.Style = []
    ParentFont = False
  end
  object ResteVersementSLbl: TLabel
    Left = 278
    Top = 313
    Width = 18
    Height = 38
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = 4666873
    Font.Height = -33
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object OKVersementSBtn: TAdvToolButton
    Tag = 2
    Left = 41
    Top = 362
    Width = 100
    Height = 30
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
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
    OnClick = OKVersementSBtnClick
    Version = '1.6.1.1'
    TMSStyle = 0
  end
  object CancelVersementSBtn: TAdvToolButton
    Left = 167
    Top = 362
    Width = 100
    Height = 30
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
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
    OnClick = CancelVersementSBtnClick
    Version = '1.6.1.1'
    ExplicitTop = 381
    TMSStyle = 0
  end
  object Label8: TLabel
    Left = 8
    Top = 155
    Width = 133
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = 'Montant Bon Actuel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2497560
    Font.Height = 18
    Font.Name = 'Helvetica LT Std Fractions'
    Font.Style = []
    ParentFont = False
  end
  object MontantTTCVersementSLbl: TLabel
    Left = 278
    Top = 177
    Width = 18
    Height = 38
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = 1776156
    Font.Height = -33
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object RequiredVerVersementSlbl: TLabel
    Left = 83
    Top = 230
    Width = 145
    Height = 13
    Alignment = taCenter
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't entrer le Montant'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4666873
    Font.Height = 12
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
    StyleElements = [seClient, seBorder]
  end
  object RequiredStarVerVersementSLbl: TLabel
    Left = 294
    Top = 258
    Width = 8
    Height = 22
    Anchors = [akLeft, akBottom]
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
  object RegleVersementSGLbl: TLabel
    Left = 228
    Top = 228
    Width = 32
    Height = 14
    Anchors = [akLeft, akBottom]
    Caption = 'R'#232'gl'#233':'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 304
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Color = 1776156
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      304
      81)
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 59
      Height = 23
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1752319
      Font.Height = 24
      Font.Name = 'Digital-7'
      Font.Style = []
      ParentFont = False
    end
    object TotalVersementSLbl: TLabel
      Left = 273
      Top = 27
      Width = 25
      Height = 51
      Alignment = taRightJustify
      Anchors = [akLeft, akBottom]
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = 7854350
      Font.Height = 51
      Font.Name = 'Digital-7'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object VerVersementSErrorP: TPanel
    Left = 13
    Top = 246
    Width = 280
    Height = 37
    Anchors = [akLeft, akBottom]
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 7
    Visible = False
    StyleElements = []
  end
  object VerVersementSEdt: TEdit
    Left = 15
    Top = 248
    Width = 276
    Height = 33
    Alignment = taRightJustify
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 25
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = VerVersementSEdtChange
    OnClick = VerVersementSEdtClick
    OnExit = VerVersementSEdtExit
    OnKeyDown = VerVersementSEdtKeyDown
    OnKeyPress = VerVersementSEdtKeyPress
  end
  object RegleVersementSGSlider: TsSlider
    Left = 260
    Top = 226
    Width = 42
    Height = 16
    Anchors = [akLeft, akBottom]
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
    OnChanging = RegleVersementSGSliderChanging
  end
  object AdvSmoothTouchKeyBoard1: TAdvSmoothTouchKeyBoard
    Left = 304
    Top = 81
    Width = 259
    Height = 319
    Text = ''
    AutoCompletion.Font.Charset = DEFAULT_CHARSET
    AutoCompletion.Font.Color = clWhite
    AutoCompletion.Font.Height = -19
    AutoCompletion.Font.Name = 'Tahoma'
    AutoCompletion.Font.Style = []
    AutoCompletion.Color = clBlack
    Fill.Color = 15066597
    Fill.ColorTo = 15066597
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.Rounding = 0
    Fill.ShadowOffset = 0
    Fill.ShadowType = stSurround
    Fill.Glow = gmNone
    ShadingColor = 15066597
    ShadingOpacity = 1
    ShadingColorTo = 15066597
    KeyboardType = ktNUMERIC
    KeyDistance = -1
    Keys = <
      item
        Caption = 'Num Lock'
        KeyValue = 144
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNum
        Color = 14276563
        ColorDown = 7854350
        X = 2
        Y = 2
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = 'Suppr'
        KeyValue = 8
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skBackSpace
        Color = 14276563
        ColorDown = 7854350
        X = 66
        Y = 2
        Height = 63
        Width = 127
        SubKeys = <>
      end
      item
        Caption = '7'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 2
        Y = 65
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '8'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 66
        Y = 65
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '9'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 129
        Y = 65
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = 'Annuler'
        KeyValue = 27
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skEscape
        Color = 14276563
        ColorDown = 7854350
        X = 193
        Y = 2
        Height = 126
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '4'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 2
        Y = 128
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '5'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 66
        Y = 128
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '6'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 129
        Y = 128
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '1'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 2
        Y = 191
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '2'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 66
        Y = 191
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '3'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 129
        Y = 191
        Height = 63
        Width = 64
        SubKeys = <>
      end
      item
        Caption = 'Enter'
        KeyValue = 13
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skReturn
        Color = 14276563
        ColorDown = 7854350
        X = 193
        Y = 128
        Height = 189
        Width = 64
        SubKeys = <>
      end
      item
        Caption = '0'
        KeyValue = -1
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skNone
        Color = 15066597
        ColorDown = 7854350
        X = 2
        Y = 254
        Height = 63
        Width = 128
        SubKeys = <>
      end
      item
        Caption = '.'
        KeyValue = 110
        ShiftKeyValue = -1
        AltGrKeyValue = -1
        SpecialKey = skDecimal
        Color = 15066597
        ColorDown = 7854350
        X = 129
        Y = 254
        Height = 63
        Width = 64
        SubKeys = <>
      end>
    SmallFont.Charset = DEFAULT_CHARSET
    SmallFont.Color = clWindowText
    SmallFont.Height = -9
    SmallFont.Name = 'Segoe UI'
    SmallFont.Style = []
    Version = '1.8.1.1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
  object Panel6: TPanel
    Left = 0
    Top = 81
    Width = 304
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 6
  end
  object Panel5: TPanel
    Left = 0
    Top = 150
    Width = 304
    Height = 2
    Anchors = [akLeft, akBottom]
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 0
    Top = 220
    Width = 304
    Height = 2
    Anchors = [akLeft, akBottom]
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 289
    Width = 304
    Height = 2
    Anchors = [akLeft, akBottom]
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 2
  end
  object Panel4: TPanel
    Left = 0
    Top = 354
    Width = 304
    Height = 2
    Anchors = [akLeft, akBottom]
    BevelOuter = bvNone
    Color = 7854350
    ParentBackground = False
    TabOrder = 4
  end
end
