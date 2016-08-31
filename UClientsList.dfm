object ClientListF: TClientListF
  Left = 0
  Top = 0
  Caption = 'ClientListF'
  ClientHeight = 741
  ClientWidth = 1362
  Color = 14276563
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  StyleElements = []
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1362
    741)
  PixelsPerInch = 96
  TextHeight = 13
  object ClientsListDBGridEh: TDBGridEh
    Left = 0
    Top = 81
    Width = 1365
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
    DataSource = ClientListDataS
    DynProps = <>
    EditActions = [geaSelectAllEh]
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
    IndicatorOptions = []
    IndicatorParams.Color = clBtnFace
    IndicatorParams.HorzLineColor = 15970832
    IndicatorParams.VertLineColor = 15970832
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = 16315635
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    RowHeight = 30
    SearchPanel.FilterOnTyping = True
    ShowHint = True
    TabOrder = 0
    TitleParams.BorderInFillStyle = True
    TitleParams.FillStyle = cfstThemedEh
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = 4207405
    TitleParams.Font.Height = 17
    TitleParams.Font.Name = 'Roboto'
    TitleParams.Font.Style = []
    TitleParams.ParentFont = False
    TitleParams.RowHeight = 25
    TitleParams.SortMarkerStyle = smstThemeDefinedEh
    TitleParams.VertLines = True
    VertScrollBar.SmoothStep = True
    VertScrollBar.Width = 15
    OnDblClick = ClientsListDBGridEhDblClick
    OnDrawColumnCell = ClientsListDBGridEhDrawColumnCell
    OnKeyDown = ClientsListDBGridEhKeyDown
    OnKeyPress = ClientsListDBGridEhKeyPress
    OnTitleBtnClick = ClientsListDBGridEhTitleBtnClick
    Columns = <
      item
        Alignment = taCenter
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'activ_c'
        Footers = <>
        ImageList = MainForm.GridIcons13
        KeyList.Strings = (
          'False'
          'True')
        Layout = tlCenter
        MaxWidth = 16
        MinWidth = 16
        Title.Alignment = taCenter
        Title.Caption = ' '
        Title.EndEllipsis = True
        Title.ToolTips = True
        Title.ShowImageAndText = False
        Width = 16
      end
      item
        Alignment = taCenter
        DisplayFormat = '0000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_c'
        Footer.ValueType = fvtCount
        Footers = <>
        Layout = tlCenter
        MinWidth = 100
        Title.Alignment = taCenter
        Title.Caption = 'Code Client'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nom_c'
        Footers = <>
        Layout = tlCenter
        MinWidth = 250
        Title.Alignment = taCenter
        Title.Caption = 'Nom du Client'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 250
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'activite_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'L'#39'Activit'#233
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'tarification_c'
        Footers = <>
        ImageList = MainForm.GridIconsClientNature20
        KeyList.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        Title.Alignment = taCenter
        Title.Caption = 'Nature'
        Width = 49
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'fix_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'T'#233'l'#233'phone'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'mob_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Mobile'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'mob2_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Mobile 2'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'fax_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Fax'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'adr_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Adresse'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ville_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'La Ville'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'willaya_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'La Willaya'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'email_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Email'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'siteweb_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Site Web'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'rc_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Registre Commerce'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'nif_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'N.I.F'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'nart_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' ART'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'nis_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'N.I.S'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'nbank_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Compte Bancaire'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'rib_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'R.I.B'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'oldcredit_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Ancien Cr'#233'dit'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'maxcredit_c'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Max Cr'#233'dit'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 130
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object TopP: TPanel
    Left = 0
    Top = 0
    Width = 1362
    Height = 82
    Align = alTop
    BevelOuter = bvNone
    Color = 14933719
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
    DesignSize = (
      1362
      82)
    object EditClientsBtn: TAdvToolButton
      Left = 642
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
      ImageIndex = 26
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -1
      OnClick = EditClientsBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object DeleteClientsBtn: TAdvToolButton
      Left = 748
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
      ImageIndex = 27
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -2
      OnClick = DeleteClientsBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object AddClientsBtn: TAdvToolButton
      Left = 536
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
      ImageIndex = 25
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -1
      OnClick = AddClientsBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object ResearchClientsLbl: TLabel
      Left = 24
      Top = 32
      Width = 73
      Height = 18
      Caption = 'Recherche'
      Color = 15722984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object sSpeedButton1: TsSpeedButton
      Left = 915
      Top = 26
      Width = 30
      Height = 30
      Hint = 'Modifer'
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton1Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 7
    end
    object sSpeedButton2: TsSpeedButton
      Left = 879
      Top = 26
      Width = 30
      Height = 30
      Hint = 'Modifer'
      ParentShowHint = False
      ShowHint = True
      OnClick = sSpeedButton2Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 8
    end
    object toutClientsLbl: TLabel
      Left = 1236
      Top = 54
      Width = 57
      Height = 16
      AutoSize = False
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1116
      Top = 54
      Width = 95
      Height = 16
      AutoSize = False
      Caption = 'Tout Les Clients'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 1116
      Top = 32
      Width = 114
      Height = 16
      AutoSize = False
      Caption = 'Les Clients Passif'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object PassifClientsLbl: TLabel
      Left = 1236
      Top = 32
      Width = 57
      Height = 16
      AutoSize = False
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4666873
      Font.Height = 17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 1116
      Top = 10
      Width = 87
      Height = 16
      AutoSize = False
      Caption = 'Les Client Actif'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object ActifClientsLbl: TLabel
      Left = 1236
      Top = 10
      Width = 57
      Height = 16
      AutoSize = False
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7854350
      Font.Height = 17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sSpeedButton3: TsSpeedButton
      Left = 940
      Top = -4
      Width = 30
      Height = 30
      Hint = 'Modifer'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = sSpeedButton3Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 9
    end
    object ArrowsPnl: TPanel
      Left = 378
      Top = 29
      Width = 132
      Height = 25
      BevelEdges = []
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 14933719
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
      Width = 1596
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 11544476
      ParentBackground = False
      TabOrder = 2
      StyleElements = []
    end
    object Panel1: TPanel
      Left = 960
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
      TabOrder = 3
      StyleElements = []
    end
    object S01: TPanel
      Left = 864
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
      Left = 518
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
    object ResearchClientsEdt: TSearchBox
      Left = 103
      Top = 28
      Width = 270
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = ResearchClientsEdtChange
      OnKeyPress = ResearchClientsEdtKeyPress
    end
    object ActifClientsRdioBtn: TRadioButton
      Left = 976
      Top = 8
      Width = 102
      Height = 17
      Caption = 'Les Client Actif'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = True
      OnClick = ActifClientsRdioBtnClick
    end
    object PassifClientsRdioBtn: TRadioButton
      Left = 976
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Les Clients Passif'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = PassifClientsRdioBtnClick
    end
    object toutClientsRdioBtn: TRadioButton
      Left = 976
      Top = 56
      Width = 113
      Height = 17
      Caption = 'Tout Les Clients'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = toutClientsRdioBtnClick
    end
    object Panel2: TPanel
      Left = 1100
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
    Color = 11544476
    ParentBackground = False
    TabOrder = 2
    StyleElements = []
  end
  object ClientListDataS: TDataSource
    DataSet = MainForm.ClientTable
    Left = 632
    Top = 320
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
    Left = 360
    Top = 408
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
    Left = 280
    Top = 408
  end
  object frxClientListDB: TfrxDBDataset
    UserName = 'frxClientDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nom_c=nom_c'
      'adr_c=adr_c'
      'ville_c=ville_c'
      'fix_c=fix_c'
      'mob_c=mob_c'
      'email_c=email_c'
      'willaya_c=willaya_c'
      'fax_c=fax_c'
      'activ_c=activ_c'
      'logo_c=logo_c'
      'mob2_c=mob2_c'
      'rc_c=rc_c'
      'nif_c=nif_c'
      'nart_c=nart_c'
      'nis_c=nis_c'
      'obser_c=obser_c'
      'nbank_c=nbank_c'
      'rib_c=rib_c'
      'activite_c=activite_c'
      'pays_c=pays_c'
      'siteweb_c=siteweb_c'
      'oldcredit_c=oldcredit_c'
      'maxcredit_c=maxcredit_c'
      'code_c=code_c'
      'tarification_c=tarification_c')
    DataSource = ClientListDataS
    BCDToCurrency = False
    Left = 200
    Top = 320
  end
  object ClientListfrxRprt: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 42582.608203159730000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 200
    Top = 248
    Datasets = <
      item
        DataSet = frxClientListDB
        DataSetName = 'frxClientDB'
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
        '309,92146'
        '351,49629'
        '593,38621')
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 84.826840000000000000
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
            #201'tat liste des Clients')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = -0.377860000000000000
          Top = 56.692913385826770000
          Width = 302.567100000000000000
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
            'Client')
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
          Left = 301.716921100000000000
          Top = 56.692913385826770000
          Width = 310.126160000000000000
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
            'Adresse')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 611.284021100000000000
          Top = 56.692913385826770000
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
            'Mobile 1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 917.347101100000000000
          Top = 56.692913385826770000
          Width = 128.708720000000000000
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
            'Solde')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 713.417911100000000000
          Top = 56.692913385826770000
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
            'Mobile 2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 815.449451100000000000
          Top = 56.692913385826770000
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
            'Fax')
          ParentFont = False
          VAlign = vaCenter
        end
        object Four: TfrxMemoView
          Align = baCenter
          Left = 372.913626665000000000
          Top = 34.015770000000000000
          Width = 301.102556670000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#233'riode du :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 317.480520000000000000
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
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        DataSet = frxClientListDB
        DataSetName = 'frxClientDB'
        RowCount = 0
        object Shape1: TfrxShapeView
          Top = 21.236240000000000000
          Width = 1046.929810000000000000
          Fill.BackColor = 13948116
          Frame.Color = 13948116
        end
        object frxBonLivDBclientbvfac: TfrxMemoView
          Left = 2.448818900000000000
          Top = 0.779530000000000000
          Width = 298.960891100000000000
          Height = 18.897650000000000000
          DataField = 'nom_c'
          DataSet = frxClientListDB
          DataSetName = 'frxClientDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            '[frxClientDB."nom_c"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 301.543600000000000000
          Top = 0.779530000000000000
          Width = 310.299481100000000000
          Height = 18.897650000000000000
          DataField = 'adr_c'
          DataSet = frxClientListDB
          DataSetName = 'frxClientDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxClientDB."adr_c"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 611.110700000000000000
          Top = 0.779530000000000000
          Width = 102.425165120000000000
          Height = 18.897650000000000000
          DataField = 'mob_c'
          DataSet = frxClientListDB
          DataSetName = 'frxClientDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxClientDB."mob_c"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 917.173780000000000000
          Top = 0.779530000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          DataField = 'oldcredit_c'
          DataSet = frxClientListDB
          DataSetName = 'frxClientDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxClientDB."oldcredit_c"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 713.244590000000000000
          Top = 0.779530000000000000
          Width = 102.425165120000000000
          Height = 18.897650000000000000
          DataField = 'mob2_c'
          DataSet = frxClientListDB
          DataSetName = 'frxClientDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxClientDB."mob2_c"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 815.276130000000000000
          Top = 0.779530000000000000
          Width = 102.425165120000000000
          Height = 18.897650000000000000
          DataField = 'fax_c'
          DataSet = frxClientListDB
          DataSetName = 'frxClientDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxClientDB."fax_c"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 44.472480000000000000
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        object Memo16: TfrxMemoView
          Left = 895.748180390000000000
          Top = 0.377952760000000000
          Width = 151.559055120000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxClientDB."oldcredit_c">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 794.142240000000000000
          Top = 0.377952760000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Total des soldes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Actif: TfrxMemoView
          Left = 105.346634880000000000
          Width = 87.307045120000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = -1.086145510000000000
          Width = 106.960566460000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Number des Clients Active:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Passif: TfrxMemoView
          Left = 105.346634880000000000
          Top = 14.677180000000000000
          Width = 87.307045120000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = -1.188495510000000000
          Top = 14.677180000000000000
          Width = 106.960566460000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Number des Clients Passif:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Tout: TfrxMemoView
          Left = 105.346634880000000000
          Top = 29.354360000000000000
          Width = 87.307045120000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = -1.188495510000000000
          Top = 29.354360000000000000
          Width = 106.960566460000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Number des tout les Clients:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
