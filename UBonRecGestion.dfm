object BonRecGestionF: TBonRecGestionF
  Left = 2506
  Top = 151
  Anchors = [akTop, akRight]
  Caption = 'Bon de R'#233'ception'
  ClientHeight = 702
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
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
      Pen.Color = 15970832
    end
    object EditBARecBonRecGBtn: TAdvToolButton
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
      OnClick = EditBARecBonRecGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object AddBARecBonRecGBtn: TAdvToolButton
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
      OnClick = AddBARecBonRecGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object Label4: TLabel
      Left = 9
      Top = 268
      Width = 96
      Height = 19
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
    end
    object sSpeedButton4: TsSpeedButton
      Left = 1005
      Top = 18
      Width = 30
      Height = 30
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton4Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 7
    end
    object sSpeedButton5: TsSpeedButton
      Left = 969
      Top = 18
      Width = 30
      Height = 30
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton5Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 8
    end
    object sSpeedButton6: TsSpeedButton
      Left = 1041
      Top = 18
      Width = 30
      Height = 30
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton6Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 9
    end
    object Label5: TLabel
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
    object Label6: TLabel
      Left = 15
      Top = 23
      Width = 152
      Height = 20
      Caption = 'Bon de R'#233'ception N'#176
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
    object NumBonRecGEdt: TLabel
      Left = 170
      Top = 22
      Width = 177
      Height = 22
      AutoSize = False
      Caption = 'BR2016/00001'
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
    object AddFourBonRecGBtn: TAdvToolButton
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
      OnClick = AddFourBonRecGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object Label8: TLabel
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
    object ValiderBARecBonRecGBtn: TAdvToolButton
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
      OnClick = ValiderBARecBonRecGBtnClick
      Version = '1.6.1.2'
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
    object AddModePaieBonRecGBtn: TAdvToolButton
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
      OnClick = AddModePaieBonRecGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object Label16: TLabel
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
    object AddCompteBonRecGBtn: TAdvToolButton
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
      OnClick = AddCompteBonRecGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object ListAddProduitBonRecGBtn: TAdvToolButton
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
      OnClick = ListAddProduitBonRecGBtnClick
      Version = '1.6.1.2'
      ExplicitTop = 229
      TMSStyle = 0
    end
    object DeleteProduitBonRecGBtn: TAdvToolButton
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
      OnClick = DeleteProduitBonRecGBtnClick
      Version = '1.6.1.2'
      ExplicitTop = 231
      TMSStyle = 0
    end
    object NewAddProduitBonRecGBtn: TAdvToolButton
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
      OnClick = NewAddProduitBonRecGBtnClick
      Version = '1.6.1.2'
      ExplicitTop = 229
      TMSStyle = 0
    end
    object RequiredFourGlbl: TLabel
      Left = 463
      Top = 66
      Width = 406
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
    object EnterAddProduitBonRecGBtn: TAdvToolButton
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
      OnClick = EnterAddProduitBonRecGBtnClick
      Version = '1.6.1.2'
      ExplicitTop = 229
      TMSStyle = 0
    end
    object ClearProduitBonRecGBtn: TAdvToolButton
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
      OnClick = ClearProduitBonRecGBtnClick
      Version = '1.6.1.2'
      ExplicitTop = 231
      TMSStyle = 0
    end
    object ValiderBARecBonRecGImg: TsImage
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
      Pen.Color = 15970832
    end
    object BonRTotalTTCNewLbl: TLabel
      Left = 304
      Top = 51
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object BonRTotalHTNewLbl: TLabel
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
    object Label23: TLabel
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
    object ObserBonRecGLbl: TLabel
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
    object BonRRemiseHTNewLbl: TLabel
      Left = 225
      Top = 90
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object ValiderBARecBonRecGLbl: TLabel
      Left = 903
      Top = 213
      Width = 186
      Height = 19
      Alignment = taCenter
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = 'Ce bon n'#39'est pas encore Valid'#233
      Color = 7566591
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 15
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      StyleElements = []
    end
    object sSpeedButton9: TsSpeedButton
      Left = 397
      Top = 18
      Width = 30
      Height = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton9Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 1
    end
    object sSpeedButton8: TsSpeedButton
      Left = 431
      Top = 18
      Width = 30
      Height = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton8Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 2
      ShowCaption = False
    end
    object sSpeedButton10: TsSpeedButton
      Left = 363
      Top = 18
      Width = 30
      Height = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton10Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 0
      ShowCaption = False
    end
    object sSpeedButton7: TsSpeedButton
      Left = 465
      Top = 18
      Width = 30
      Height = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton7Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 3
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
      TabOrder = 17
      Visible = False
      StyleElements = []
    end
    object Panel7: TPanel
      Left = 355
      Top = 65
      Width = 548
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 14727239
      ParentBackground = False
      TabOrder = 2
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
      Color = 15970832
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
      Color = 15970832
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
    object Panel10: TPanel
      Left = 502
      Top = 13
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 15970832
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
    object Panel11: TPanel
      Left = 355
      Top = 13
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 15970832
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
      TabOrder = 6
      StyleElements = []
    end
    object DateBonRecGD: TDateTimePicker
      Left = 73
      Top = 60
      Width = 124
      Height = 27
      Date = 42583.000000000000000000
      Time = 42583.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 19
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object FournisseurBonRecGCbx: TComboBox
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
      TabOrder = 0
      OnChange = FournisseurBonRecGCbxChange
      OnClick = FournisseurBonRecGCbxExit
      OnDropDown = FournisseurBonRecGCbxEnter
      OnEnter = FournisseurBonRecGCbxEnter
      OnExit = FournisseurBonRecGCbxExit
      OnKeyPress = FournisseurBonRecGCbxKeyPress
    end
    object Panel12: TPanel
      Left = 0
      Top = 210
      Width = 903
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 14727239
      ParentBackground = False
      TabOrder = 8
      StyleElements = []
    end
    object ResherchPARDesProduitsRdioBtn: TRadioButton
      Left = 107
      Top = 230
      Width = 115
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Par D'#233'signation'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = True
      StyleElements = []
      OnClick = ResherchPARDesProduitsRdioBtnClick
    end
    object ResherchPARCBProduitsRdioBtn: TRadioButton
      Left = 372
      Top = 230
      Width = 120
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Par Code '#226' Barre'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 10
      StyleElements = []
      OnClick = ResherchPARCBProduitsRdioBtnClick
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
      TabOrder = 11
      StyleElements = []
    end
    object ResherchPARRefProduitsRdioBtn: TRadioButton
      Left = 245
      Top = 230
      Width = 106
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Par R'#233'f'#233'rence'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      StyleElements = []
      OnClick = ResherchPARDesProduitsRdioBtnClick
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
      Color = 15970832
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
      TabOrder = 13
      StyleElements = []
    end
    object ModePaieBonRecGCbx: TComboBox
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
      TabOrder = 14
      OnClick = ModePaieBonRecGCbxClick
      OnDropDown = ModePaieBonRecGCbxDropDown
      OnEnter = ModePaieBonRecGCbxClick
      OnExit = ModePaieBonRecGCbxClick
      OnSelect = ModePaieBonRecGCbxClick
      Items.Strings = (
        'Esp'#232'ce'
        'ch'#232'que '
        '')
    end
    object CompteBonRecGCbx: TComboBox
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
      TabOrder = 15
      OnChange = CompteBonRecGCbxChange
      OnDropDown = CompteBonRecGCbxEnter
      OnEnter = CompteBonRecGCbxEnter
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
      TabOrder = 16
      StyleElements = []
      DesignSize = (
        186
        140)
      object BonRecGFourOLDCredit: TLabel
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
      object BonRecGFourNEWCredit: TLabel
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
      object Label18: TLabel
        Left = 6
        Top = 78
        Width = 90
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
        Width = 81
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
      object Panel18: TPanel
        Left = 0
        Top = 70
        Width = 185
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvLowered
        Color = 15970832
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
      end
    end
    object NChequeBonRecGCbx: TEdit
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
      TabOrder = 18
    end
    object ObserBonRecGMem: TMemo
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
      TabOrder = 19
    end
    object ProduitBonRecGCbx: TcxComboBox
      Left = 107
      Top = 261
      Anchors = [akLeft, akBottom]
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = 22
      Style.Font.Name = 'Helvetica LT Std'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnEnter = ProduitBonRecGCbxEnter
      OnExit = ProduitBonRecGCbxExit
      OnKeyDown = ProduitBonRecGCbxKeyDown
      OnKeyPress = ProduitBonRecGCbxKeyPress
      Height = 30
      Width = 386
    end
  end
  object ProduitsListDBGridEh: TDBGridEh
    Left = 2
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
    DataSource = BonRecPListDataS
    DynProps = <>
    EditActions = [geaSelectAllEh]
    EvenRowColor = clWindow
    FixedColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    FrozenCols = 2
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
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Color = clBtnFace
    RowHeight = 30
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
    OnCellClick = ProduitsListDBGridEhCellClick
    OnDrawColumnCell = ProduitsListDBGridEhDrawColumnCell
    OnExit = ProduitsListDBGridEhExit
    OnKeyPress = ProduitsListDBGridEhKeyPress
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'referp'
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
        Title.Caption = 'R'#233'ference'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 150
        WordWrap = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nomp'
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
        Title.Caption = 'D'#233'signation'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 450
        WordWrap = False
      end
      item
        Alignment = taCenter
        DisplayFormat = '0.00'
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
        WordWrap = False
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
        WordWrap = False
      end
      item
        Alignment = taCenter
        DisplayFormat = 'dd/mm/yyyy'
        DynProps = <>
        EditButtons = <>
        FieldName = 'dateperiss_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Date.Exp'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Visible = False
        Width = 120
      end
      item
        DisplayFormat = '#,##0.00'
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
        Title.Caption = 'Prix A HT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        Alignment = taCenter
        DisplayFormat = '0.00 %'
        DynProps = <>
        EditButtons = <>
        FieldName = 'tva_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'TVA %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        WordWrap = False
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
        Title.Caption = 'TVA OLD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Visible = False
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
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
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
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
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
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
        WordWrap = False
      end
      item
        Color = 15722984
        DisplayFormat = '#,##0.00'
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
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixvd_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Prix V HT D'#233'taillant'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '0.00 %'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MargeD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'Marge D'#233'taillant %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixvr_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Prix V HT Revendeur'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '0.00 %'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MargeR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'Marge Revendeur %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixvg_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Prix V HT Gros'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '0.00 %'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MargeG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'Marge Gros %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixva_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Prix V HT Autre 1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '0.00 %'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MargeA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'Marge Autre 1 %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixva2_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Prix V  HT Autre 2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end
      item
        DisplayFormat = '0.00 %'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MargeA2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'Marge Autre 2 %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
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
      Pen.Color = 15970832
    end
    object Shape3: TShape
      Left = 404
      Top = 0
      Width = 199
      Height = 149
      Brush.Color = 4207405
      Pen.Color = 15970832
    end
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 205
      Height = 149
      Brush.Color = 4207405
      Pen.Color = 15970832
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
    object BonRecTotalTVALbl: TLabel
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
    object BonRecRegleLbl: TLabel
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
    object BonRecResteLbl: TLabel
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
    object BonRecTotalHTLbl: TLabel
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
    object BonRecTotalTTCLbl: TLabel
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
    object Label3: TLabel
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
    object Label9: TLabel
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
      Width = 131
      Height = 66
      Caption = 'Bon de '#13#10'R'#233'ception'
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
    object Label19: TLabel
      Left = 804
      Top = 11
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
    object BonRecGOLDStock: TLabel
      AlignWithMargins = True
      Left = 804
      Top = 43
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
    object Label20: TLabel
      Left = 804
      Top = 78
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
    object BonRecGNEWStock: TLabel
      AlignWithMargins = True
      Left = 804
      Top = 106
      Width = 280
      Height = 37
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
    object sImage1: TsImage
      Tag = 1
      Left = 186
      Top = 129
      Width = 16
      Height = 16
      Center = True
      Picture.Data = {07544269746D617000000000}
      Proportional = True
      Stretch = True
      Transparent = True
      ImageIndex = 3
      Images = MainForm.PanelIcons16
      SkinData.SkinSection = 'CHECKBOX'
    end
    object Panel14: TPanel
      Left = 0
      Top = 73
      Width = 803
      Height = 1
      BevelOuter = bvLowered
      Color = 15970832
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 0
      StyleElements = []
    end
    object Edit1: TEdit
      Left = 340
      Top = 81
      Width = 50
      Height = 26
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnKeyPress = RemisePerctageBonRecGEdtKeyPress
    end
    object Edit2: TEdit
      Left = 276
      Top = 115
      Width = 114
      Height = 26
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnKeyPress = RemisePerctageBonRecGEdtKeyPress
    end
    object RemisePerctageBonRecGEdt: TEdit
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
      OnChange = RemisePerctageBonRecGEdtChange
      OnClick = RemisePerctageBonRecGEdtClick
      OnEnter = RemisePerctageBonRecGEdtEnter
      OnKeyPress = RemisePerctageBonRecGEdtKeyPress
    end
    object RemiseBonRecGEdt: TEdit
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
      OnChange = RemiseBonRecGEdtChange
      OnClick = RemiseBonRecGEdtClick
      OnEnter = RemiseBonRecGEdtEnter
      OnExit = RemiseBonRecGEdtExit
      OnKeyPress = RemiseBonRecGEdtKeyPress
    end
    object Panel1: TPanel
      Left = 204
      Top = 148
      Width = 599
      Height = 1
      BevelOuter = bvLowered
      Color = 15970832
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 5
      StyleElements = []
    end
    object RemiseTypeBonRecGCbx: TComboBox
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
      OnChange = RemiseTypeBonRecGCbxChange
      Items.Strings = (
        'HT'
        'TTC')
    end
  end
  object BonRecPListDataS: TDataSource
    DataSet = MainForm.Bona_recPlistTable
    OnDataChange = BonRecPListDataSDataChange
    Left = 984
    Top = 480
  end
  object frxBonRecDT: TfrxDBDataset
    UserName = 'frxBonRecDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_barec=code_barec'
      'date_barec=date_barec'
      'time_barec=time_barec'
      'montht_barec=montht_barec'
      'montver_barec=montver_barec'
      'valider_barec=valider_barec'
      'num_barec=num_barec'
      'fourbarec=fourbarec'
      'MontantTVA=MontantTVA'
      'MontantRes=MontantRes'
      'obser_barec=obser_barec'
      'montttc_barec=montttc_barec'
      'remise_barec=remise_barec'
      'num_cheque_barec=num_cheque_barec'
      'code_mdpai=code_mdpai'
      'code_cmpt=code_cmpt'
      'ModePaie=ModePaie'
      'Compte=Compte'
      'RemisePerc=RemisePerc'
      'NEWTTC=NEWTTC'
      'code_f=code_f'
      'code_ur=code_ur'
      'bon_or_no_barec=bon_or_no_barec'
      'NeTHT=NeTHT'
      'Agent=Agent')
    DataSet = MainForm.Bona_recTable
    BCDToCurrency = False
    Left = 248
    Top = 432
  end
  object frxBonRecPListDB: TfrxDBDataset
    UserName = 'frxBonRecPListDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_barecl=code_barecl'
      'code_barec=code_barec'
      'qut_p=qut_p'
      'prixht_p=prixht_p'
      'cond_p=cond_p'
      'PrixATTC=PrixATTC'
      'MontantHT=MontantHT'
      'MontantTVA=MontantTVA'
      'MontantTTC=MontantTTC'
      'code_p=code_p'
      'nomp=nomp'
      'referp=referp'
      'tvap=tvap'
      'TVA=TVA'
      'tva_p=tva_p'
      'prixvd_p=prixvd_p'
      'MargeD=MargeD'
      'prixvr_p=prixvr_p'
      'MargeR=MargeR'
      'prixvg_p=prixvg_p'
      'MargeG=MargeG'
      'prixva_p=prixva_p'
      'MargeA=MargeA'
      'prixva2_p=prixva2_p'
      'MargeA2=MargeA2'
      'dateperiss_p=dateperiss_p'
      'qutinstock_p=qutinstock_p')
    DataSource = BonRecPListDataS
    BCDToCurrency = False
    Left = 248
    Top = 384
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
      'fix_f=fix_f'
      'mob_f=mob_f'
      'mob2_f=mob2_f'
      'fax_f=fax_f'
      'email_f=email_f'
      'obser_f=obser_f'
      'activ_f=activ_f'
      'rc_f=rc_f'
      'nif_f=nif_f'
      'nart_f=nart_f'
      'nis_f=nis_f'
      'nbank_f=nbank_f'
      'rib_f=rib_f'
      'siteweb_f=siteweb_f'
      'oldcredit_f=oldcredit_f'
      'maxcredit_f=maxcredit_f'
      'credit_f=credit_f')
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
  object BonRecPListfrxRprt: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 42746.101836296290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 248
    Top = 336
    Datasets = <
      item
        DataSet = frxBonRecDT
        DataSetName = 'frxBonRecDB'
      end
      item
        DataSet = frxBonRecPListDB
        DataSetName = 'frxBonRecPListDB'
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 21.057381430000000000
        Top = 850.394250000000000000
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
        object frxDBDataset2Agnet: TfrxMemoView
          Left = 39.354360000000000000
          Top = 1.159731430000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = BonLivGestionF.frxBonLivDT
          DataSetName = 'frxBonLivDT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            '[frxBonRecDB."Agent"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 416.978018180000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 340.157700000000000000
          Top = 388.803340000000000000
          Width = 76.277787270000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 388.803340000000000000
          Width = 57.380137270000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 566.929500000000000000
          Top = 388.803340000000000000
          Width = 151.868387270000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 415.748300000000000000
          Top = 388.803340000000000000
          Width = 151.868387270000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 56.692950000000000000
          Top = 388.803340000000000000
          Width = 284.151937270000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#233'signation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 355.275820000000000000
          Top = 11.338590000000000000
          Width = 343.250042730000000000
          Height = 39.169674550000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4144959
          Font.Height = -33
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BON DE R'#201'CEPTION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 355.275820000000000000
          Top = 120.944960000000000000
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
          Left = 355.275820000000000000
          Top = 60.472480000000000000
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
          Left = 408.189240000000000000
          Top = 60.472480000000000000
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
          Left = 408.189240000000000000
          Top = 120.944960000000000000
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
          Left = 8.559060000000000000
          Top = 206.212740000000000000
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
          Left = 8.559060000000000000
          Top = 251.008040000000000000
          Width = 339.897042760000000000
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
          Left = 8.559060000000000000
          Top = 286.023810000000000000
          Width = 339.897042760000000000
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
          Left = 8.559060000000000000
          Top = 319.260050000000000000
          Width = 339.897042760000000000
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
          Left = 8.559060000000000000
          Top = 352.496290000000000000
          Width = 339.897042760000000000
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
          Left = 110.606370000000000000
          Top = 231.760695830000000000
          Width = 608.503939450000000000
          Height = 2.645669290000000000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = 13948116
          Frame.ShadowColor = 13948116
        end
        object Name: TfrxMemoView
          Left = 7.559060000000000000
          Top = 89.472480000000000000
          Width = 328.819110000000000000
          Height = 22.677165350000000000
          Visible = False
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Name')
          ParentFont = False
        end
        object Tel: TfrxMemoView
          Left = 8.685045630000000000
          Top = 115.488174330000000000
          Width = 326.693124370000000000
          Height = 22.677165350000000000
          Visible = False
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Tel:')
          ParentFont = False
        end
        object Mob: TfrxMemoView
          Left = 8.685045630000000000
          Top = 141.165354330000000000
          Width = 326.551310470000000000
          Height = 22.677165350000000000
          Visible = False
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Mob:')
          ParentFont = False
        end
        object Adr: TfrxMemoView
          Left = 7.559060000000000000
          Top = 167.063004330000000000
          Width = 328.819110000000000000
          Height = 34.015755350000000000
          Visible = False
          StretchMode = smActualHeight
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Adr')
          ParentFont = False
        end
        object Logo: TfrxPictureView
          Align = baLeft
          Top = 11.338590000000000000
          Width = 234.330860000000000000
          Height = 64.251936770000000000
          Visible = False
          Center = True
          DataField = 'LOGO'
          DataSetName = 'S_ENTREP'
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 24.566929130000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        DataSet = frxBonRecPListDB
        DataSetName = 'frxBonRecPListDB'
        RowCount = 0
        Stretched = True
        object frxDBDataset1nomp: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.559060000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = frxBonRecPListDB
          DataSetName = 'frxBonRecPListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            '[frxBonRecPListDB."nomp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line: TfrxMemoView
          Top = 3.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1qut_p: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecPListDB
          DataSetName = 'frxBonRecPListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxBonRecPListDB."qut_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1prixvd_p: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.559060000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecPListDB
          DataSetName = 'frxBonRecPListDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonRecPListDB."prixht_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1MontantHT: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.559060000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecPListDB
          DataSetName = 'frxBonRecPListDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonRecPListDB."MontantHT"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 245.515545460000000000
        Top = 544.252320000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 179.315090000000000000
          Width = 718.110700000000000000
          Height = 3.212598425196850000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = 13948116
        end
        object Shape4: TfrxShapeView
          Left = 566.929500000000000000
          Top = 151.315058270000000000
          Width = 151.181200000000000000
          Height = 31.370078740000000000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = clNone
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
            'TVA :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 415.748300000000000000
          Top = 151.181200000000000000
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
            'Total TTC :')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTremise_bvliv: TfrxMemoView
          Left = 566.929500000000000000
          Top = 60.472480000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonRecDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonRecDB."remise_barec"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTmontht_bvliv: TfrxMemoView
          Left = 566.929500000000000000
          Top = 31.236240000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonRecDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonRecDB."montht_barec"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTMontantTVA: TfrxMemoView
          Left = 566.929500000000000000
          Top = 120.944960000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonRecDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonRecDB."MontantTVA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTmontttc_bvliv: TfrxMemoView
          Left = 563.149970000000000000
          Top = 151.181200000000000000
          Width = 151.181200000000000000
          Height = 31.370086060000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonRecDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonRecDB."montttc_barec"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDTNeTHT: TfrxMemoView
          Left = 566.929500000000000000
          Top = 90.708720000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = frxBonRecDT
          DataSetName = 'frxBonRecDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxBonRecDB."NeTHT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MoneyWordRX: TfrxMemoView
          Left = 3.779530000000000000
          Top = 212.345870910000000000
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
          Top = 189.196970000000000000
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
          Top = 189.414998280000000000
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
          Left = 3.779530000000000000
          Top = 29.456710000000000000
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
          Left = 127.063080000000000000
          Top = 27.456710000000000000
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
          Left = 3.779530000000000000
          Top = 66.252010000000000000
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
          Left = 127.063080000000000000
          Top = 64.252010000000000000
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
          DataSetName = 'frxBonRecDB'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '([frxBonRecDB."RemisePerc"]%)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
