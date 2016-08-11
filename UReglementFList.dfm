object ReglementFListF: TReglementFListF
  Left = 0
  Top = 0
  Caption = 'ReglementFListF'
  ClientHeight = 741
  ClientWidth = 1191
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    1191
    741)
  PixelsPerInch = 96
  TextHeight = 13
  object TopP: TPanel
    Left = 0
    Top = 0
    Width = 1191
    Height = 82
    Align = alTop
    BevelOuter = bvNone
    Color = 15722984
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    StyleElements = []
    DesignSize = (
      1191
      82)
    object EditBARecBtn: TAdvToolButton
      Left = 791
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
      OnClick = EditBARecBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object DeleteBARecBtn: TAdvToolButton
      Left = 897
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
      OnClick = DeleteBARecBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object AddBARecBtn: TAdvToolButton
      Left = 685
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
      OnClick = AddBARecBtnClick
      Version = '1.6.1.1'
      TMSStyle = 0
    end
    object ResearchBACtrLbl: TLabel
      Left = 10
      Top = 38
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
      Left = 1110
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
      Left = 1074
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
      Left = 1146
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
    object Label1: TLabel
      Left = 345
      Top = 14
      Width = 23
      Height = 18
      Caption = 'Du:'
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
    object Label2: TLabel
      Left = 346
      Top = 49
      Width = 22
      Height = 18
      Caption = 'Au:'
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
    object ArrowsPnl: TPanel
      Left = 527
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
      object LastBARecbtn: TsSpeedButton
        Left = 99
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Modifer'
        ParentShowHint = False
        ShowHint = True
        OnClick = LastBARecbtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 3
      end
      object NextBARecbtn: TsSpeedButton
        Left = 69
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Detaill'
        ParentShowHint = False
        ShowHint = True
        OnClick = NextBARecbtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 2
        ShowCaption = False
      end
      object PreviosBARecbtn: TsSpeedButton
        Left = 39
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Modifer'
        ParentShowHint = False
        ShowHint = True
        OnClick = PreviosBARecbtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 1
      end
      object FisrtBARecbtn: TsSpeedButton
        Left = 9
        Top = 0
        Width = 24
        Height = 24
        Hint = 'Detaill'
        ParentShowHint = False
        ShowHint = True
        OnClick = FisrtBARecbtnClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        Images = MainForm.PanelIcons24
        ImageIndex = 0
        ShowCaption = False
      end
    end
    object LineP: TPanel
      Left = 0
      Top = 80
      Width = 1207
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 7854350
      ParentBackground = False
      TabOrder = 2
      StyleElements = []
    end
    object Panel1: TPanel
      Left = 1189
      Top = 21
      Width = 1
      Height = 40
      ParentCustomHint = False
      Anchors = [akTop, akRight]
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 10379008
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
      Left = 1059
      Top = 21
      Width = 1
      Height = 40
      ParentCustomHint = False
      Anchors = [akTop, akRight]
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 10379008
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
      Left = 667
      Top = 21
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 10379008
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
    object ResearchRegFEdt: TSearchBox
      Left = 91
      Top = 34
      Width = 242
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 22
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = ResearchRegFEdtChange
    end
    object Panel2: TPanel
      Left = 520
      Top = 21
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 10379008
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
    object DateEndRegFD: TDateTimePicker
      Left = 374
      Top = 44
      Width = 120
      Height = 29
      Date = 42435.595104571760000000
      Time = 42435.595104571760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 22
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnChange = DateStartRegFDChange
    end
    object DateStartRegFD: TDateTimePicker
      Left = 374
      Top = 9
      Width = 120
      Height = 29
      Date = 42435.595104571760000000
      Time = 42435.595104571760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 22
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnChange = DateStartRegFDChange
    end
    object ResherchRegFNumBRdioBtn: TRadioButton
      Left = 205
      Top = 11
      Width = 131
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'par N'#176' de R'#232'glement'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      StyleElements = []
    end
    object ResherchRegFFourRdioBtn: TRadioButton
      Left = 84
      Top = 11
      Width = 115
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'par Fournisseur'
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
    object Panel4: TPanel
      Left = 1014
      Top = 21
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 10379008
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
      TabOrder = 11
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
    TabOrder = 1
    StyleElements = []
  end
  object BARecListDBGridEh: TDBGridEh
    Left = 0
    Top = 79
    Width = 1191
    Height = 659
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
    DataSource = RegFListDataS
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
    VertScrollBar.Width = 15
    Columns = <
      item
        Alignment = taCenter
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'bon_or_no_rf'
        Footers = <>
        ImageList = MainForm.GriDRegIcons20
        KeyList.Strings = (
          '1'
          '2'
          '3')
        Layout = tlCenter
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = ' '
        Title.EndEllipsis = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Title.ToolTips = True
        Width = 24
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'nom_rf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 18
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' de Pi'#233'ce'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 150
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_rf'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Date'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 113
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'time_rf'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Houre'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 113
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'FourRF'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Fournisseur'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 200
      end
      item
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_mdpai'
        Footers = <>
        ImageList = MainForm.GridIconsMP20
        KeyList.Strings = (
          '1'
          '2'
          '3'
          '4')
        Layout = tlCenter
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'MP'
        Width = 28
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'montver_rf'
        Footers = <>
        Layout = tlCenter
        MinWidth = 150
        Title.Alignment = taCenter
        Title.Caption = 'Montant Vers'#233
        Title.EndEllipsis = True
        Title.ToolTips = True
        Width = 180
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'remise_barec'
        Footers = <>
        Layout = tlCenter
        MinWidth = 150
        Title.Alignment = taCenter
        Title.Caption = 'Remise HT'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Visible = False
        Width = 150
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'RemisePerc'
        Footers = <>
        Visible = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MontantTVA'
        Footers = <>
        Layout = tlCenter
        MinWidth = 150
        Title.Alignment = taCenter
        Title.Caption = 'Montant TVA'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Visible = False
        Width = 150
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'montttc_barec'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Montant TTC'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Visible = False
        Width = 150
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'montver_barec'
        Footers = <>
        Layout = tlCenter
        MinWidth = 150
        Title.Alignment = taCenter
        Title.Caption = 'Montant Vers'#233
        Title.EndEllipsis = True
        Title.ToolTips = True
        Visible = False
        Width = 150
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'MontantRes'
        Footers = <>
        Layout = tlCenter
        MinWidth = 150
        Title.Alignment = taCenter
        Title.Caption = 'Montant Reste'
        Title.EndEllipsis = True
        Title.ToolTips = True
        Visible = False
        Width = 150
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'Agent'
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Width = 150
        WordWrap = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object RegFListDataS: TDataSource
    DataSet = MainForm.RegfournisseurTable
    Left = 1128
    Top = 672
  end
  object RegFListfrxRprt: TfrxReport
    Version = '5.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 42582.663143622680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 296
    Datasets = <
      item
        DataSet = frxRegFListDB
        DataSetName = 'frxRegFListDB'
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 88.488250000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object PreiodRX: TfrxMemoView
          Align = baCenter
          Left = 371.023861665000000000
          Top = 34.015770000000000000
          Width = 304.882086670000000000
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
            #201'tat liste de reglement Founisseurs')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 189.000000000000000000
          Top = 60.313571820000000000
          Width = 132.283550000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          Memo.UTF8W = (
            '          Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Top = 60.313571820000000000
          Width = 189.181200000000000000
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
            'N'#176' De Pi'#233'ce')
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
          Left = 450.716921100000000000
          Top = 60.313571820000000000
          Width = 306.346630000000000000
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
            'Founisseur')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 318.590551180000000000
          Top = 60.313571820000000000
          Width = 132.488250000000000000
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
            'Houre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 851.669921100000000000
          Top = 60.313571820000000000
          Width = 196.740260000000000000
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
            'Montant')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 754.733001100000000000
          Top = 60.313571820000000000
          Width = 98.472480000000000000
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
            'Modalit'#233)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 298.582870000000000000
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
          DataSet = ReglementCListF.frxRegCListDB
          DataSetName = 'frxRegCListDB'
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
        DataSet = frxRegFListDB
        DataSetName = 'frxRegFListDB'
        RowCount = 0
        object Shape1: TfrxShapeView
          Top = 21.236240000000000000
          Width = 1046.929810000000000000
          Fill.BackColor = 13948116
          Frame.Color = 13948116
        end
        object frxBonLivDBnum_bvfac: TfrxMemoView
          Left = 189.000000000000000000
          Top = 0.779530000000000000
          Width = 131.149601420000000000
          Height = 18.897650000000000000
          DataField = 'date_rf'
          DataSet = frxRegFListDB
          DataSetName = 'frxRegFListDB'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRegFListDB."date_rf"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDBclientbvfac: TfrxMemoView
          Left = 20.000000000000000000
          Top = 0.779530000000000000
          Width = 170.456871100000000000
          Height = 18.897650000000000000
          DataField = 'nom_rf'
          DataSet = frxRegFListDB
          DataSetName = 'frxRegFListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            '[frxRegFListDB."nom_rf"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 450.543600000000000000
          Top = 0.779530000000000000
          Width = 306.519951100000000000
          Height = 18.897650000000000000
          DataField = 'FourRF'
          DataSet = frxRegFListDB
          DataSetName = 'frxRegFListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRegFListDB."FourRF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 318.590551180000000000
          Top = 0.779530000000000000
          Width = 132.661405120000000000
          Height = 18.897650000000000000
          DataField = 'time_rf'
          DataSet = frxRegFListDB
          DataSetName = 'frxRegFListDB'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRegFListDB."time_rf"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 851.496600000000000000
          Top = 0.779530000000000000
          Width = 196.913415120000000000
          Height = 18.897650000000000000
          DataField = 'montver_rf'
          DataSet = frxRegFListDB
          DataSetName = 'frxRegFListDB'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxRegFListDB."montver_rf"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 754.559680000000000000
          Top = 0.779530000000000000
          Width = 98.645801100000000000
          Height = 18.897650000000000000
          DataField = 'MP'
          DataSet = frxRegFListDB
          DataSetName = 'frxRegFListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRegFListDB."MP"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.834662760000000000
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          Left = 851.189550000000000000
          Top = 0.377952760000000000
          Width = 196.913415120000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxRegFListDB."montver_rf">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 760.740570000000000000
          Top = 0.377952760000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 111.346630000000000000
          Width = 117.543285120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Number de reglements :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxRegFListDB: TfrxDBDataset
    UserName = 'frxRegFListDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_rf=code_rf'
      'nom_rf=nom_rf'
      'date_rf=date_rf'
      'time_rf=time_rf'
      'montver_rf=montver_rf'
      'code_mdpai=code_mdpai'
      'num_cheque_rf=num_cheque_rf'
      'code_f=code_f'
      'code_ur=code_ur'
      'FourRF=FourRF'
      'Agent=Agent'
      'obser_rf=obser_rf'
      'code_cmpt=code_cmpt'
      'code_barec=code_barec'
      'bon_or_no_rf=bon_or_no_rf'
      'code_bafac=code_bafac'
      'MP=MP')
    DataSource = RegFListDataS
    BCDToCurrency = False
    Left = 248
    Top = 392
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
    Left = 328
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
end
