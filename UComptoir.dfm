object BonCtrGestionF: TBonCtrGestionF
  Left = 0
  Top = 0
  Caption = 'BonCtrGestionF'
  ClientHeight = 702
  ClientWidth = 1343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ProduitsListDBGridEh: TDBGridEh
    Left = 2
    Top = 248
    Width = 1100
    Height = 356
    Align = alCustom
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
    DataSource = BonCtrPListDataS
    DynProps = <>
    EditActions = [geaSelectAllEh]
    EvenRowColor = clWindow
    FixedColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Color = clBtnFace
    RowHeight = 35
    SearchPanel.FilterOnTyping = True
    ShowHint = False
    TabOrder = 5
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
    OnExit = ProduitsListDBGridEhExit
    OnKeyPress = ProduitsListDBGridEhKeyPress
    OnMouseMove = ProduitsListDBGridEhMouseMove
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'referp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'R'#233'ference'
        Width = 106
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nomp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'D'#233'signation'
        Width = 338
      end
      item
        Alignment = taCenter
        DisplayFormat = '0.00 '
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
        Title.Alignment = taCenter
        Title.Caption = 'Quantit'#233
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 78
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
        Width = 58
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
        Font.Color = clWindowText
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'TVA'
        Visible = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTC'
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
        Visible = False
        Width = 170
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
        Visible = False
        Width = 170
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
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MargeM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        TextEditing = False
        Title.Alignment = taCenter
        Title.Caption = 'Marge'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 19
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
      end
      item
        DisplayFormat = '0.00 %'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Marge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        TextEditing = False
        Title.Caption = 'Marge %'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 133
    Width = 1125
    Height = 115
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 15722984
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      1125
      115)
    object Label6: TLabel
      Left = 9
      Top = 33
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
    end
    object ListAddProduitBonCtrGBtn: TAdvToolButton
      Left = 917
      Top = 23
      Width = 71
      Height = 38
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
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
      OnClick = ListAddProduitBonCtrGBtnClick
      Version = '1.6.1.1'
      ExplicitLeft = 532
      TMSStyle = 0
    end
    object NewAddProduitBonCtrGBtn: TAdvToolButton
      Left = 995
      Top = 23
      Width = 100
      Height = 38
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
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
      OnClick = NewAddProduitBonCtrGBtnClick
      Version = '1.6.1.1'
      ExplicitLeft = 610
      TMSStyle = 0
    end
    object EnterAddProduitBonCtrGBtn: TAdvToolButton
      Left = 871
      Top = 23
      Width = 38
      Height = 38
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
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
      OnClick = EnterAddProduitBonCtrGBtnClick
      Version = '1.6.1.1'
      ExplicitLeft = 486
      TMSStyle = 0
    end
    object Label20: TLabel
      Left = 107
      Top = 87
      Width = 758
      Height = 27
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
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
      ExplicitWidth = 373
    end
    object ClearProduitBonCtrGBtn: TsSpeedButton
      Left = 921
      Top = 79
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = ClearProduitBonCtrGBtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 16
      ExplicitLeft = 536
    end
    object ShowCalculaturBonCtrGBtn: TsSpeedButton
      Left = 957
      Top = 79
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = ShowCalculaturBonCtrGBtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 24
      ExplicitLeft = 572
    end
    object ShowKeyBoardBonCtrGBtn: TsSpeedButton
      Left = 993
      Top = 79
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = ShowKeyBoardBonCtrGBtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 43
      ExplicitLeft = 608
    end
    object DeleteProduitBonCtrGBtn: TsSpeedButton
      Left = 885
      Top = 79
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = DeleteProduitBonCtrGBtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 14
      ExplicitLeft = 500
    end
    object CloseBonCtrGBtn: TsSpeedButton
      Left = 1065
      Top = 79
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = CloseBonCtrGBtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 45
      ExplicitLeft = 680
    end
    object MinimizeBonCtrGBtn: TsSpeedButton
      Left = 1029
      Top = 79
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = MinimizeBonCtrGBtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 44
      ExplicitLeft = 644
    end
    object sImage1: TsImage
      Left = 839
      Top = 3
      Width = 26
      Height = 20
      Anchors = [akRight, akBottom]
      Center = True
      Picture.Data = {07544269746D617000000000}
      Proportional = True
      Stretch = True
      Transparent = True
      ImageIndex = 46
      Images = MainForm.PanelIcons24
      SkinData.SkinSection = 'CHECKBOX'
      ExplicitLeft = 454
    end
    object sImage2: TsImage
      Left = 814
      Top = 3
      Width = 26
      Height = 20
      Anchors = [akRight, akBottom]
      Center = True
      Picture.Data = {07544269746D617000000000}
      Proportional = True
      Stretch = True
      Transparent = True
      ImageIndex = 47
      Images = MainForm.PanelIcons24
      SkinData.SkinSection = 'CHECKBOX'
      ExplicitLeft = 429
    end
    object BonCRemiseHTNewLbl: TLabel
      Left = 8
      Top = 62
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object TotalTVANewLbl: TLabel
      Left = 32
      Top = 66
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object BonCTotalHTNewLbl: TLabel
      Left = 20
      Top = 63
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object BonCtrTotalHTLbl: TLabel
      Left = 8
      Top = 6
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object BonCtrTotalTVALbl: TLabel
      Left = 120
      Top = 6
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object BonCTRTotalMargeLbl: TLabel
      Left = 658
      Top = 61
      Width = 157
      Height = 20
      Caption = 'BonCTRTotalMargeLbl'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4666873
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object ProduitBonCtrGCbx: TComboBox
      Left = 107
      Top = 23
      Width = 758
      Height = 38
      Anchors = [akLeft, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Sorted = True
      TabOrder = 0
      OnDblClick = ProduitBonCtrGCbxDblClick
      OnDropDown = ProduitBonCtrGCbxDropDown
      OnEnter = ProduitBonCtrGCbxDropDown
      OnExit = ProduitBonCtrGCbxExit
      OnKeyPress = ProduitBonCtrGCbxKeyPress
      OnMouseEnter = ProduitBonCtrGCbxMouseEnter
    end
    object Panel6: TPanel
      Left = 0
      Top = 113
      Width = 1125
      Height = 2
      Align = alBottom
      BevelOuter = bvNone
      Color = 4666873
      ParentBackground = False
      TabOrder = 1
    end
    object Panel29: TPanel
      Left = 0
      Top = 0
      Width = 2
      Height = 113
      Align = alLeft
      BevelOuter = bvNone
      Color = 4666873
      ParentBackground = False
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1343
    Height = 133
    Align = alTop
    BevelOuter = bvNone
    Color = 4207405
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1343
      133)
    object BonCtrTotalTTCLbl: TLabel
      Left = -2
      Top = 19
      Width = 1255
      Height = 118
      Alignment = taCenter
      Anchors = [akLeft, akRight]
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7854350
      Font.Height = -120
      Font.Name = 'DS-Digital'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 870
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 70
      Height = 28
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1752319
      Font.Height = 28
      Font.Name = 'DS-Digital'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 1233
      Top = 4
      Width = 106
      Height = 28
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = 'Comptoir'
      Font.Charset = ANSI_CHARSET
      Font.Color = 1752319
      Font.Height = 28
      Font.Name = 'DS-Digital'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ExplicitLeft = 848
    end
    object Label10: TLabel
      Left = 1259
      Top = 44
      Width = 80
      Height = 14
      Alignment = taCenter
      Anchors = [akTop, akRight]
      Caption = 'Stock Actuel'
      Color = 1752319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1752319
      Font.Height = 14
      Font.Name = 'DS-Digital'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
      ExplicitLeft = 874
    end
    object BonCtrGOLDStock: TLabel
      AlignWithMargins = True
      Left = 1321
      Top = 59
      Width = 13
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = '0'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15722984
      Font.Height = 25
      Font.Name = 'DS-Digital'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
      ExplicitLeft = 936
    end
    object Label11: TLabel
      Left = 1252
      Top = 87
      Width = 87
      Height = 14
      Alignment = taCenter
      Anchors = [akTop, akRight]
      Caption = 'Nouveau Stock'
      Color = 1752319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1752319
      Font.Height = 14
      Font.Name = 'DS-Digital'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
      ExplicitLeft = 867
    end
    object BonCtrGNEWStock: TLabel
      AlignWithMargins = True
      Left = 1321
      Top = 103
      Width = 13
      Height = 25
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = '0'
      Color = 4207405
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3854249
      Font.Height = 25
      Font.Name = 'DS-Digital'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
      ExplicitLeft = 936
    end
    object Panel3: TPanel
      Left = 0
      Top = 131
      Width = 1343
      Height = 2
      Align = alBottom
      BevelOuter = bvNone
      Color = 4666873
      ParentBackground = False
      TabOrder = 0
    end
  end
  object Panel9: TPanel
    Left = 1342
    Top = 133
    Width = 1
    Height = 471
    Align = alRight
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 3
  end
  object Panel10: TPanel
    Left = 0
    Top = 700
    Width = 1343
    Height = 2
    Align = alBottom
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 4
  end
  object Panel8: TPanel
    Left = 0
    Top = 133
    Width = 2
    Height = 471
    Align = alLeft
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 2
  end
  object Panel12: TPanel
    Left = 0
    Top = 604
    Width = 1343
    Height = 96
    Align = alBottom
    BevelOuter = bvNone
    Color = 15722984
    ParentBackground = False
    TabOrder = 6
    object Panel16: TPanel
      Left = 2
      Top = 2
      Width = 177
      Height = 94
      Align = alLeft
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
        Left = 132
        Top = 27
        Width = 40
        Height = 40
        Hint = 'Modifer'
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton4Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.ComptoiIcons48
        ImageIndex = 3
      end
      object sSpeedButton5: TsSpeedButton
        Left = 89
        Top = 27
        Width = 40
        Height = 40
        Hint = 'Detaill'
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton5Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.ComptoiIcons48
        ImageIndex = 2
        ShowCaption = False
      end
      object sSpeedButton6: TsSpeedButton
        Left = 46
        Top = 27
        Width = 40
        Height = 40
        Hint = 'Modifer'
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton6Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.ComptoiIcons48
        ImageIndex = 1
      end
      object sSpeedButton7: TsSpeedButton
        Left = 3
        Top = 27
        Width = 40
        Height = 40
        Hint = 'Detaill'
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton7Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.ComptoiIcons48
        ImageIndex = 0
        ShowCaption = False
      end
      object Panel14: TPanel
        Left = 176
        Top = 0
        Width = 1
        Height = 94
        ParentCustomHint = False
        Align = alRight
        BevelEdges = []
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Color = 4666873
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
        TabOrder = 0
        StyleElements = []
      end
    end
    object Panel11: TPanel
      Left = 0
      Top = 0
      Width = 1343
      Height = 2
      Align = alTop
      BevelOuter = bvNone
      Color = 4666873
      ParentBackground = False
      TabOrder = 1
    end
    object Panel20: TPanel
      Left = 1099
      Top = 2
      Width = 1
      Height = 94
      ParentCustomHint = False
      Align = alRight
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 4666873
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
    object Panel18: TPanel
      Left = 1100
      Top = 2
      Width = 243
      Height = 94
      Align = alRight
      BevelOuter = bvNone
      Color = 15722984
      ParentBackground = False
      TabOrder = 3
      DesignSize = (
        243
        94)
      object ValiderBVCtrBonCtrGLbl: TLabel
        Left = 0
        Top = 75
        Width = 243
        Height = 19
        Align = alBottom
        Alignment = taCenter
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
        ExplicitLeft = 8
        ExplicitWidth = 273
      end
      object ValiderBVCtrBonCtrGImg: TsImage
        Left = 87
        Top = 3
        Width = 69
        Height = 72
        Anchors = [akRight, akBottom]
        Center = True
        Picture.Data = {07544269746D617000000000}
        Proportional = True
        Stretch = True
        ImageIndex = 1
        Images = MainForm.PanelIcons48
        SkinData.SkinSection = 'CHECKBOX'
      end
      object Panel19: TPanel
        Left = 0
        Top = 0
        Width = 2
        Height = 75
        ParentCustomHint = False
        Align = alLeft
        BevelEdges = []
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Color = 4666873
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
        TabOrder = 0
        StyleElements = []
      end
    end
    object Panel22: TPanel
      Left = 964
      Top = 2
      Width = 135
      Height = 94
      Align = alRight
      BevelOuter = bvNone
      Color = 15722984
      ParentBackground = False
      TabOrder = 4
      DesignSize = (
        135
        94)
      object sSpeedButton2: TsSpeedButton
        Left = 91
        Top = 27
        Width = 40
        Height = 40
        Hint = 'Modifer'
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton2Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.ComptoiIcons48
        ImageIndex = 6
        ExplicitLeft = 102
      end
      object sSpeedButton1: TsSpeedButton
        Left = 48
        Top = 27
        Width = 40
        Height = 40
        Hint = 'Modifer'
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        OnClick = sSpeedButton1Click
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.ComptoiIcons48
        ImageIndex = 5
        ExplicitLeft = 59
      end
      object PrintTicketBVCtrBonCtrGBtn: TsSpeedButton
        Left = 5
        Top = 27
        Width = 40
        Height = 40
        Hint = 'Modifer'
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        OnClick = PrintTicketBVCtrBonCtrGBtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.ComptoiIcons48
        ImageIndex = 4
        ExplicitLeft = 16
      end
      object RegleVersementSGLbl: TLabel
        Left = 3
        Top = 6
        Width = 80
        Height = 14
        Anchors = [akLeft, akBottom]
        Caption = 'impression Auto:'
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
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1
        Height = 94
        ParentCustomHint = False
        Align = alLeft
        BevelEdges = []
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Color = 4666873
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
        TabOrder = 0
        StyleElements = []
      end
      object APrintBVCtrBonCtrGSlider: TsSlider
        Left = 93
        Top = 5
        Width = 38
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
    end
    object Panel13: TPanel
      Left = 0
      Top = 2
      Width = 2
      Height = 94
      ParentCustomHint = False
      Align = alLeft
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 4666873
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
    object Panel17: TPanel
      Left = 179
      Top = 2
      Width = 785
      Height = 94
      Align = alClient
      AutoSize = True
      BevelOuter = bvNone
      Color = 15722984
      ParentBackground = False
      TabOrder = 6
      object GridPanel1: TGridPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 94
        Align = alClient
        ColumnCollection = <
          item
            Value = 24.999951154257260000
          end
          item
            Value = 24.999983505411330000
          end
          item
            Value = 25.000044385110370000
          end
          item
            Value = 25.000020955221050000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = AddBVCtrBonCtrGBtn
            Row = 0
          end
          item
            Column = 1
            Control = EditBVCtrBonCtrGBtn
            Row = 0
          end
          item
            Column = 2
            Control = ValiderBVCtrBonCtrGBtn
            Row = 0
          end
          item
            Column = 3
            Control = ExValiderBVCtrBonCtrGBtn
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          785
          94)
        object AddBVCtrBonCtrGBtn: TAdvToolButton
          AlignWithMargins = True
          Left = 5
          Top = 17
          Width = 190
          Height = 55
          Cursor = crHandPoint
          Margins.Left = 4
          Margins.Top = 16
          Margins.Right = 1
          Margins.Bottom = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoThemeAdapt = False
          BorderColor = 7854350
          BorderDownColor = 7854350
          BorderHotColor = 4666873
          Color = 15722984
          ColorDown = 15722984
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
          OnClick = AddBVCtrBonCtrGBtnClick
          Version = '1.6.1.1'
          TMSStyle = 0
        end
        object EditBVCtrBonCtrGBtn: TAdvToolButton
          AlignWithMargins = True
          Left = 200
          Top = 17
          Width = 190
          Height = 55
          Cursor = crHandPoint
          Margins.Left = 4
          Margins.Top = 16
          Margins.Right = 1
          Margins.Bottom = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoThemeAdapt = False
          BorderColor = 7854350
          BorderDownColor = 7854350
          BorderHotColor = 4666873
          Color = 15722984
          ColorDown = 15722984
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
          OnClick = EditBVCtrBonCtrGBtnClick
          Version = '1.6.1.1'
          ExplicitWidth = 220
          TMSStyle = 0
        end
        object ValiderBVCtrBonCtrGBtn: TAdvToolButton
          AlignWithMargins = True
          Left = 395
          Top = 17
          Width = 190
          Height = 55
          Cursor = crHandPoint
          Margins.Left = 4
          Margins.Top = 16
          Margins.Right = 1
          Margins.Bottom = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoThemeAdapt = False
          BorderColor = 7854350
          BorderDownColor = 7854350
          BorderHotColor = 4666873
          Color = 15722984
          ColorDown = 15722984
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
          OnClick = ValiderBVCtrBonCtrGBtnClick
          Version = '1.6.1.1'
          ExplicitWidth = 220
          TMSStyle = 0
        end
        object ExValiderBVCtrBonCtrGBtn: TAdvToolButton
          AlignWithMargins = True
          Left = 590
          Top = 17
          Width = 193
          Height = 55
          Cursor = crHandPoint
          Margins.Left = 4
          Margins.Top = 16
          Margins.Right = 1
          Margins.Bottom = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoThemeAdapt = False
          BorderColor = 7854350
          BorderDownColor = 7854350
          BorderHotColor = 4666873
          Color = 15722984
          ColorDown = 15722984
          ColorHot = 15722984
          ColorChecked = clNone
          DropDownSplit = False
          Caption = 'Ex Valider'
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
          OnClick = ExValiderBVCtrBonCtrGBtnClick
          Version = '1.6.1.1'
          TMSStyle = 0
        end
      end
    end
  end
  object right: TPanel
    Left = 1099
    Top = 133
    Width = 243
    Height = 471
    Align = alRight
    BevelOuter = bvNone
    Color = 15722984
    ParentBackground = False
    TabOrder = 7
    object Panel21: TPanel
      Left = 0
      Top = 332
      Width = 2
      Height = 139
      Align = alLeft
      BevelOuter = bvNone
      Color = 4666873
      ParentBackground = False
      TabOrder = 0
    end
    object Panel23: TPanel
      Left = 0
      Top = 270
      Width = 243
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      Color = 15722984
      ParentBackground = False
      TabOrder = 1
      object Label9: TLabel
        Left = 8
        Top = 22
        Width = 44
        Height = 18
        Caption = 'Client:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object AddClientBonCtrGBtn: TAdvToolButton
        Left = 214
        Top = 18
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
        Version = '1.6.1.1'
        TMSStyle = 0
      end
      object RequiredClientGlbl: TLabel
        Left = 54
        Top = 1
        Width = 159
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ce Client est bloqu'#233
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
      object NameClientGErrorP: TPanel
        Left = 52
        Top = 14
        Width = 164
        Height = 34
        BevelOuter = bvNone
        BevelWidth = 2
        Color = 8421631
        Ctl3D = False
        FullRepaint = False
        ParentBackground = False
        ParentCtl3D = False
        ShowCaption = False
        TabOrder = 3
        Visible = False
        StyleElements = []
      end
      object Panel24: TPanel
        Left = 0
        Top = 60
        Width = 243
        Height = 2
        Align = alBottom
        BevelOuter = bvNone
        Color = 4666873
        ParentBackground = False
        TabOrder = 0
      end
      object Panel25: TPanel
        Left = 0
        Top = 0
        Width = 2
        Height = 60
        Align = alLeft
        BevelOuter = bvNone
        Color = 4666873
        ParentBackground = False
        TabOrder = 1
      end
      object ClientBonCtrGCbx: TComboBox
        Left = 54
        Top = 16
        Width = 160
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
        TabOrder = 2
        Text = 'Comptoir'
        OnChange = ClientBonCtrGCbxChange
        OnClick = ClientBonCtrGCbxExit
        OnDropDown = ClientBonCtrGCbxDropDown
        OnEnter = ClientBonCtrGCbxDropDown
        OnExit = ClientBonCtrGCbxExit
      end
    end
    object Panel26: TPanel
      Left = 0
      Top = 115
      Width = 243
      Height = 155
      Align = alTop
      BevelOuter = bvNone
      Color = 4207405
      ParentBackground = False
      TabOrder = 2
      object Label18: TLabel
        Left = 8
        Top = 7
        Width = 70
        Height = 21
        Caption = 'Montant:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object BonCTotalTTCNewLbl: TLabel
        Left = 226
        Top = 3
        Width = 14
        Height = 28
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16771277
        Font.Height = 30
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Labell20: TLabel
        Left = 8
        Top = 82
        Width = 50
        Height = 21
        Caption = 'Verse:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object BonCtrRegleLbl: TLabel
        Left = 226
        Top = 78
        Width = 14
        Height = 28
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14727239
        Font.Height = 30
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 8
        Top = 44
        Width = 65
        Height = 21
        Caption = 'Remise:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 8
        Top = 119
        Width = 58
        Height = 21
        Caption = 'Rendu:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object BonCtrRenduLbl: TLabel
        Left = 226
        Top = 115
        Width = 14
        Height = 28
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7566591
        Font.Height = 30
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        AlignWithMargins = True
        Left = 230
        Top = 46
        Width = 10
        Height = 16
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
      object Panel27: TPanel
        Left = 0
        Top = 153
        Width = 243
        Height = 2
        Align = alBottom
        BevelOuter = bvNone
        Color = 4666873
        ParentBackground = False
        TabOrder = 0
      end
      object Panel28: TPanel
        Left = 0
        Top = 0
        Width = 2
        Height = 153
        Align = alLeft
        BevelOuter = bvNone
        Color = 4666873
        ParentBackground = False
        TabOrder = 1
      end
      object RemisePerctageBonCtrGEdt: TEdit
        Left = 177
        Top = 41
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnChange = RemisePerctageBonCtrGEdtChange
        OnDblClick = RemisePerctageBonCtrGEdtDblClick
        OnKeyPress = RemisePerctageBonCtrGEdtKeyPress
        OnMouseEnter = RemisePerctageBonCtrGEdtMouseEnter
      end
      object RemiseBonCtrGEdt: TEdit
        Left = 75
        Top = 41
        Width = 96
        Height = 26
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnChange = RemiseBonCtrGEdtChange
        OnDblClick = RemiseBonCtrGEdtDblClick
        OnKeyPress = RemisePerctageBonCtrGEdtKeyPress
        OnMouseEnter = RemiseBonCtrGEdtMouseEnter
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 243
      Height = 115
      Align = alTop
      BevelOuter = bvNone
      Color = 4207405
      ParentBackground = False
      TabOrder = 3
      object Label2: TLabel
        Left = 8
        Top = 7
        Width = 62
        Height = 21
        Caption = 'Bon N'#176':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1752319
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object NumBonCtrGEdt: TLabel
        Left = 235
        Top = 7
        Width = 5
        Height = 21
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15066597
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 80
        Width = 43
        Height = 21
        Caption = 'Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1752319
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 44
        Width = 54
        Height = 21
        Caption = 'Heure:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1752319
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object HourBonCtrGD: TLabel
        Left = 235
        Top = 44
        Width = 5
        Height = 21
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15066597
        Font.Height = 21
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 113
        Width = 243
        Height = 2
        Align = alBottom
        BevelOuter = bvNone
        Color = 4666873
        ParentBackground = False
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 2
        Height = 113
        Align = alLeft
        BevelOuter = bvNone
        Color = 4666873
        ParentBackground = False
        TabOrder = 1
      end
      object DateBonCtrGD: TDateTimePicker
        Left = 116
        Top = 77
        Width = 124
        Height = 26
        Date = 42592.456630983800000000
        Time = 42592.456630983800000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 19
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object CtrTop10PRODUITDBGridEh: TDBGridEh
      AlignWithMargins = True
      Left = 2
      Top = 332
      Width = 241
      Height = 139
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      AutoFitColWidths = True
      DataSource = BonCtrTop10produit
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      HorzScrollBar.ExtraPanel.NavigatorButtons = []
      HorzScrollBar.ExtraPanel.VisibleItems = []
      IndicatorOptions = []
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      RowHeight = 4
      RowLines = 2
      ShowHint = True
      TabOrder = 4
      TreeViewParams.ShowTreeLines = False
      VertScrollBar.SmoothStep = True
      VertScrollBar.Width = 10
      OnDblClick = CtrTop10PRODUITDBGridEhDblClick
      Columns = <
        item
          Alignment = taCenter
          CaseInsensitiveTextSearch = False
          DynProps = <>
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'nomp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 16
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Footers = <>
          Layout = tlCenter
          Title.Caption = '       Les Produits Populaires'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = 10379008
          Title.Font.Height = 20
          Title.Font.Name = 'Roboto'
          Title.Font.Style = []
          ToolTips = True
          Width = 300
          WordWrap = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 408
    Top = 480
  end
  object BonCtrPListDataS: TDataSource
    DataSet = MainForm.Bonv_ctr_listTable
    OnDataChange = BonCtrPListDataSDataChange
    Left = 1014
    Top = 540
  end
  object BonCtrTop10produit: TDataSource
    DataSet = MainForm.Bonv_ctr_Top10produit
    Left = 1240
    Top = 543
  end
  object frxComptoirListPDB: TfrxDBDataset
    UserName = 'frxComptoirListPDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_bvctrl=code_bvctrl'
      'code_bvctr=code_bvctr'
      'qut_p=qut_p'
      'prixvd_p=prixvd_p'
      'cond_p=cond_p'
      'PrixVTTC=PrixVTTC'
      'MontantHT=MontantHT'
      'MontantTVA=MontantTVA'
      'MontantTTC=MontantTTC'
      'code_p=code_p'
      'nomp=nomp'
      'referp=referp'
      'tvap=tvap'
      'TVA=TVA')
    DataSource = BonCtrPListDataS
    BCDToCurrency = False
    Left = 80
    Top = 416
  end
  object frxComptoirDB: TfrxDBDataset
    UserName = 'frxComptoirDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_bvctr=code_bvctr'
      'date_bvctr=date_bvctr'
      'time_bvctr=time_bvctr'
      'code_c=code_c'
      'montht_bvctr=montht_bvctr'
      'montver_bvctr=montver_bvctr'
      'valider_bvctr=valider_bvctr'
      'num_bvctr=num_bvctr'
      'obser_bvctr=obser_bvctr'
      'clientbvctr=clientbvctr'
      'montttc_bvctr=montttc_bvctr'
      'remise_bvctr=remise_bvctr'
      'MontantTVA=MontantTVA'
      'MontantRen=MontantRen'
      'RemisePerc=RemisePerc'
      'NEWTTC=NEWTTC'
      'code_ur=code_ur'
      'Agnet=Agnet'
      'NeTHT=NeTHT')
    DataSet = MainForm.Bonv_ctrTable
    BCDToCurrency = False
    Left = 80
    Top = 472
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
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
    Left = 104
    Top = 544
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 200
    Top = 512
  end
  object ComptoirTicketfrxRprt: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoClose, pbNoFullScreen, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41863.570242476900000000
    ReportOptions.LastChange = 42587.037063171290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '//procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      '//begin'
      '//if <S_BL1."CLIENT"> = '#39'VENTE-COMPTOIR'#39' then'
      '//    begin'
      
        '//    memo1.Visible := True;                                    ' +
        '           '
      
        '//    memo3.Visible := True;                                    ' +
        '           '
      
        '//    memo6.Visible := True;                                    ' +
        '           '
      '//    memo7.Visible := True;'
      
        '//    memo14.Visible := False;                                  ' +
        '             '
      
        '//    memo15.Visible := False;                                  ' +
        '             '
      
        '//    memo16.Visible := False;                                  ' +
        '             '
      '//    memo17.Visible := False;'
      
        '//    memo19.Visible := False;                                  ' +
        '             '
      
        '//    memo20.Visible := False;                                  ' +
        '             '
      
        '//    memo21.Visible := False;                                  ' +
        '             '
      '//    memo22.Visible := False;'
      '//    end'
      '//    else'
      '//    begin'
      
        '//    memo1.Visible := False;                                   ' +
        '            '
      
        '//    memo3.Visible := False;                                   ' +
        '            '
      
        '//    memo6.Visible := False;                                   ' +
        '            '
      '//    memo7.Visible := False;'
      
        '//    memo14.Visible := True;                                   ' +
        '            '
      
        '//    memo15.Visible := True;                                   ' +
        '            '
      
        '//    memo16.Visible := True;                                   ' +
        '            '
      '//    memo17.Visible := True;'
      
        '//    memo19.Visible := True;                                   ' +
        '            '
      
        '//    memo20.Visible := True;                                   ' +
        '            '
      
        '//    memo21.Visible := True;                                   ' +
        '            '
      '//    memo22.Visible := True;'
      '//    end;                '
      '//end;'
      '   '
      '//procedure ADR_FRSOnAfterPrint(Sender: TfrxComponent);'
      '//begin'
      '//end;'
      ''
      '//procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      '//begin'
      
        '//MEMO7.Text :=FormatFloat('#39'# ### ### #00.00'#39',<S_BL1."VERSER">-<' +
        'S_BL1."TTC">);                                                  ' +
        '          '
      '//end;'
      ''
      '//procedure Footer1OnAfterPrint(Sender: TfrxComponent);'
      '//begin'
      ''
      '//end;'
      ''
      '//procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      '//begin'
      
        '//IF <TAGS>=1 THEN MEMO11.TEXT:='#39'Bon de livraison n'#176':'#39'+<PREFIX_L' +
        '>+<S_BL1."NUM_BON">+<PREFIX_R>;  '
      
        '//IF <TAGS>=2 THEN MEMO11.TEXT:='#39'Bon de retour  n'#176':'#39'+<PREFIX_L>+' +
        '<S_BL1."NUM_BON">+<PREFIX_R>;  '
      
        '//IF <TAGS>=3 THEN MEMO11.TEXT:='#39'Bon de commande n'#176':'#39'+<PREFIX_L>' +
        '+<S_BL1."NUM_BON">+<PREFIX_R>;  '
      '//end;'
      ''
      '//procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      '//begin'
      '//IF <PAGE> > 1 THEN  PageHeader1.VISIBLE:=FALSE'
      '//              ELSE  PageHeader1.VISIBLE:=TRUE;               '
      ''
      '//end;'
      ''
      '//procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      '//begin'
      '///if <S_ENTREP."LOGO"> = '#39#39' then ReportTitle1.visible := false'
      
        '//                          else ReportTitle1.visible := true;  ' +
        '                                                                ' +
        '                                              '
      '//end;'
      ''
      '//procedure Memo22OnBeforePrint(Sender: TfrxComponent);'
      '//begin'
      
        '//IF <TAGS>=1 THEN MEMO22.TEXT:=FormatFloat('#39'# ### ##0.00'#39',<S_BL' +
        '1."ANCIEN_SOLDE">+<S_BL1."TTC">-<S_BL1."VERSER">)  ;  '
      
        '//IF <TAGS>=2 THEN MEMO22.TEXT:=FormatFloat('#39'# ### ##0.00'#39',<S_BL' +
        '1."ANCIEN_SOLDE">-<S_BL1."TTC">-<S_BL1."VERSER">) ;'
      '//end;'
      ''
      'begin'
      '//Page1.LeftMargin:=<MARGE_IMP>                        '
      '    '
      'end.  '
      '      ')
    Left = 72
    Top = 344
    Datasets = <
      item
        DataSet = frxComptoirDB
        DataSetName = 'frxComptoirDB'
      end
      item
        DataSet = frxComptoirListPDB
        DataSetName = 'frxComptoirListPDB'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 73.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      MirrorMargins = True
      DataSetName = 'MasterData'
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 28.826840000000000000
        ParentFont = False
        Top = 173.858380000000000000
        Width = 275.905690000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo18: TfrxMemoView
          Left = 208.031496060000000000
          Top = 15.976377950000000000
          Width = 60.472443390000000000
          Height = 11.716535430000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          Frame.Style = fsDashDot
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 148.960730000000000000
          Top = 15.976377950000000000
          Width = 58.582677170000000000
          Height = 11.716535430000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          Frame.Style = fsDashDot
          HAlign = haRight
          Memo.UTF8W = (
            'P.U')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 109.385924410000000000
          Top = 15.976377950000000000
          Width = 39.685036930000000000
          Height = 11.716535430000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          Frame.Style = fsDashDot
          HAlign = haCenter
          Memo.UTF8W = (
            'QTE')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Top = 15.976377950000000000
          Width = 108.094478430000000000
          Height = 11.716535430000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Memo.UTF8W = (
            'DESCRIPTION')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.000000000000000000
          Top = 28.708720000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Color = clNone
          Frame.TopLine.Color = clNone
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clNone
          Frame.BottomLine.Color = clNone
        end
        object Line8: TfrxLineView
          Left = 2.779530000000000000
          Top = 0.779530000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Style = fsDashDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.600000000000000000
          Frame.LeftLine.Color = clNone
          Frame.TopLine.Color = clNone
          Frame.RightLine.Color = clNone
          Frame.BottomLine.Color = clNone
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 27.000000000000000000
        Top = 529.134200000000000000
        Width = 275.905690000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677167800000000000
        Top = 264.567100000000000000
        Width = 275.905690000000000000
        DataSet = frxComptoirListPDB
        DataSetName = 'frxComptoirListPDB'
        RowCount = 0
        Stretched = True
        object Memo46: TfrxMemoView
          Left = 110.102362200000000000
          Top = 2.889763780000000000
          Width = 38.551178660000000000
          Height = 17.007874020000000000
          StretchMode = smActualHeight
          DataSet = frxComptoirListPDB
          DataSetName = 'frxComptoirListPDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Merchant Copy'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxComptoirListPDB."qut_p"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          Left = 148.787401570000000000
          Top = 2.889763780000000000
          Width = 60.094488190000000000
          Height = 17.007874020000000000
          StretchMode = smActualHeight
          DataSet = frxComptoirListPDB
          DataSetName = 'frxComptoirListPDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Merchant Copy'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxComptoirListPDB."PrixVTTC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo50: TfrxMemoView
          Left = 209.031496060000000000
          Top = 2.889763780000000000
          Width = 60.094488190000000000
          Height = 17.007874020000000000
          StretchMode = smActualHeight
          DataSet = frxComptoirListPDB
          DataSetName = 'frxComptoirListPDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Merchant Copy'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxComptoirListPDB."MontantTTC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 1.889763780000000000
          Top = 0.889763780000000000
          Width = 108.094478430000000000
          Height = 17.007874020000000000
          StretchMode = smActualHeight
          DataSet = frxComptoirListPDB
          DataSetName = 'frxComptoirListPDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '[frxComptoirListPDB."nomp"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 158.826822910000000000
        Top = 309.921460000000000000
        Width = 275.905690000000000000
        OnAfterPrint = 'Footer1OnAfterPrint'
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo61: TfrxMemoView
          Left = 139.070914960000000000
          Top = 4.425191970000000000
          Width = 47.244084720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 113.070914960000000000
          Top = 24.322829760000000000
          Width = 73.700794720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Remise :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 113.070914960000000000
          Top = 45.220467560000000000
          Width = 73.700794720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Net a payer:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 187.102362200000000000
          Top = 4.425191970000000000
          Width = 79.370088500000000000
          Height = 18.897650000000000000
          DataField = 'montht_bvctr'
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxComptoirDB."montht_bvctr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 187.102362200000000000
          Top = 24.322829760000000000
          Width = 79.370088500000000000
          Height = 18.897650000000000000
          DataField = 'remise_bvctr'
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxComptoirDB."remise_bvctr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 187.102362200000000000
          Top = 45.220467560000000000
          Width = 77.480324720000000000
          Height = 18.897650000000000000
          DataField = 'NeTHT'
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxComptoirDB."NeTHT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 112.850493780000000000
          Top = 66.338587560000000000
          Width = 73.700794720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Versement :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 187.102362200000000000
          Top = 66.338587560000000000
          Width = 79.370088500000000000
          Height = 18.897650000000000000
          DataField = 'montver_bvctr'
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxComptoirDB."montver_bvctr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 112.850493780000000000
          Top = 87.236237560000000000
          Width = 73.700794720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Rendu :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 187.102362200000000000
          Top = 87.236237560000000000
          Width = 79.370088500000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          DataField = 'MontantRen'
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxComptoirDB."MontantRen"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.669291340000000000
          Top = 4.574827560000000000
          Width = 51.023617170000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Nb Prod:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 54.811026060000000000
          Top = 4.574827560000000000
          Width = 81.259854720000000000
          Height = 18.897650000000000000
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 4.000000000000000000
          Top = 127.504020000000000000
          Width = 264.567100000000000000
          Height = 15.118105350000000000
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'MERCI ET A BIENTOT')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 137.283574410000000000
          Top = 147.110287480000000000
          Width = 64.251985590000000000
          Height = 11.716535430000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'N: [frxComptoirDB."num_bvctr"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 4.000000000000000000
          Top = 147.110287480000000000
          Width = 49.133890000000000000
          Height = 11.716535430000000000
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Le: [frxComptoirDB."date_bvctr"]')
          ParentFont = False
        end
        object Client: TfrxMemoView
          Left = 74.708651650000000000
          Top = 147.110287480000000000
          Width = 64.252010000000000000
          Height = 11.716535430000000000
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Client: [frxComptoirDB."clientbvctr"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 3.669291340000000000
          Top = 24.881877560000000000
          Width = 107.716567170000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Especes')
          ParentFont = False
        end
        object Agent: TfrxMemoView
          Left = 198.976500000000000000
          Top = 147.110287480000000000
          Width = 69.921264720000000000
          Height = 11.716535430000000000
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Agent: [frxComptoirDB."Agnet"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Color = clNone
          Frame.TopLine.Color = clNone
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clNone
          Frame.BottomLine.Color = clNone
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 108.826840000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Color = clNone
          Frame.TopLine.Color = clNone
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clNone
          Frame.BottomLine.Color = clNone
        end
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Top = 125.724490000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Color = clNone
          Frame.TopLine.Color = clNone
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clNone
          Frame.BottomLine.Color = clNone
        end
        object MoneyWordRX: TfrxMemoView
          Left = 4.338590000000000000
          Top = 111.606370000000000000
          Width = 262.677297170000000000
          Height = 11.338590000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            'Moeny in words')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line7: TfrxLineView
          Left = 3.779530000000000000
          Top = 145.063080000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Frame.LeftLine.Color = clNone
          Frame.TopLine.Color = clNone
          Frame.TopLine.Style = fsDot
          Frame.RightLine.Color = clNone
          Frame.BottomLine.Color = clNone
        end
        object Line5: TfrxLineView
          Left = 4.779530000000000000
          Top = 158.299320000000000000
          Width = 264.567100000000000000
          Color = clBlack
          Frame.Style = fsDashDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.600000000000000000
          Frame.LeftLine.Color = clNone
          Frame.TopLine.Color = clNone
          Frame.RightLine.Color = clNone
          Frame.BottomLine.Color = clNone
        end
        object Memo13: TfrxMemoView
          Left = 50.692950000000000000
          Top = 147.110287480000000000
          Width = 27.212598430000000000
          Height = 11.716535430000000000
          DataSet = frxComptoirDB
          DataSetName = 'frxComptoirDB'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '| [frxComptoirDB."time_bvctr"] |')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 133.063065350000000000
        Top = 18.897650000000000000
        Width = 275.905690000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Name: TfrxMemoView
          Align = baCenter
          Left = 7.559060000000000000
          Top = 60.252085670000000000
          Width = 260.787570000000000000
          Height = 22.677165350000000000
          Visible = False
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Merchant Copy'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Name')
          ParentFont = False
        end
        object Logo: TfrxPictureView
          Align = baCenter
          Left = 5.669295000000000000
          Top = 0.559060000000000000
          Width = 264.567100000000000000
          Height = 56.692876770000000000
          Visible = False
          Center = True
          DataField = 'LOGO'
          DataSetName = 'S_ENTREP'
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object Tel: TfrxMemoView
          Left = 7.685045630000000000
          Top = 84.929190000000000000
          Width = 126.378034370000000000
          Height = 15.118105350000000000
          Visible = False
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = []
          Memo.UTF8W = (
            'Tel:')
          ParentFont = False
        end
        object Mob: TfrxMemoView
          Left = 142.110409530000000000
          Top = 84.929190000000000000
          Width = 126.236220470000000000
          Height = 15.118105350000000000
          Visible = False
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Merchant Copy'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Mob:')
          ParentFont = False
        end
        object Adr: TfrxMemoView
          Align = baCenter
          Left = 7.559060000000000000
          Top = 102.826840000000000000
          Width = 260.787570000000000000
          Height = 30.236225350000000000
          Visible = False
          StretchMode = smActualHeight
          DataSetName = 'S_CONFIG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Merchant Copy'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Adr')
          ParentFont = False
        end
      end
    end
  end
end
