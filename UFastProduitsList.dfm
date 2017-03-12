object FastProduitsListF: TFastProduitsListF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 516
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = [seClient, seBorder]
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TopP: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = 15527148
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    StyleElements = []
    object ResearchProduitsLbl: TLabel
      Left = 11
      Top = 23
      Width = 74
      Height = 16
      Caption = 'Rechercher'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 16
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object CancelProduitGBtn: TAdvToolButton
      Left = 786
      Top = 17
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
      Font.Height = 17
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 19
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      ShowHint = True
      Spacing = -1
      OnClick = CancelProduitGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object OKProduitGBtn: TAdvToolButton
      Tag = 1
      Left = 680
      Top = 17
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 17
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 17
      Images = MainForm.PanelIcons24
      Margin = 10
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      ShowHint = True
      Spacing = 10
      OnClick = OKProduitGBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object LastClientbtn: TsSpeedButton
      Left = 634
      Top = 17
      Width = 30
      Height = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = LastClientbtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 3
    end
    object NextClientbtn: TsSpeedButton
      Left = 600
      Top = 17
      Width = 30
      Height = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = NextClientbtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 2
      ShowCaption = False
    end
    object PreviosClientbtn: TsSpeedButton
      Left = 566
      Top = 17
      Width = 30
      Height = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = PreviosClientbtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 1
    end
    object FisrtClientbtn: TsSpeedButton
      Left = 532
      Top = 17
      Width = 30
      Height = 30
      ParentShowHint = False
      ShowHint = True
      OnClick = FisrtClientbtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 0
      ShowCaption = False
    end
    object LineP: TPanel
      Left = 0
      Top = 63
      Width = 894
      Height = 2
      Align = alBottom
      BevelOuter = bvNone
      Color = 7854350
      ParentBackground = False
      TabOrder = 1
      StyleElements = []
    end
    object S02: TPanel
      Left = 670
      Top = 11
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
      TabOrder = 2
      StyleElements = []
    end
    object ResearchProduitsEdt: TSearchBox
      Left = 89
      Top = 14
      Width = 267
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 22
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = ResearchProduitsEdtChange
      OnEnter = ResearchProduitsEdtEnter
      OnKeyDown = ResearchProduitsEdtKeyDown
      OnKeyPress = ResearchProduitsEdtKeyPress
    end
    object ResherchPARDesProduitsRdioBtn: TRadioButton
      Left = 366
      Top = 10
      Width = 159
      Height = 17
      Caption = 'Par D'#233'signation ou R'#233'f'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnClick = ResherchPARDesProduitsRdioBtnClick
    end
    object ResherchPARDCodProduitsRdioBtn: TRadioButton
      Left = 366
      Top = 36
      Width = 139
      Height = 17
      Caption = 'Par Code '#226' Barre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = ResherchPARDCodProduitsRdioBtnClick
    end
    object Panel2: TPanel
      Left = 526
      Top = 11
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1
    Height = 451
    Align = alLeft
    BevelOuter = bvNone
    Color = 7854350
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
  end
  object ProduitsListDBGridEh: TDBGridEh
    Left = 1
    Top = 65
    Width = 893
    Height = 451
    Align = alClient
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
    Font.Height = 18
    Font.Name = 'Segoe UI'
    Font.Style = []
    FrozenCols = 2
    GridLineParams.DataHorzLines = True
    GridLineParams.DataVertLines = True
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    HorzScrollBar.ExtraPanel.VisibleItems = [gsbiNavigator, gsbiSelAggregationInfoEh]
    HorzScrollBar.Height = 20
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
    IndicatorParams.Color = clWindow
    IndicatorParams.HorzLines = False
    IndicatorParams.VertLines = True
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = 16315635
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Color = clBtnFace
    RowHeight = 22
    SearchPanel.FilterOnTyping = True
    ShowHint = True
    TabOrder = 2
    TitleParams.BorderInFillStyle = True
    TitleParams.FillStyle = cfstThemedEh
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = 4207405
    TitleParams.Font.Height = 19
    TitleParams.Font.Name = 'Helvetica LT Std'
    TitleParams.Font.Style = []
    TitleParams.Font.Quality = fqProof
    TitleParams.ParentFont = False
    TitleParams.RowHeight = 25
    TitleParams.SortMarkerStyle = smstThemeDefinedEh
    TitleParams.VertLines = True
    VertScrollBar.Width = 20
    OnCheckRowHaveDetailPanel = ProduitsListDBGridEhCheckRowHaveDetailPanel
    OnDblClick = ProduitsListDBGridEhDblClick
    OnDrawColumnCell = ProduitsListDBGridEhDrawColumnCell
    OnKeyPress = ProduitsListDBGridEhKeyPress
    OnTitleBtnClick = ProduitsListDBGridEhTitleBtnClick
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'refer_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'R'#233'ference'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 100
        WordWrap = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nom_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'D'#233'signation'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 350
        WordWrap = False
      end
      item
        Alignment = taCenter
        DisplayFormat = '0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'QutDispo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        MaxWidth = 100
        MinWidth = 100
        Title.Alignment = taCenter
        Title.Caption = 'Stock'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
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
        FieldName = 'unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Unit'#233
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 73
        WordWrap = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'famp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Famille'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 150
        WordWrap = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'sfamp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Sous Famille'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 150
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'prixht_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'PrixA HT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 130
        WordWrap = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'tva_p'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'TVA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 50
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixATTC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Font.Quality = fqProof
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'PrixA TTC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 130
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'PrixV TTC D'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 130
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'PrixV TTC R'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 130
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'PrixV TTC G'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 130
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'PrixV TTC A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 130
        WordWrap = False
      end
      item
        Alignment = taRightJustify
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PrixVTTC2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'PrixV TTC A2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 130
        WordWrap = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'fourp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Fournisseur'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 170
        WordWrap = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ProduitListDataS: TDataSource
    DataSet = MainForm.ProduitTable
    Left = 432
    Top = 360
  end
end
