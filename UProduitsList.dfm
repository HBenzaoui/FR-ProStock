object ProduitsListF: TProduitsListF
  Left = 0
  Top = 0
  Caption = 'ProduitsListF'
  ClientHeight = 741
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    1089
    741)
  PixelsPerInch = 96
  TextHeight = 13
  object ProduitsListDBGridEh: TDBGridEh
    Left = 1
    Top = 82
    Width = 1088
    Height = 663
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
    DataSource = ProduitListDataS
    DynProps = <>
    EditActions = [geaSelectAllEh]
    EvenRowColor = clWindow
    FixedColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 24
    Font.Name = 'Segoe UI'
    Font.Style = []
    GridLineParams.DataHorzLines = True
    GridLineParams.DataVertLines = True
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    HorzScrollBar.ExtraPanel.VisibleItems = [gsbiNavigator, gsbiSelAggregationInfoEh]
    HorzScrollBar.Height = 15
    IndicatorOptions = [gioShowRowselCheckboxesEh]
    IndicatorParams.Color = clBtnFace
    IndicatorParams.HorzLineColor = 15970832
    IndicatorParams.VertLineColor = 15970832
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = 16315635
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Color = clBtnFace
    RowHeight = 30
    SearchPanel.FilterOnTyping = True
    ShowHint = True
    TabOrder = 0
    TitleParams.BorderInFillStyle = True
    TitleParams.FillStyle = cfstThemedEh
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clBlack
    TitleParams.Font.Height = 19
    TitleParams.Font.Name = 'Helvetica LT Std'
    TitleParams.Font.Style = []
    TitleParams.Font.Quality = fqProof
    TitleParams.ParentFont = False
    TitleParams.RowHeight = 25
    TitleParams.SortMarkerStyle = smstThemeDefinedEh
    TitleParams.VertLines = True
    VertScrollBar.Width = 15
    OnDblClick = ProduitsListDBGridEhDblClick
    OnDrawColumnCell = ProduitsListDBGridEhDrawColumnCell
    OnKeyDown = ProduitsListDBGridEhKeyDown
    OnKeyPress = ProduitsListDBGridEhKeyPress
    OnMouseMove = ProduitsListDBGridEhMouseMove
    OnTitleBtnClick = ProduitsListDBGridEhTitleBtnClick
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'refer_p'
        Footers = <>
        Layout = tlCenter
        MaxWidth = 120
        MinWidth = 120
        Title.Alignment = taCenter
        Title.Caption = 'R'#233'ference'
        Width = 120
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nom_p'
        Footers = <>
        Layout = tlCenter
        MaxWidth = -1
        MinWidth = 150
        Title.Alignment = taCenter
        Title.Caption = 'D'#233'signation'
        Width = 300
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'tva_p'
        Footers = <>
        Layout = tlCenter
        MaxWidth = 50
        MinWidth = 50
        Title.Alignment = taCenter
        Title.Caption = 'TVA'
        Width = 50
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_famp'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Famille'
        Visible = False
        Width = 150
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'famp'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Famille'
        Width = 150
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_sfamp'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Souse Famille'
        Visible = False
        Width = 150
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'sfamp'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Sous Famille'
        Width = 150
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixht_p'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'alertqut_p'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixATTC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5345802
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
        Width = 131
      end
      item
        DisplayFormat = '0.00 '
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixvd_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        MinWidth = 120
        Title.Alignment = taCenter
        Title.Caption = 'PrixVHT D'#233'tail'
        Width = 130
      end
      item
        DisplayFormat = '0.00 '
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        MinWidth = 120
        Title.Alignment = taCenter
        Title.Caption = 'PrixVTTC D'#233'tail'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        DisplayFormat = '0.00 '
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixvr_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        MinWidth = 120
        Title.Alignment = taCenter
        Title.Caption = 'PrixVHT Rev'
        Width = 130
      end
      item
        DisplayFormat = '0.00 '
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        MinWidth = 120
        Title.Alignment = taCenter
        Title.Caption = 'PrixVTTC Rev'
        Width = 130
      end
      item
        DisplayFormat = '0.00 '
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixvg_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        MinWidth = 120
        Title.Alignment = taCenter
        Title.Caption = 'PrixVHT Gros'
        Width = 130
      end
      item
        DisplayFormat = '0.00 '
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        MinWidth = 120
        Title.Alignment = taCenter
        Title.Caption = 'PrixVTTC Gros'
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixva_p'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCA'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixva2_p'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCA2'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUT'
        Footers = <>
      end
      item
        Alignment = taCenter
        Color = 15722984
        DynProps = <>
        EditButtons = <>
        FieldName = 'qut_p'
        Footers = <>
        Layout = tlCenter
        MaxWidth = 100
        MinWidth = 100
        Title.Alignment = taCenter
        Title.Caption = 'Stock'
        Width = 100
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'unit'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Unit'#233
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'fourp'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Fournisseur'
        Width = 200
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_f'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'perissable_p'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'dateperiss_p'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'alertdays_p'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'local'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Localisation'
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object TopP: TPanel
    Left = 0
    Top = 0
    Width = 1089
    Height = 82
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
      82)
    object EditProduitsBtn: TAdvToolButton
      Left = 706
      Top = 26
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 5
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -1
      OnClick = EditProduitsBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object DeleteProduitsBtn: TAdvToolButton
      Left = 812
      Top = 26
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
      Caption = 'Supprimer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 6
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -2
      OnClick = DeleteProduitsBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object AddProduitsBtn: TAdvToolButton
      Left = 600
      Top = 26
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
      OnClick = AddProduitsBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object ResearchProduitsLbl: TLabel
      Left = 19
      Top = 42
      Width = 78
      Height = 18
      Caption = 'Recherche'
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
    object sSpeedButton1: TsSpeedButton
      Left = 1012
      Top = 26
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
      Left = 939
      Top = 26
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
      Left = 1048
      Top = 26
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
    object sSpeedButton4: TsSpeedButton
      Left = 975
      Top = 26
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton4Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 48
    end
    object ArrowsPnl: TPanel
      Left = 442
      Top = 29
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
      TabOrder = 1
      StyleElements = []
      object LastClientbtn: TsSpeedButton
        Left = 99
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Modifer'
        ParentShowHint = False
        ShowHint = True
        OnClick = LastClientbtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 3
      end
      object NextClientbtn: TsSpeedButton
        Left = 69
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Detaill'
        ParentShowHint = False
        ShowHint = True
        OnClick = NextClientbtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 2
        ShowCaption = False
      end
      object PreviosClientbtn: TsSpeedButton
        Left = 39
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Modifer'
        ParentShowHint = False
        ShowHint = True
        OnClick = PreviosClientbtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 1
      end
      object FisrtClientbtn: TsSpeedButton
        Left = 9
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Detaill'
        ParentShowHint = False
        ShowHint = True
        OnClick = FisrtClientbtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 0
        ShowCaption = False
      end
    end
    object LineP: TPanel
      Left = 0
      Top = 80
      Width = 1319
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 7854350
      ParentBackground = False
      TabOrder = 2
      StyleElements = []
    end
    object Panel1: TPanel
      Left = 1087
      Top = 21
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
    object S01: TPanel
      Left = 928
      Top = 21
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
      TabOrder = 4
      StyleElements = []
    end
    object S02: TPanel
      Left = 582
      Top = 21
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
    object ResearchProduitsEdt: TSearchBox
      Left = 103
      Top = 35
      Width = 306
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 22
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = ResearchProduitsEdtChange
      OnKeyPress = ResearchProduitsEdtKeyPress
    end
    object ResherchPARDesProduitsRdioBtn: TRadioButton
      Left = 103
      Top = 11
      Width = 142
      Height = 17
      Caption = 'par D'#233'signation ou R'#233'f'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = True
      OnClick = ResherchPARDesProduitsRdioBtnClick
    end
    object ResherchPARDCodProduitsRdioBtn: TRadioButton
      Left = 301
      Top = 12
      Width = 108
      Height = 17
      Caption = 'par Code a Barre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = ResherchPARDCodProduitsRdioBtnClick
    end
    object Panel2: TPanel
      Left = 435
      Top = 21
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
      TabOrder = 8
      StyleElements = []
    end
    object Panel4: TPanel
      Left = 928
      Top = 21
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
      TabOrder = 9
      StyleElements = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 82
    Width = 1
    Height = 659
    Align = alLeft
    BevelOuter = bvNone
    Color = 7854350
    ParentBackground = False
    TabOrder = 2
    StyleElements = []
  end
  object ProduitListDataS: TDataSource
    DataSet = MainForm.ProduitTable
    Left = 864
    Top = 448
  end
  object ProduitListGridImgLst: TsAlphaImageList
    Height = 13
    ShareImages = True
    Width = 13
    Items = <
      item
        ImageFormat = ifPNG
        ImageName = 'Active not'
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000970485973000006EC000006EC011E753835000039EC69545874584D
          4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B6574206265
          67696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54
          637A6B633964223F3E0A3C783A786D706D65746120786D6C6E733A783D226164
          6F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D50
          20436F726520352E362D633036372037392E3135373734372C20323031352F30
          332F33302D32333A34303A34322020202020202020223E0A2020203C7264663A
          52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F7267
          2F313939392F30322F32322D7264662D73796E7461782D6E7323223E0A202020
          2020203C7264663A4465736372697074696F6E207264663A61626F75743D2222
          0A202020202020202020202020786D6C6E733A786D703D22687474703A2F2F6E
          732E61646F62652E636F6D2F7861702F312E302F220A20202020202020202020
          2020786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F65
          6C656D656E74732F312E312F220A202020202020202020202020786D6C6E733A
          70686F746F73686F703D22687474703A2F2F6E732E61646F62652E636F6D2F70
          686F746F73686F702F312E302F220A202020202020202020202020786D6C6E73
          3A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F6D6D2F220A202020202020202020202020786D6C6E733A7374457674
          3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F7354
          7970652F5265736F757263654576656E7423220A202020202020202020202020
          786D6C6E733A746966663D22687474703A2F2F6E732E61646F62652E636F6D2F
          746966662F312E302F220A202020202020202020202020786D6C6E733A657869
          663D22687474703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F
          223E0A2020202020202020203C786D703A43726561746F72546F6F6C3E41646F
          62652050686F746F73686F702043432032303135202857696E646F7773293C2F
          786D703A43726561746F72546F6F6C3E0A2020202020202020203C786D703A43
          7265617465446174653E323031352D31312D31345431323A33363A33362B3031
          3A30303C2F786D703A437265617465446174653E0A2020202020202020203C78
          6D703A4D6F64696679446174653E323031352D31322D31355431313A31303A34
          302B30313A30303C2F786D703A4D6F64696679446174653E0A20202020202020
          20203C786D703A4D65746164617461446174653E323031352D31322D31355431
          313A31303A34302B30313A30303C2F786D703A4D65746164617461446174653E
          0A2020202020202020203C64633A666F726D61743E696D6167652F706E673C2F
          64633A666F726D61743E0A2020202020202020203C70686F746F73686F703A43
          6F6C6F724D6F64653E333C2F70686F746F73686F703A436F6C6F724D6F64653E
          0A2020202020202020203C786D704D4D3A496E7374616E636549443E786D702E
          6969643A63326563623261362D656163312D383034392D613162622D35613637
          66326636353730663C2F786D704D4D3A496E7374616E636549443E0A20202020
          20202020203C786D704D4D3A446F63756D656E7449443E61646F62653A646F63
          69643A70686F746F73686F703A30656331363337332D613331342D313165352D
          396432312D6564666662366133396234343C2F786D704D4D3A446F63756D656E
          7449443E0A2020202020202020203C786D704D4D3A4F726967696E616C446F63
          756D656E7449443E786D702E6469643A62316537323038642D646630622D3034
          34372D623433342D3432356564636536353134383C2F786D704D4D3A4F726967
          696E616C446F63756D656E7449443E0A2020202020202020203C786D704D4D3A
          486973746F72793E0A2020202020202020202020203C7264663A5365713E0A20
          20202020202020202020202020203C7264663A6C69207264663A706172736554
          7970653D225265736F75726365223E0A20202020202020202020202020202020
          20203C73744576743A616374696F6E3E637265617465643C2F73744576743A61
          6374696F6E3E0A2020202020202020202020202020202020203C73744576743A
          696E7374616E636549443E786D702E6969643A62316537323038642D64663062
          2D303434372D623433342D3432356564636536353134383C2F73744576743A69
          6E7374616E636549443E0A2020202020202020202020202020202020203C7374
          4576743A7768656E3E323031352D31312D31345431323A33363A33362B30313A
          30303C2F73744576743A7768656E3E0A20202020202020202020202020202020
          20203C73744576743A736F6674776172654167656E743E41646F62652050686F
          746F73686F702043432032303135202857696E646F7773293C2F73744576743A
          736F6674776172654167656E743E0A2020202020202020202020202020203C2F
          7264663A6C693E0A2020202020202020202020202020203C7264663A6C692072
          64663A7061727365547970653D225265736F75726365223E0A20202020202020
          20202020202020202020203C73744576743A616374696F6E3E73617665643C2F
          73744576743A616374696F6E3E0A202020202020202020202020202020202020
          3C73744576743A696E7374616E636549443E786D702E6969643A633265636232
          61362D656163312D383034392D613162622D3561363766326636353730663C2F
          73744576743A696E7374616E636549443E0A2020202020202020202020202020
          202020203C73744576743A7768656E3E323031352D31322D31355431313A3130
          3A34302B30313A30303C2F73744576743A7768656E3E0A202020202020202020
          2020202020202020203C73744576743A736F6674776172654167656E743E4164
          6F62652050686F746F73686F702043432032303135202857696E646F7773293C
          2F73744576743A736F6674776172654167656E743E0A20202020202020202020
          20202020202020203C73744576743A6368616E6765643E2F3C2F73744576743A
          6368616E6765643E0A2020202020202020202020202020203C2F7264663A6C69
          3E0A2020202020202020202020203C2F7264663A5365713E0A20202020202020
          20203C2F786D704D4D3A486973746F72793E0A2020202020202020203C746966
          663A4F7269656E746174696F6E3E313C2F746966663A4F7269656E746174696F
          6E3E0A2020202020202020203C746966663A585265736F6C7574696F6E3E3435
          303030302F31303030303C2F746966663A585265736F6C7574696F6E3E0A2020
          202020202020203C746966663A595265736F6C7574696F6E3E3435303030302F
          31303030303C2F746966663A595265736F6C7574696F6E3E0A20202020202020
          20203C746966663A5265736F6C7574696F6E556E69743E323C2F746966663A52
          65736F6C7574696F6E556E69743E0A2020202020202020203C657869663A436F
          6C6F7253706163653E36353533353C2F657869663A436F6C6F7253706163653E
          0A2020202020202020203C657869663A506978656C5844696D656E73696F6E3E
          32343C2F657869663A506978656C5844696D656E73696F6E3E0A202020202020
          2020203C657869663A506978656C5944696D656E73696F6E3E32343C2F657869
          663A506978656C5944696D656E73696F6E3E0A2020202020203C2F7264663A44
          65736372697074696F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D
          706D6574613E0A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          202020202020202020202020202020202020202020200A3C3F787061636B6574
          20656E643D2277223F3EB6E3794F000000206348524D00007A25000080830000
          F9FF000080E9000075300000EA6000003A980000176F925FC546000000B94944
          415478DABC95B10DC4201004EDC46DB808B4356CEC262CD12335508CB325E113
          90FC2FFE65BF398289403BE880BB29E73C59726993C045A013B8179CC0E59140
          E02CD00B8C0293C0FC412A6B5EE07C4B207015181AA1DF0802D74B02819BC0E3
          4678E510B8FD149493FF137E96AC4D41A97978107E2ED7DC12F80EE115DF12C4
          8E82F82628EF3C7514A4FA4FAAC0750CAFB8B3603710EC4305E625B2BD64F367
          3AEAA3D9B60AF36637A45D0F19384346E690A1DF8BD700086CBE94E01D551A00
          00000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImageName = 'Active'
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F80000000970485973000006EC000006EC011E753835000039EC69545874584D
          4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B6574206265
          67696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54
          637A6B633964223F3E0A3C783A786D706D65746120786D6C6E733A783D226164
          6F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D50
          20436F726520352E362D633036372037392E3135373734372C20323031352F30
          332F33302D32333A34303A34322020202020202020223E0A2020203C7264663A
          52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F7267
          2F313939392F30322F32322D7264662D73796E7461782D6E7323223E0A202020
          2020203C7264663A4465736372697074696F6E207264663A61626F75743D2222
          0A202020202020202020202020786D6C6E733A786D703D22687474703A2F2F6E
          732E61646F62652E636F6D2F7861702F312E302F220A20202020202020202020
          2020786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F65
          6C656D656E74732F312E312F220A202020202020202020202020786D6C6E733A
          70686F746F73686F703D22687474703A2F2F6E732E61646F62652E636F6D2F70
          686F746F73686F702F312E302F220A202020202020202020202020786D6C6E73
          3A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F6D6D2F220A202020202020202020202020786D6C6E733A7374457674
          3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F7354
          7970652F5265736F757263654576656E7423220A202020202020202020202020
          786D6C6E733A746966663D22687474703A2F2F6E732E61646F62652E636F6D2F
          746966662F312E302F220A202020202020202020202020786D6C6E733A657869
          663D22687474703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F
          223E0A2020202020202020203C786D703A43726561746F72546F6F6C3E41646F
          62652050686F746F73686F702043432032303135202857696E646F7773293C2F
          786D703A43726561746F72546F6F6C3E0A2020202020202020203C786D703A43
          7265617465446174653E323031352D31312D31345431323A33363A33362B3031
          3A30303C2F786D703A437265617465446174653E0A2020202020202020203C78
          6D703A4D6F64696679446174653E323031352D31322D31355431313A30393A35
          312B30313A30303C2F786D703A4D6F64696679446174653E0A20202020202020
          20203C786D703A4D65746164617461446174653E323031352D31322D31355431
          313A30393A35312B30313A30303C2F786D703A4D65746164617461446174653E
          0A2020202020202020203C64633A666F726D61743E696D6167652F706E673C2F
          64633A666F726D61743E0A2020202020202020203C70686F746F73686F703A43
          6F6C6F724D6F64653E333C2F70686F746F73686F703A436F6C6F724D6F64653E
          0A2020202020202020203C786D704D4D3A496E7374616E636549443E786D702E
          6969643A66393836356332652D336337332D303134302D613330622D38616236
          32613138616634343C2F786D704D4D3A496E7374616E636549443E0A20202020
          20202020203C786D704D4D3A446F63756D656E7449443E61646F62653A646F63
          69643A70686F746F73686F703A65353064353430322D613331332D313165352D
          396432312D6564666662366133396234343C2F786D704D4D3A446F63756D656E
          7449443E0A2020202020202020203C786D704D4D3A4F726967696E616C446F63
          756D656E7449443E786D702E6469643A38626436376131302D316236342D3066
          34322D623331312D3232663635386635633934383C2F786D704D4D3A4F726967
          696E616C446F63756D656E7449443E0A2020202020202020203C786D704D4D3A
          486973746F72793E0A2020202020202020202020203C7264663A5365713E0A20
          20202020202020202020202020203C7264663A6C69207264663A706172736554
          7970653D225265736F75726365223E0A20202020202020202020202020202020
          20203C73744576743A616374696F6E3E637265617465643C2F73744576743A61
          6374696F6E3E0A2020202020202020202020202020202020203C73744576743A
          696E7374616E636549443E786D702E6969643A38626436376131302D31623634
          2D306634322D623331312D3232663635386635633934383C2F73744576743A69
          6E7374616E636549443E0A2020202020202020202020202020202020203C7374
          4576743A7768656E3E323031352D31312D31345431323A33363A33362B30313A
          30303C2F73744576743A7768656E3E0A20202020202020202020202020202020
          20203C73744576743A736F6674776172654167656E743E41646F62652050686F
          746F73686F702043432032303135202857696E646F7773293C2F73744576743A
          736F6674776172654167656E743E0A2020202020202020202020202020203C2F
          7264663A6C693E0A2020202020202020202020202020203C7264663A6C692072
          64663A7061727365547970653D225265736F75726365223E0A20202020202020
          20202020202020202020203C73744576743A616374696F6E3E73617665643C2F
          73744576743A616374696F6E3E0A202020202020202020202020202020202020
          3C73744576743A696E7374616E636549443E786D702E6969643A663938363563
          32652D336337332D303134302D613330622D3861623632613138616634343C2F
          73744576743A696E7374616E636549443E0A2020202020202020202020202020
          202020203C73744576743A7768656E3E323031352D31322D31355431313A3039
          3A35312B30313A30303C2F73744576743A7768656E3E0A202020202020202020
          2020202020202020203C73744576743A736F6674776172654167656E743E4164
          6F62652050686F746F73686F702043432032303135202857696E646F7773293C
          2F73744576743A736F6674776172654167656E743E0A20202020202020202020
          20202020202020203C73744576743A6368616E6765643E2F3C2F73744576743A
          6368616E6765643E0A2020202020202020202020202020203C2F7264663A6C69
          3E0A2020202020202020202020203C2F7264663A5365713E0A20202020202020
          20203C2F786D704D4D3A486973746F72793E0A2020202020202020203C746966
          663A4F7269656E746174696F6E3E313C2F746966663A4F7269656E746174696F
          6E3E0A2020202020202020203C746966663A585265736F6C7574696F6E3E3435
          303030302F31303030303C2F746966663A585265736F6C7574696F6E3E0A2020
          202020202020203C746966663A595265736F6C7574696F6E3E3435303030302F
          31303030303C2F746966663A595265736F6C7574696F6E3E0A20202020202020
          20203C746966663A5265736F6C7574696F6E556E69743E323C2F746966663A52
          65736F6C7574696F6E556E69743E0A2020202020202020203C657869663A436F
          6C6F7253706163653E36353533353C2F657869663A436F6C6F7253706163653E
          0A2020202020202020203C657869663A506978656C5844696D656E73696F6E3E
          32343C2F657869663A506978656C5844696D656E73696F6E3E0A202020202020
          2020203C657869663A506978656C5944696D656E73696F6E3E32343C2F657869
          663A506978656C5944696D656E73696F6E3E0A2020202020203C2F7264663A44
          65736372697074696F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D
          706D6574613E0A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          202020202020202020202020202020202020202020200A3C3F787061636B6574
          20656E643D2277223F3EF17EA356000000206348524D00007A25000080830000
          F9FF000080E9000075300000EA6000003A980000176F925FC546000000BB4944
          415478DABC95B10DC4201004EDC4E1B6401154E2262C51C136E71AC8B70D8724
          7C0292FFC5BFEC3747301168071D7037E59C274B2E6D82B840F410B78287B83C
          12409C210688116282983F48652D409C6F09203A887B23F41B3B447749007185
          78DC08AF1C10D79F8272F27FC2CF12D714949AEF0FC2CFE59A5B82D021BC125A
          82D85110DF04E59DA78E8254FF4915F88EE1157F166C06826DA8C0BC44B6976C
          FE4C477D34DB5661DEEC86B4EB210367C8C81C32F47BF11A00675B9C14029FD6
          5E0000000049454E44AE426082}
      end>
    Left = 856
    Top = 512
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
  object ProduitListfrxRprt: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 42582.498964919000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 240
    Top = 280
    Datasets = <
      item
        DataSet = frxProduitListDB
        DataSetName = 'frxProduitDB'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      VGuides.Strings = (
        '385,51206'
        '434,64595')
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 71.047310000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 372.913626665000000000
          Top = 2.519686670000000000
          Width = 301.102556670000000000
          Height = 28.976396670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Liste des Produits')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 113.559055120000000000
          Top = 42.872631820000000000
          Width = 363.039580000000000000
          Height = 28.174678180000000000
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
        object Date: TfrxMemoView
          Left = 963.780150000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 42.872631820000000000
          Width = 113.590600000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'R'#233'f'#233'rence')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 593.606680000000000000
          Top = 42.872631820000000000
          Width = 102.252010000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Qt'#233' dispo.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 906.653990000000000000
          Top = 42.872631820000000000
          Width = 140.047310000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Prix Vente HT D'#233'tail')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 695.740570000000000000
          Top = 42.872631820000000000
          Width = 139.842519690000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Prix D'#39'Achat HT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 835.567410000000000000
          Top = 42.872631820000000000
          Width = 72.015770000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'TVA %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 476.039580000000000000
          Top = 42.692950000000000000
          Width = 117.370130000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Famile')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          Left = 899.528140000000000000
          Top = 2.000000000000000000
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
        object Memo12: TfrxMemoView
          Top = 1.380201430000000000
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
        object Agent: TfrxMemoView
          Left = 31.795300000000000000
          Top = 1.000000000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataSet = frxProduitListDB
          DataSetName = 'frxProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Width = 1046.929810000000000000
          Height = 2.267716535433070000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = clNone
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 21.236240000000000000
        Top = 151.181200000000000000
        Width = 1046.929810000000000000
        DataSet = frxProduitListDB
        DataSetName = 'frxProduitDB'
        RowCount = 0
        Stretched = True
        object Shape1: TfrxShapeView
          Top = 21.236240000000000000
          Width = 1046.929810000000000000
          Fill.BackColor = 13948116
          Frame.Color = 13948116
        end
        object frxBonLivDBclientbvfac: TfrxMemoView
          Left = 113.559055120000000000
          Top = 0.779530000000000000
          Width = 359.433371100000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'nom_p'
          DataSet = frxProduitListDB
          DataSetName = 'frxProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            '[frxProduitDB."nom_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 0.779530000000000000
          Width = 113.763921100000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'refer_p'
          DataSet = frxProduitListDB
          DataSetName = 'frxProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxProduitDB."refer_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 592.787880000000000000
          Top = 0.779530000000000000
          Width = 102.425165120000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = frxProduitListDB
          DataSetName = 'frxProduitDB'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxProduitDB."qut_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 905.835190000000000000
          Top = 0.779530000000000000
          Width = 139.842519690000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'prixvd_p'
          DataSet = frxProduitListDB
          DataSetName = 'frxProduitDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxProduitDB."prixvd_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 694.921770000000000000
          Top = 0.779530000000000000
          Width = 139.842519690000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = frxProduitListDB
          DataSetName = 'frxProduitDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxProduitDB."prixht_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 834.748610000000000000
          Top = 0.779530000000000000
          Width = 72.188925120000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = frxProduitListDB
          DataSetName = 'frxProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxProduitDB."tva_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 476.220780000000000000
          Top = 0.599848180000000000
          Width = 117.543285120000000000
          Height = 18.897637800000000000
          StretchMode = smActualHeight
          DataField = 'famp'
          DataSet = frxProduitListDB
          DataSetName = 'frxProduitDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxProduitDB."famp"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 44.472480000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        object Memo16: TfrxMemoView
          Left = 106.047244090000000000
          Top = 0.377952760000000000
          Width = 121.322815120000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 0.377952760000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Number des produits:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxProduitListDB: TfrxDBDataset
    UserName = 'frxProduitDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_p=code_p'
      'nom_p=nom_p'
      'refer_p=refer_p'
      'code_u=code_u'
      'code_famp=code_famp'
      'code_sfamp=code_sfamp'
      'alertqut_p=alertqut_p'
      'code_f=code_f'
      'obser_p=obser_p'
      'logo_p=logo_p'
      'perissable_p=perissable_p'
      'dateperiss_p=dateperiss_p'
      'alertdays_p=alertdays_p'
      'prixht_p=prixht_p'
      'tva_p=tva_p'
      'prixvd_p=prixvd_p'
      'prixvr_p=prixvr_p'
      'prixvg_p=prixvg_p'
      'prixva_p=prixva_p'
      'prixva2_p=prixva2_p'
      'codebar_p=codebar_p'
      'PrixATTC=PrixATTC'
      'PrixVTTCD=PrixVTTCD'
      'PrixVTTCR=PrixVTTCR'
      'PrixVTTCG=PrixVTTCG'
      'PrixVTTCA=PrixVTTCA'
      'PrixVTTCA2=PrixVTTCA2'
      'famp=famp'
      'sfamp=sfamp'
      'fourp=fourp'
      'code_l=code_l'
      'local=local'
      'unit=unit'
      'QUT=QUT'
      'qut_p=qut_p'
      'qutmax_p=qutmax_p'
      'qutmin_p=qutmin_p'
      'qutini_p=qutini_p')
    DataSource = ProduitListDataS
    BCDToCurrency = False
    Left = 240
    Top = 352
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    ExportEMF = True
    ExportPictures = False
    OpenExcelAfterExport = True
    Wysiwyg = False
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = False
    SuppressPageHeadersFooters = False
    Left = 320
    Top = 440
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
    Left = 400
    Top = 440
  end
end
