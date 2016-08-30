object BonFacAGestionF: TBonFacAGestionF
  Left = 0
  Top = 0
  Caption = 'BonFacAGestionF'
  ClientHeight = 702
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1089
    702)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 304
    Width = 2
    Height = 249
    Align = alLeft
    BevelOuter = bvNone
    Color = 7854350
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
  end
  object TopP2: TPanel
    Left = 0
    Top = 0
    Width = 1089
    Height = 304
    Align = alTop
    BevelOuter = bvNone
    Color = 15722984
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
    DesignSize = (
      1089
      304)
    object Shape1: TShape
      Left = 7
      Top = 13
      Width = 340
      Height = 187
      Brush.Color = 15722984
      Pen.Color = 1752319
    end
    object EditBAFacBonFacAGBtn: TAdvToolButton
      Left = 626
      Top = 18
      Width = 100
      Height = 30
      Cursor = crHandPoint
      AutoThemeAdapt = False
      BorderColor = 7854350
      BorderDownColor = 7854350
      BorderHotColor = 4666873
      Color = 15722984
      ColorDown = 7854350
      ColorHot = 15722984
      ColorChecked = clNone
      DropDownSplit = False
      Caption = 'Modifier'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 29
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -1
      OnClick = EditBAFacBonFacAGBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object AddBAFacBonFacAGBtn: TAdvToolButton
      Left = 520
      Top = 18
      Width = 100
      Height = 30
      Cursor = crHandPoint
      AutoThemeAdapt = False
      BorderColor = 7854350
      BorderDownColor = 7854350
      BorderHotColor = 4666873
      Color = 15722984
      ColorDown = 7854350
      ColorHot = 15722984
      ColorChecked = clNone
      DropDownSplit = False
      Caption = 'Nouveau'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 28
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -1
      OnClick = AddBAFacBonFacAGBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object Label3: TLabel
      Left = 9
      Top = 268
      Width = 92
      Height = 18
      Anchors = [akLeft, akBottom]
      Caption = 'Les Produits:'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 19
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
      ExplicitTop = 236
    end
    object sSpeedButton1: TsSpeedButton
      Left = 1005
      Top = 18
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton1Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 7
    end
    object sSpeedButton2: TsSpeedButton
      Left = 969
      Top = 18
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton2Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 8
    end
    object sSpeedButton3: TsSpeedButton
      Left = 1041
      Top = 18
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton3Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 9
    end
    object Label4: TLabel
      Left = 16
      Top = 63
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
    object Label5: TLabel
      Left = 15
      Top = 23
      Width = 140
      Height = 20
      Caption = 'Facture d'#39'Achat N'#176
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
    object NumBonFacAGEdt: TLabel
      Left = 159
      Top = 22
      Width = 128
      Height = 22
      Caption = 'FA2016/00001'
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
    object AddFourBonFacAGBtn: TAdvToolButton
      Left = 875
      Top = 85
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
      OnClick = AddFourBonFacAGBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object Label6: TLabel
      Left = 371
      Top = 87
      Width = 86
      Height = 18
      Caption = 'Fournisseur:'
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
    object ValiderBAFacBonFacAGBtn: TAdvToolButton
      Left = 732
      Top = 18
      Width = 100
      Height = 30
      Cursor = crHandPoint
      AutoThemeAdapt = False
      BorderColor = 7854350
      BorderDownColor = 7854350
      BorderHotColor = 4666873
      Color = 15722984
      ColorDown = 7854350
      ColorHot = 15722984
      ColorChecked = clNone
      DropDownSplit = False
      Caption = 'Valider'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 30
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -1
      OnClick = ValiderBAFacBonFacAGBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object Label7: TLabel
      Left = 414
      Top = 132
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
    object AddModePaieBonFacAGBtn: TAdvToolButton
      Left = 618
      Top = 128
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
      OnClick = AddModePaieBonFacAGBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object Label8: TLabel
      Left = 657
      Top = 132
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
    object AddCompteBonFacAGBtn: TAdvToolButton
      Left = 875
      Top = 128
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
      OnClick = AddCompteBonFacAGBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object ListAddProduitBonFacAGBtn: TAdvToolButton
      Left = 539
      Top = 261
      Width = 71
      Height = 30
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
      AutoThemeAdapt = False
      BorderColor = 7854350
      BorderDownColor = 7854350
      BorderHotColor = 4666873
      Color = 15722984
      ColorDown = 7854350
      ColorHot = 15722984
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
      OnClick = ListAddProduitBonFacAGBtnClick
      Version = '1.6.1.1'
      ExplicitTop = 229
      TMSStyle = 0
    end
    object DeleteProduitBonFacAGBtn: TAdvToolButton
      Left = 724
      Top = 263
      Width = 26
      Height = 26
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
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
      ImageIndex = 14
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      Shaded = False
      ShowHint = True
      Spacing = -1
      Visible = False
      OnClick = DeleteProduitBonFacAGBtnClick
      Version = '1.6.1.1'
      ExplicitTop = 231
      TMSStyle = 0
    end
    object NewAddProduitBonFacAGBtn: TAdvToolButton
      Left = 617
      Top = 261
      Width = 100
      Height = 30
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
      AutoThemeAdapt = False
      BorderColor = 7854350
      BorderDownColor = 7854350
      BorderHotColor = 4666873
      Color = 15722984
      ColorDown = 7854350
      ColorHot = 15722984
      ColorChecked = clNone
      DropDownSplit = False
      Caption = 'Nouveau'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 4
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -1
      OnClick = NewAddProduitBonFacAGBtnClick
      Version = '1.6.1.1'
      ExplicitTop = 229
      TMSStyle = 0
    end
    object RequiredFourGlbl: TLabel
      Left = 534
      Top = 66
      Width = 267
      Height = 30
      Alignment = taCenter
      AutoSize = False
      Caption = 'S'#39'il vous pla'#238't entrer le nom de le Fournisseur'
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
    object EnterAddProduitBonFacAGBtn: TAdvToolButton
      Left = 499
      Top = 261
      Width = 34
      Height = 30
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
      AutoThemeAdapt = False
      BorderColor = 7854350
      BorderDownColor = 7854350
      BorderHotColor = 4666873
      Color = 15722984
      ColorDown = 7854350
      ColorHot = 15722984
      ColorChecked = clNone
      DropDownSplit = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 15
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -1
      OnClick = EnterAddProduitBonFacAGBtnClick
      Version = '1.6.1.1'
      ExplicitTop = 229
      TMSStyle = 0
    end
    object ClearProduitBonFacAGBtn: TAdvToolButton
      Left = 756
      Top = 263
      Width = 26
      Height = 26
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
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
      ImageIndex = 16
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      Shaded = False
      ShowHint = True
      Spacing = -1
      Visible = False
      OnClick = ClearProduitBonFacAGBtnClick
      Version = '1.6.1.1'
      ExplicitTop = 231
      TMSStyle = 0
    end
    object ValiderBAFacBonFacAGImg: TsImage
      Left = 966
      Top = 230
      Width = 69
      Height = 72
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Center = True
      Picture.Data = {07544269746D617000000000}
      Proportional = True
      Stretch = True
      ImageIndex = 1
      Images = MainForm.PanelIcons48
      SkinData.SkinSection = 'CHECKBOX'
    end
    object Shape5: TShape
      Left = 903
      Top = 65
      Width = 186
      Height = 148
      Anchors = [akTop, akRight]
      Brush.Color = 4207405
      Pen.Color = 1752319
    end
    object BonFATotalTTCNewLbl: TLabel
      Left = 304
      Top = 54
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object BonFATotalHTNewLbl: TLabel
      Left = 304
      Top = 75
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object TotalTVANewLbl: TLabel
      Left = 304
      Top = 108
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Label9: TLabel
      Left = 380
      Top = 177
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
    object ObserBonFacAGLbl: TLabel
      Left = 15
      Top = 99
      Width = 102
      Height = 20
      Caption = 'Observations:'
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
    object BonFARemiseHTNewLbl: TLabel
      Left = 225
      Top = 90
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object ValiderBAFacBonFacAGLbl: TLabel
      Left = 903
      Top = 213
      Width = 186
      Height = 19
      Alignment = taCenter
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = 'Ce facture n'#39'est pas encore Valid'#233
      Color = 7566591
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      StyleElements = []
    end
    object RequiredStarProduitGLbl: TLabel
      Left = 615
      Top = 133
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
    object Label21: TLabel
      Left = 872
      Top = 90
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
    object ModepPaiGErrorP: TPanel
      Left = 462
      Top = 124
      Width = 154
      Height = 34
      BevelOuter = bvNone
      BevelWidth = 2
      Color = 8421631
      Ctl3D = False
      FullRepaint = False
      ParentBackground = False
      ParentCtl3D = False
      ShowCaption = False
      TabOrder = 21
      Visible = False
      StyleElements = []
    end
    object NameFourGErrorP: TPanel
      Left = 461
      Top = 81
      Width = 413
      Height = 34
      BevelOuter = bvNone
      BevelWidth = 2
      Color = 8421631
      Ctl3D = False
      FullRepaint = False
      ParentBackground = False
      ParentCtl3D = False
      ShowCaption = False
      TabOrder = 18
      Visible = False
      StyleElements = []
    end
    object Panel6: TPanel
      Left = 362
      Top = 21
      Width = 132
      Height = 25
      BevelEdges = []
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 15722984
      Ctl3D = True
      DoubleBuffered = False
      FullRepaint = False
      ParentBackground = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      TabOrder = 0
      StyleElements = []
      object sSpeedButton4: TsSpeedButton
        Left = 99
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Modifer'
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton4Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 3
      end
      object sSpeedButton5: TsSpeedButton
        Left = 69
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Detaill'
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton5Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 2
        ShowCaption = False
      end
      object sSpeedButton6: TsSpeedButton
        Left = 39
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Modifer'
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton6Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 1
      end
      object sSpeedButton7: TsSpeedButton
        Left = 9
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Detaill'
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton7Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 0
        ShowCaption = False
      end
    end
    object Panel7: TPanel
      Left = 355
      Top = 65
      Width = 548
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 1752319
      ParentBackground = False
      TabOrder = 1
      StyleElements = []
    end
    object Panel8: TPanel
      Left = 1085
      Top = 13
      Width = 1
      Height = 40
      ParentCustomHint = False
      Anchors = [akTop, akRight]
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 1752319
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
      TabOrder = 2
      StyleElements = []
    end
    object Panel9: TPanel
      Left = 954
      Top = 13
      Width = 1
      Height = 40
      ParentCustomHint = False
      Anchors = [akTop, akRight]
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 1752319
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
      TabOrder = 3
      StyleElements = []
    end
    object Panel10: TPanel
      Left = 502
      Top = 13
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 1752319
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
      TabOrder = 4
      StyleElements = []
    end
    object Panel11: TPanel
      Left = 355
      Top = 13
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 1752319
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
      TabOrder = 5
      StyleElements = []
    end
    object DateBonFacAGD: TDateTimePicker
      Left = 73
      Top = 60
      Width = 124
      Height = 26
      Date = 42515.000000000000000000
      Time = 42515.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 19
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object FourBonFacAGCbx: TComboBox
      Left = 463
      Top = 83
      Width = 409
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
      TabOrder = 7
      OnChange = FourBonFacAGCbxChange
      OnClick = FourBonFacAGCbxExit
      OnDropDown = FourBonFacAGCbxEnter
      OnEnter = FourBonFacAGCbxEnter
      OnExit = FourBonFacAGCbxExit
      OnKeyPress = FourBonFacAGCbxKeyPress
    end
    object Panel12: TPanel
      Left = 0
      Top = 210
      Width = 903
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 1752319
      ParentBackground = False
      TabOrder = 8
      StyleElements = []
    end
    object ProduitBonFacAGCbx: TComboBox
      Left = 107
      Top = 261
      Width = 386
      Height = 30
      Anchors = [akLeft, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      Sorted = True
      TabOrder = 9
      OnDropDown = ProduitBonFacAGCbxEnter
      OnEnter = ProduitBonFacAGCbxEnter
      OnExit = ProduitBonFacAGCbxExit
      OnKeyDown = ProduitBonFacAGCbxKeyDown
      OnKeyPress = ProduitBonFacAGCbxKeyPress
    end
    object ResherchPARDesProduitsRdioBtn: TRadioButton
      Left = 107
      Top = 230
      Width = 115
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'par D'#233'signation'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      TabStop = True
      StyleElements = []
    end
    object ResherchPARCBProduitsRdioBtn: TRadioButton
      Left = 372
      Top = 230
      Width = 120
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'par Code a Barre'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 11
      StyleElements = []
    end
    object Panel2: TPanel
      Left = 0
      Top = 302
      Width = 1089
      Height = 2
      Align = alBottom
      BevelOuter = bvNone
      Color = 7854350
      ParentBackground = False
      TabOrder = 12
      StyleElements = []
    end
    object ResherchPARRefProduitsRdioBtn: TRadioButton
      Left = 245
      Top = 230
      Width = 106
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'par R'#233'f'#233'rence'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      StyleElements = []
    end
    object Panel13: TPanel
      Left = 355
      Top = 81
      Width = 1
      Height = 119
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 1752319
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
      TabOrder = 14
      StyleElements = []
    end
    object ModePaieBonFacAGCbx: TComboBox
      Left = 463
      Top = 126
      Width = 152
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnChange = ModePaieBonFacAGCbxChange
      OnClick = ModePaieBonFacAGCbxClick
      OnDropDown = ModePaieBonFacAGCbxDropDown
      OnEnter = ModePaieBonFacAGCbxClick
      OnExit = ModePaieBonFacAGCbxClick
      OnSelect = ModePaieBonFacAGCbxClick
      Items.Strings = (
        'Esp'#232'ce'
        'ch'#232'que '
        '')
    end
    object CompteBonFacAGCbx: TComboBox
      Left = 720
      Top = 126
      Width = 152
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnChange = CompteBonFacAGCbxChange
      OnDropDown = CompteBonFacAGCbxEnter
      OnEnter = CompteBonFacAGCbxEnter
    end
    object Panel5: TPanel
      Left = 903
      Top = 67
      Width = 186
      Height = 140
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      Color = 4207405
      ParentBackground = False
      TabOrder = 17
      StyleElements = []
      DesignSize = (
        186
        140)
      object BonFacAGFourOLDCredit: TLabel
        AlignWithMargins = True
        Left = 7
        Top = 37
        Width = 169
        Height = 20
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
        Font.Height = 26
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        StyleElements = []
      end
      object BonFacAGFourNEWCredit: TLabel
        AlignWithMargins = True
        Left = 7
        Top = 112
        Width = 169
        Height = 20
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '0'
        Color = 15722984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5425663
        Font.Height = 26
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        StyleElements = []
      end
      object Label16: TLabel
        Left = 6
        Top = 78
        Width = 101
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Nouveau Solde:'
        Color = 4207405
        Font.Charset = ANSI_CHARSET
        Font.Color = 15722984
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label17: TLabel
        Left = 6
        Top = 6
        Width = 87
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Ancien Solde:'
        Color = 4207405
        Font.Charset = ANSI_CHARSET
        Font.Color = 15722984
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Panel15: TPanel
        Left = 0
        Top = 70
        Width = 185
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvLowered
        Color = 1752319
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
      end
    end
    object NChequeBonFacAGCbx: TEdit
      Left = 463
      Top = 170
      Width = 409
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 22
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object ObserBonFacAGMem: TMemo
      Left = 24
      Top = 124
      Width = 307
      Height = 64
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
  end
  object ProduitsListDBGridEh: TDBGridEh
    Left = 8
    Top = 304
    Width = 1086
    Height = 250
    Anchors = [akLeft, akTop, akRight, akBottom]
    Border.Color = 4207405
    Border.ExtendedDraw = False
    BorderStyle = bsNone
    Color = clWhite
    ColumnDefValues.EndEllipsis = True
    ColumnDefValues.Title.TitleButton = True
    ColumnDefValues.ToolTips = True
    Ctl3D = True
    DataGrouping.Active = True
    DataSource = BonFacAPListDataS
    DynProps = <>
    EditActions = [geaSelectAllEh]
    EvenRowColor = clWindow
    FixedColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    GridLineParams.DataHorzLines = True
    GridLineParams.DataVertLines = True
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    HorzScrollBar.ExtraPanel.VisibleItems = [gsbiNavigator, gsbiSelAggregationInfoEh]
    HorzScrollBar.Height = 15
    IndicatorOptions = [gioShowRecNoEh]
    IndicatorParams.Color = clBtnFace
    IndicatorParams.HorzLineColor = 15970832
    IndicatorParams.VertLineColor = 15970832
    IndicatorParams.VertLines = True
    IndicatorTitle.UseGlobalMenu = False
    OddRowColor = 16315635
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Color = clBtnFace
    RowHeight = 35
    SearchPanel.FilterOnTyping = True
    ShowHint = True
    TabOrder = 2
    TitleParams.BorderInFillStyle = True
    TitleParams.FillStyle = cfstThemedEh
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = 4207405
    TitleParams.Font.Height = 20
    TitleParams.Font.Name = 'Helvetica LT Std'
    TitleParams.Font.Style = []
    TitleParams.Font.Quality = fqProof
    TitleParams.ParentFont = False
    TitleParams.RowHeight = 25
    TitleParams.SortMarkerStyle = smstThemeDefinedEh
    TitleParams.VertLines = True
    VertScrollBar.Width = 15
    OnKeyPress = ProduitsListDBGridEhKeyPress
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'referp'
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'R'#233'ference'
        Width = 150
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nomp'
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'D'#233'signation'
        Width = 500
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'qut_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        MaxWidth = 100
        MinWidth = 100
        Title.Alignment = taCenter
        Title.Caption = 'Quantit'#233
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 100
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'cond_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Cond'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 70
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixht_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'PRIX HT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
      end
      item
        Alignment = taCenter
        DropDownBox.ColumnDefValues.Layout = tlCenter
        DropDownBox.Options = []
        DropDownRows = 0
        DropDownSpecRow.ShowIfNotInKeyList = False
        DropDownWidth = -1
        DynProps = <>
        EditButtons = <>
        FieldName = 'tvap'
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'TVA'
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixATTC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5345802
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Visible = False
        Width = 170
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'MontantHT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'MontantTVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'MontantTTC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 553
    Width = 1089
    Height = 149
    Align = alBottom
    BevelOuter = bvNone
    Color = 4207405
    ParentBackground = False
    TabOrder = 3
    StyleElements = []
    DesignSize = (
      1089
      149)
    object Shape4: TShape
      Left = 802
      Top = 0
      Width = 287
      Height = 149
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = 4207405
      Pen.Color = 1752319
    end
    object Shape3: TShape
      Left = 404
      Top = 0
      Width = 199
      Height = 149
      Brush.Color = 4207405
      Pen.Color = 1752319
    end
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 205
      Height = 149
      Brush.Color = 4207405
      Pen.Color = 1752319
    end
    object label13: TLabel
      Left = 612
      Top = 9
      Width = 47
      Height = 21
      Caption = 'R'#233'gl'#233':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object label12: TLabel
      Left = 612
      Top = 76
      Width = 71
      Height = 21
      Caption = 'Le Reste:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object Label1: TLabel
      Left = 413
      Top = 9
      Width = 80
      Height = 21
      Caption = 'Total TVA:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object Label2: TLabel
      Left = 12
      Top = 9
      Width = 70
      Height = 21
      Caption = 'Total HT:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object BonFacATotalTVALbl: TLabel
      AlignWithMargins = True
      Left = 404
      Top = 41
      Width = 192
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Alignment = taRightJustify
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '0'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5425663
      Font.Height = 25
      Font.Name = 'Helvetica LT Std'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object BonFacARegleLbl: TLabel
      AlignWithMargins = True
      Left = 602
      Top = 41
      Width = 194
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Alignment = taRightJustify
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '0'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14727239
      Font.Height = 25
      Font.Name = 'Helvetica LT Std'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object BonFacAResteLbl: TLabel
      AlignWithMargins = True
      Left = 602
      Top = 108
      Width = 193
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
    object BonFacATotalHTLbl: TLabel
      AlignWithMargins = True
      Left = -3
      Top = 41
      Width = 200
      Height = 25
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
    object BonFacATotalTTCLbl: TLabel
      AlignWithMargins = True
      Left = 404
      Top = 108
      Width = 192
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
      Font.Color = 16771277
      Font.Height = 25
      Font.Name = 'Helvetica LT Std'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object Label10: TLabel
      Left = 412
      Top = 76
      Width = 79
      Height = 21
      Caption = 'Total TTC:'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object TimberBonFacAGlbl: TLabel
      Left = 212
      Top = 83
      Width = 58
      Height = 21
      Caption = 'Timber:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7566591
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
      StyleElements = []
    end
    object TimberPerctageBonFacAGLbl: TLabel
      AlignWithMargins = True
      Left = 392
      Top = 85
      Width = 10
      Height = 17
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = '%'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7566591
      Font.Height = 17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      Visible = False
      StyleElements = []
    end
    object Label11: TLabel
      AlignWithMargins = True
      Left = 392
      Top = 11
      Width = 10
      Height = 17
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = '%'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14727239
      Font.Height = 17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object Label14: TLabel
      Left = 212
      Top = 9
      Width = 61
      Height = 21
      Caption = 'Remise:'
      Color = 14727239
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14727239
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object Label15: TLabel
      Left = 12
      Top = 77
      Width = 100
      Height = 102
      Caption = 'Facture'#13#10'D'#39'Achat'#13#10
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -29
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object Label18: TLabel
      Left = 804
      Top = 9
      Width = 280
      Height = 21
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Stock Actuel'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object BonFacAGOLDStock: TLabel
      AlignWithMargins = True
      Left = 804
      Top = 37
      Width = 280
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '0'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15722984
      Font.Height = 25
      Font.Name = 'Helvetica LT Std'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object Label19: TLabel
      Left = 804
      Top = 68
      Width = 280
      Height = 21
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Nouveau Stock'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 21
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object BonFacAGNEWStock: TLabel
      AlignWithMargins = True
      Left = 804
      Top = 93
      Width = 280
      Height = 29
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = '0'
      Color = 4207405
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3854249
      Font.Height = 25
      Font.Name = 'Helvetica LT Std'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object Label20: TLabel
      Left = 803
      Top = 124
      Width = 285
      Height = 25
      Alignment = taCenter
      Anchors = [akLeft, akRight, akBottom]
      AutoSize = False
      Caption = 'Alerte !! Le Seuil Du Stock Minimum Atteint'
      Color = 4666873
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 17
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      Visible = False
      StyleElements = []
    end
    object Panel14: TPanel
      Left = 0
      Top = 73
      Width = 803
      Height = 1
      BevelOuter = bvLowered
      Color = 1752319
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 0
      StyleElements = []
    end
    object TimberPerctageBonFacAGEdt: TEdit
      Left = 340
      Top = 81
      Width = 50
      Height = 26
      Alignment = taRightJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
      Text = '01'
      Visible = False
    end
    object TimberBonFacAGEdt: TEdit
      Left = 276
      Top = 115
      Width = 114
      Height = 26
      Alignment = taRightJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object RemisePerctageBonFacAGEdt: TEdit
      Left = 340
      Top = 7
      Width = 50
      Height = 26
      Alignment = taRightJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 3
      OnChange = RemisePerctageBonFacAGEdtChange
      OnClick = RemisePerctageBonFacAGEdtClick
      OnEnter = RemisePerctageBonFacAGEdtEnter
      OnKeyPress = RemisePerctageBonFacAGEdtKeyPress
    end
    object RemiseBonFacAGEdt: TEdit
      Left = 276
      Top = 41
      Width = 114
      Height = 26
      Alignment = taRightJustify
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      MaxLength = -1
      ParentFont = False
      TabOrder = 4
      OnChange = RemiseBonFacAGEdtChange
      OnClick = RemiseBonFacAGEdtClick
      OnEnter = RemiseBonFacAGEdtEnter
      OnExit = RemiseBonFacAGEdtExit
      OnKeyPress = RemiseBonFacAGEdtKeyPress
    end
    object Panel1: TPanel
      Left = 204
      Top = 148
      Width = 599
      Height = 1
      BevelOuter = bvLowered
      Color = 1752319
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 5
      StyleElements = []
    end
    object RemiseTypeBonFacAGCbx: TComboBox
      Left = 276
      Top = 8
      Width = 52
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
      TabOrder = 6
      Text = 'HT'
      StyleElements = [seClient, seBorder]
      OnChange = RemiseTypeBonFacAGCbxChange
      Items.Strings = (
        'HT'
        'TTC')
    end
  end
  object BonFacAPListDataS: TDataSource
    DataSet = MainForm.Bona_fac_listTable
    OnDataChange = BonFacAPListDataSDataChange
    Left = 984
    Top = 480
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 864
    Top = 432
  end
  object frxBonFacAPListDB: TfrxDBDataset
    UserName = 'frxBonFacAPListDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_bafacl=code_bafacl'
      'code_bafac=code_bafac'
      'qut_p=qut_p'
      'prixht_p=prixht_p'
      'cond_p=cond_p'
      'PrixVTTC=PrixVTTC'
      'MontantHT=MontantHT'
      'MontantTVA=MontantTVA'
      'MontantTTC=MontantTTC'
      'code_p=code_p'
      'nomp=nomp'
      'referp=referp'
      'tvap=tvap'
      'TVA=TVA'
      'tva_p=tva_p')
    DataSource = BonFacAPListDataS
    BCDToCurrency = False
    Left = 248
    Top = 384
  end
  object frxBonRecDT: TfrxDBDataset
    UserName = 'frxBonFacADB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_bafac=code_bafac'
      'date_bafac=date_bafac'
      'time_bafac=time_bafac'
      'code_f=code_f'
      'montht_bafac=montht_bafac'
      'montver_bafac=montver_bafac'
      'valider_bafac=valider_bafac'
      'num_bafac=num_bafac'
      'fourbafac=fourbafac'
      'MontantTVA=MontantTVA'
      'MontantRes=MontantRes'
      'obser_bafac=obser_bafac'
      'montttc_bafac=montttc_bafac'
      'remise_bafac=remise_bafac'
      'num_cheque_bafac=num_cheque_bafac'
      'code_mdpai=code_mdpai'
      'code_cmpt=code_cmpt'
      'NEWTTC=NEWTTC'
      'RemisePerc=RemisePerc'
      'Compte=Compte'
      'ModePaie=ModePaie'
      'timber_bafac=timber_bafac'
      'code_ur=code_ur'
      'Agnet=Agnet'
      'NeTHT=NeTHT'
      'NetTTC=NetTTC')
    DataSet = MainForm.Bona_facTable
    BCDToCurrency = False
    Left = 248
    Top = 432
  end
  object frxFourDB: TfrxDBDataset
    UserName = 'frxFourDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_f=code_f'
      'nom_f=nom_f'
      'adr_f=adr_f'
      'ville_f=ville_f'
      'willaya_f=willaya_f'
      'pays_f=pays_f'
      'fix_f=fix_f'
      'mob_f=mob_f'
      'mob2_f=mob2_f'
      'fax_f=fax_f'
      'email_f=email_f'
      'obser_f=obser_f'
      'logo_f=logo_f'
      'activ_f=activ_f'
      'rc_f=rc_f'
      'nif_f=nif_f'
      'nart_f=nart_f'
      'nis_f=nis_f'
      'nbank_f=nbank_f'
      'rib_f=rib_f'
      'siteweb_f=siteweb_f'
      'oldcredit_f=oldcredit_f'
      'maxcredit_f=maxcredit_f')
    DataSet = MainForm.FournisseurTable
    BCDToCurrency = False
    Left = 248
    Top = 480
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    ExportEMF = False
    ExportPictures = False
    OpenExcelAfterExport = True
    Wysiwyg = False
    AsText = False
    Background = False
    FastExport = True
    PageBreaks = False
    EmptyLines = False
    SuppressPageHeadersFooters = False
    GridLines = False
    Left = 344
    Top = 480
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 408
    Top = 480
  end
  object BonFacAPListfrxRprt: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 42581.699095555600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 248
    Top = 328
    Datasets = <
      item
        DataSet = frxBonRecDT
        DataSetName = 'frxBonFacADB'
      end
      item
        DataSet = frxBonFacAPListDB
        DataSetName = 'frxBonFacAPListDB'
      end
      item
        DataSet = frxFourDB
        DataSetName = 'frxFourDB'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      VGuides.Strings = (
        '404,40971')
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 21.057381430000000000
        Top = 812.598950000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.159731430000000000
          Width = 35.095635710000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Agent :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 3.023622050000000000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = clNone
        end
        object frxDBDataset2Agnet: TfrxMemoView
          Left = 35.574830000000000000
          Top = 0.779530000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataField = 'Agnet'
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            '[frxBonFacADB."Agnet"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          Left = 570.929500000000000000
          Top = 1.000000000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page: [Page]/[TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 322.978018180000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 275.732530000000000000
          Top = 294.425196850000000000
          Width = 68.031503390000000000
          Height = 28.346456690000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Qt'#233)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 294.425196850394000000
          Width = 19.584837270000000000
          Height = 28.346456692913400000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 571.929500000000000000
          Top = 294.425196850394000000
          Width = 147.401574800000000000
          Height = 28.346456692913400000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Montant HT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 343.661720000000000000
          Top = 294.425196850000000000
          Width = 147.401574800000000000
          Height = 28.346456690000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Prix Unitaire HT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 18.692950000000000000
          Top = 294.425196850000000000
          Width = 257.695227270000000000
          Height = 28.346456690000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#233'signation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 358.897650000000000000
          Top = 106.504020000000000000
          Width = 52.652762760000000000
          Height = 15.639434480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Date :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 358.897650000000000000
          Top = 49.031540000000000000
          Width = 44.667172730000000000
          Height = 39.169674550000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4144959
          Font.Height = -33
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object NumRX: TfrxMemoView
          Left = 411.811070000000000000
          Top = 49.031540000000000000
          Width = 305.454742730000000000
          Height = 39.169674550000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4144959
          Font.Height = -33
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object DateRX: TfrxMemoView
          Left = 411.811070000000000000
          Top = 106.504020000000000000
          Width = 305.881272760000000000
          Height = 15.639434480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Date :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 12.953000000000000000
          Top = 104.165430000000000000
          Width = 114.073087270000000000
          Height = 28.724409450000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Fournisseur :')
          ParentFont = False
          VAlign = vaCenter
        end
        object NameRX: TfrxMemoView
          Left = 12.953000000000000000
          Top = 148.960730000000000000
          Width = 377.692342760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Name Four')
          ParentFont = False
          VAlign = vaCenter
        end
        object AdrRX: TfrxMemoView
          Left = 12.953000000000000000
          Top = 183.976500000000000000
          Width = 377.692342760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
          VAlign = vaCenter
        end
        object VilleRX: TfrxMemoView
          Left = 12.953000000000000000
          Top = 217.212740000000000000
          Width = 377.692342760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Ville')
          ParentFont = False
          VAlign = vaCenter
        end
        object WilayaRX: TfrxMemoView
          Left = 12.953000000000000000
          Top = 250.448980000000000000
          Width = 377.692342760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Wilaya')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape5: TfrxShapeView
          Left = 115.000310000000000000
          Top = 129.713385830000000000
          Width = 604.724800000000000000
          Height = 2.645669290000000000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = 13948116
          Frame.ShadowColor = 13948116
        end
        object Memo1: TfrxMemoView
          Left = 489.795610000000000000
          Top = 294.425196850000000000
          Width = 83.149591650000000000
          Height = 28.346456690000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Taux')
          ParentFont = False
          VAlign = vaCenter
        end
        object RC: TfrxMemoView
          Left = 451.409710000000000000
          Top = 148.960730000000000000
          Width = 268.085972760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'RC :')
          ParentFont = False
          VAlign = vaCenter
        end
        object NArt: TfrxMemoView
          Left = 451.409710000000000000
          Top = 183.976500000000000000
          Width = 268.085972760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'N'#176' Art :')
          ParentFont = False
          VAlign = vaCenter
        end
        object NIF: TfrxMemoView
          Left = 451.409710000000000000
          Top = 217.212740000000000000
          Width = 268.085972760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'NIF :')
          ParentFont = False
          VAlign = vaCenter
        end
        object NIS: TfrxMemoView
          Left = 451.409710000000000000
          Top = 250.448980000000000000
          Width = 268.085972760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'NIS :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 403.875067240000000000
          Top = 148.960730000000000000
          Width = 45.093702760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RC :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 392.897650000000000000
          Top = 183.976500000000000000
          Width = 56.432292760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#176' Art :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 403.236240000000000000
          Top = 217.212740000000000000
          Width = 45.093702760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NIF :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 403.236240000000000000
          Top = 250.448980000000000000
          Width = 45.093702760000000000
          Height = 23.198494480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NIS :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 24.566929130000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        DataSet = frxBonFacAPListDB
        DataSetName = 'frxBonFacAPListDB'
        RowCount = 0
        object frxDBDataset1nomp: TfrxMemoView
          Left = 11.133890000000000000
          Top = 3.559060000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'nomp'
          DataSet = frxBonFacAPListDB
          DataSetName = 'frxBonFacAPListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            '[frxBonFacAPListDB."nomp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line: TfrxMemoView
          Top = 3.559060000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1qut_p: TfrxMemoView
          Left = 275.732530000000000000
          Top = 3.559060000000000000
          Width = 68.031503390000000000
          Height = 18.897650000000000000
          DataField = 'qut_p'
          DataSet = frxBonFacAPListDB
          DataSetName = 'frxBonFacAPListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxBonFacAPListDB."qut_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1prixvd_p: TfrxMemoView
          Left = 343.661720000000000000
          Top = 3.559060000000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          DataSet = frxBonFacAPListDB
          DataSetName = 'frxBonFacAPListDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacAPListDB."prixht_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1MontantHT: TfrxMemoView
          Left = 571.929500000000000000
          Top = 3.559060000000000000
          Width = 147.401574800000000000
          Height = 18.897650000000000000
          DataSet = frxBonFacAPListDB
          DataSetName = 'frxBonFacAPListDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacAPListDB."MontantHT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 491.362199840000000000
          Top = 3.439370080000000000
          Width = 79.370095830000000000
          Height = 18.897650000000000000
          DataField = 'tva_p'
          DataSet = frxBonFacAPListDB
          DataSetName = 'frxBonFacAPListDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacAPListDB."tva_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 297.295075460000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 231.315090000000000000
          Width = 718.110700000000000000
          Height = 3.212598430000000000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = 13948116
        end
        object Shape1: TfrxShapeView
          Top = 20.472480000000000000
          Width = 718.110700000000000000
          Height = 3.023622050000000000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = clNone
        end
        object Memo8: TfrxMemoView
          Left = 415.748300000000000000
          Top = 31.399172310000000000
          Width = 148.855335380000000000
          Height = 16.281052310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total HT :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 415.748300000000000000
          Top = 60.472480000000000000
          Width = 148.855335380000000000
          Height = 16.281052310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Remise              :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 415.748300000000000000
          Top = 90.708720000000000000
          Width = 148.855335380000000000
          Height = 16.281052310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total net a payer HT :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 415.748300000000000000
          Top = 120.944960000000000000
          Width = 148.855335380000000000
          Height = 16.281052310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total TVA :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 415.748300000000000000
          Top = 203.181200000000000000
          Width = 148.855335380000000000
          Height = 31.399172310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Net a payer :')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTremise_bvliv: TfrxMemoView
          Left = 565.929500000000000000
          Top = 60.472480000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'remise_bafac'
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacADB."remise_bafac"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTmontht_bvliv: TfrxMemoView
          Left = 565.929500000000000000
          Top = 31.236240000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacADB."montht_bafac"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTMontantTVA: TfrxMemoView
          Left = 565.929500000000000000
          Top = 120.944960000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacADB."MontantTVA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTmontttc_bvliv: TfrxMemoView
          Left = 563.149970000000000000
          Top = 203.181200000000000000
          Width = 154.960730000000000000
          Height = 31.370086060000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacADB."montttc_bafac"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTNeTHT: TfrxMemoView
          Left = 565.929500000000000000
          Top = 90.708720000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacADB."NeTHT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MoneyWordRX: TfrxMemoView
          Left = 3.779530000000000000
          Top = 264.345870910000000000
          Width = 562.462782730000000000
          Height = 31.610614550000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Money in words')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 566.992270000000000000
          Top = 241.196970000000000000
          Width = 132.022892760000000000
          Height = 15.639434480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cachet et Signature :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 241.414998280000000000
          Width = 218.952082760000000000
          Height = 15.639434480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Arr'#233't'#233'e la pr'#233'sente facture a la somme de :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 165.519790000000000000
          Width = 101.786652760000000000
          Height = 15.639434480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Mode de paiement :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MPRX: TfrxMemoView
          Left = 130.842610000000000000
          Top = 163.519790000000000000
          Width = 252.541322730000000000
          Height = 20.272024550000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Esp'#233'ce')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
          Top = 202.315090000000000000
          Width = 120.684302760000000000
          Height = 15.639434480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#176' ch'#233'que ou virement :')
          ParentFont = False
          VAlign = vaCenter
        end
        object NCHeqRX: TfrxMemoView
          Left = 130.842610000000000000
          Top = 200.315090000000000000
          Width = 252.541322730000000000
          Height = 20.272024550000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '000000000000')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonRecDBRemisePerc: TfrxMemoView
          Left = 500.354670000000000000
          Top = 58.960629920000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '([frxBonFacADB."RemisePerc"]%)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 415.748300000000000000
          Top = 151.181200000000000000
          Width = 148.855335380000000000
          Height = 16.281052310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total TTC :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 565.929500000000000000
          Top = 151.181200000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacADB."NetTTC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 415.748300000000000000
          Top = 177.637910000000000000
          Width = 148.855335380000000000
          Height = 16.281052310000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Timber Fiscal :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 565.929500000000000000
          Top = 177.637910000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonFacADB."timber_bafac"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Top = 20.409448820000000000
          Width = 99.721445380000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Taux de TVA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 98.267780000000000000
          Top = 20.409448820000000000
          Width = 166.299224800000000000
          Height = 28.346456690000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Montant TVA')
          ParentFont = False
          VAlign = vaCenter
        end
        object TauxTVA7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 85.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Visible = False
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object TauxTVA17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Visible = False
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object MontantTVA7: TfrxMemoView
          Left = 98.267780000000000000
          Top = 85.929190000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Visible = False
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0,00')
          ParentFont = False
          VAlign = vaCenter
        end
        object MontantTVA17: TfrxMemoView
          Left = 98.267780000000000000
          Top = 56.692950000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Visible = False
          DataSet = frxBonRecDT
          DataSetName = 'frxBonFacADB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0,00')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo19: TfrxMemoView
        Left = 358.897650000000000000
        Top = 18.795300000000000000
        Width = 343.250042730000000000
        Height = 39.169674550000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4144959
        Font.Height = -33
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'FACTURE D'#39'ACHAT')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
end
