object TransferListGestionF: TTransferListGestionF
  Left = 0
  Top = 0
  Caption = 'Liste d'#39'opirations transfer'
  ClientHeight = 741
  ClientWidth = 951
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000000000130B0000130B00000000000000000000FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDCEE900CA6FBC29CA6F
    BD2AEDCFE908FFFFFF00FFFFFF00D06CBF04EDCFEA04FFFFFF00FFFFFF00FFFF
    FF00EDCFEA00E4B6DD00E4B7DD00E4B7DE00E4B7DE00E4B6DE00B0279CCDB027
    9CFFB0279CF5B0269DB3B6249E1AAF269CB8E4B6DD28FFFFFF00FFFFFF00FFFF
    FF00D06CBF06AF269C84B0279BC1B0279CDCB0279B9DF6E6F400E4B7DE36E4B7
    DE4DBE52B874B0279CBEB0279CF3B0279BFFE4B7DD42FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00B6239D08AF279CF1B0279CFFC25CB083FFFFFF00FFFFFF00FFFF
    FF00D06CBE04B0279CB8B0279CFFB0279CFFE4B7DE5CFFFFFF00FFFFFF00FFFF
    FF00FFFFFF00B0279C7DB0269CDDB0279CDBE4B7DE60FFFFFF00FFFFFF00FFFF
    FF00EDCFE90FE4B7DE54C25CB077B0279B9BE4B7DE4FFFFFFF00FFFFFF00FFFF
    FF00CD6DC007B0279CFEC455AD7CD06CBE08EDCFE91FFFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00F6E6F400E4B6DE00F0D4E200FFFFFF00FFFF
    FF00CA6FBC29B0279CFFE4B7DE56FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00E4B6DE00B0269B7CCD74B63EFFFFFF00FFFF
    FF00CD74B63CB0279CFFE4B7DE47FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00E4B6DD00AF269BC9C96EBC69FFFFFF00FFFF
    FF00F0D4E201E4B6DE17F6E6F40DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00EDCFE900D06CBE11C455AD03B0279BEBC96BBE26FFFFFF00FFFF
    FF00FFFFFF00E4B7DE00B0279B4DC25CB00AE4B7DE00EDCFE900FFFFFF00FFFF
    FF00FFFFFF00E4B7DE00B0279CB0B0269B79AF279CE2FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00E4B7DE00B0279CE4B0279CFEB0279CCDD06CBE23FFFFFF00FFFF
    FF00FFFFFF00C25CB005B0279CF4B0279BFDB6249D89FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00E4B7DD00B0279BCAB0269CFFB0269CBEBF52B809E4B7DE00E4B7
    DE00F6E6F400B0279B38B0279CFFB0279BFFAF269CDBD06CBF08FFFFFF00FFFF
    FF00FFFFFF00E4B6DD00AF269C9EB6239D71B0279CBAB0279CF7B0279CDAB027
    9CC6E4B6DE39E4B7DE31E4B7DE65E4B7DD4BE4B6DD30EDCFEA09FFFFFF00FFFF
    FF00FFFFFF00EDCFEA00D06CBF0DFFFFFF00FFFFFF00B55DB102CA6EBD48CB6E
    BD72EDCFE920FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    0000FFFF0000FF7F0000FFF70000F7E70000FFFF0000FFFF0000DFFF0000DFFF
    0000FFFF0000FFFF0000FFFF0000F7E70000FFFF0000FFFF0000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    951
    741)
  PixelsPerInch = 96
  TextHeight = 13
  object TopP: TPanel
    Left = 0
    Top = 0
    Width = 951
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    Color = 15527148
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    StyleElements = []
    DesignSize = (
      951
      71)
    object EditBARecBtn: TAdvToolButton
      Left = 673
      Top = 21
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
      OnClick = EditBARecBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object DeleteBARecBtn: TAdvToolButton
      Left = 778
      Top = 21
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
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object AddBARecBtn: TAdvToolButton
      Left = 568
      Top = 21
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
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object ResearchBACtrLbl: TLabel
      Left = 2
      Top = 31
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
      Visible = False
      StyleElements = []
    end
    object Label1: TLabel
      Left = 314
      Top = 10
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
      Left = 315
      Top = 41
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
    object FisrtBARecbtn: TsSpeedButton
      Left = 442
      Top = 23
      Width = 25
      Height = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = FisrtBARecbtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 0
      ShowCaption = False
    end
    object PreviosBARecbtn: TsSpeedButton
      Left = 472
      Top = 23
      Width = 25
      Height = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = PreviosBARecbtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 1
    end
    object NextBARecbtn: TsSpeedButton
      Left = 502
      Top = 23
      Width = 25
      Height = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = NextBARecbtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 2
      ShowCaption = False
    end
    object LastBARecbtn: TsSpeedButton
      Left = 532
      Top = 23
      Width = 25
      Height = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = LastBARecbtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons24
      ImageIndex = 3
    end
    object Label26: TLabel
      Left = 611
      Top = 50
      Width = 15
      Height = 12
      Caption = '[F4]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10395294
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 716
      Top = 50
      Width = 15
      Height = 12
      Caption = '[F5]'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10395294
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 821
      Top = 50
      Width = 15
      Height = 12
      Caption = '[F6]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10395294
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LineP: TPanel
      Left = 0
      Top = 69
      Width = 967
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 11544220
      ParentBackground = False
      TabOrder = 1
      StyleElements = []
    end
    object S01: TPanel
      Left = 883
      Top = 16
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 11544220
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
    object S02: TPanel
      Left = 562
      Top = 16
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 11544220
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
    object ResearchTransferEdt: TSearchBox
      Left = 76
      Top = 27
      Width = 220
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = -15
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = ResearchTransferEdtChange
      OnKeyDown = ResearchTransferEdtKeyDown
    end
    object Panel2: TPanel
      Left = 436
      Top = 16
      Width = 1
      Height = 40
      ParentCustomHint = False
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 11544220
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
    object DateEndTransferD: TDateTimePicker
      Left = 338
      Top = 38
      Width = 87
      Height = 23
      Date = 42435.595104571760000000
      Time = 42435.595104571760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = DateStartTransferDChange
    end
    object DateStartTransferD: TDateTimePicker
      Left = 338
      Top = 7
      Width = 87
      Height = 23
      Date = 42435.595104571760000000
      Time = 42435.595104571760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnChange = DateStartTransferDChange
    end
    object ResherchTransferRdioBtn: TRadioButton
      Left = 76
      Top = 6
      Width = 117
      Height = 17
      Caption = 'Par Observation'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = True
      StyleElements = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 71
    Width = 1
    Height = 650
    Align = alLeft
    BevelOuter = bvNone
    Color = 8637171
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
  end
  object TransferListDBGridEh: TDBGridEh
    Left = 0
    Top = 71
    Width = 951
    Height = 649
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
    DataSource = TransferListDataS
    DynProps = <>
    EvenRowColor = clWindow
    FixedColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Segoe UI'
    Font.Style = []
    FooterParams.FillStyle = cfstSolidEh
    FrozenCols = 1
    GridLineParams.DataHorzLines = True
    GridLineParams.DataVertLines = True
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    HorzScrollBar.Height = 15
    IndicatorOptions = [gioShowRowIndicatorEh]
    IndicatorParams.Color = clBtnFace
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = 16315635
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    RowDetailPanel.Color = clBtnFace
    RowHeight = 22
    SearchPanel.FilterOnTyping = True
    ShowHint = True
    SumList.Active = True
    SumList.VirtualRecords = True
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
    OnDblClick = TransferListDBGridEhDblClick
    OnKeyDown = TransferListDBGridEhKeyDown
    OnKeyPress = TransferListDBGridEhKeyPress
    Columns = <
      item
        Alignment = taCenter
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'refer_transfer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#176
        Title.EndEllipsis = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Title.ToolTips = True
        Width = 120
        WordWrap = False
      end
      item
        Alignment = taCenter
        DisplayFormat = 'DD/MM/YYYY'
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_transfer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Date'
        Title.EndEllipsis = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Title.ToolTips = True
        Width = 90
        WordWrap = False
      end
      item
        Alignment = taCenter
        DisplayFormat = 'HH:MM:SS'
        DynProps = <>
        EditButtons = <>
        FieldName = 'time_transfer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Heure'
        Title.EndEllipsis = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Title.ToolTips = True
        Width = 100
        WordWrap = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'CompteSource'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Compte source'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 180
        WordWrap = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'CompteDis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <
          item
            Alignment = taRightJustify
            Color = 15722984
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4207405
            Font.Height = 18
            Font.Name = 'Helvetica LT Std'
            Font.Style = [fsBold]
            Value = 'Total:'
            ValueType = fvtStaticText
          end>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Compte distination'
        Title.EndEllipsis = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Title.ToolTips = True
        Width = 180
        WordWrap = False
      end
      item
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_mdpai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <
          item
            Color = 15722984
          end>
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
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 28
        WordWrap = False
      end
      item
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'mont_transfer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <
          item
            Color = 15722984
            FieldName = 'mont_transfer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4207405
            Font.Height = 18
            Font.Name = 'Helvetica LT Std'
            Font.Style = [fsBold]
            ValueType = fvtSum
          end>
        Layout = tlCenter
        MinWidth = 150
        Title.Alignment = taCenter
        Title.Caption = 'Montant'
        Title.EndEllipsis = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Title.ToolTips = True
        Width = 150
        WordWrap = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'obser_transfer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Caption = 'Observations'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 200
        WordWrap = False
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'Agent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        Footers = <>
        Layout = tlCenter
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 4207405
        Title.Font.Height = 18
        Title.Font.Name = 'Helvetica LT Std'
        Title.Font.Style = []
        Title.Font.Quality = fqProof
        Width = 150
        WordWrap = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object StatuBar: TsStatusBar
    Left = 0
    Top = 721
    Width = 951
    Height = 20
    BiDiMode = bdLeftToRight
    Panels = <
      item
        Alignment = taRightJustify
        Bevel = pbRaised
        Style = psOwnerDraw
        Width = 110
      end
      item
        Style = psOwnerDraw
        Width = 50
      end>
    ParentBiDiMode = False
    SizeGrip = False
    SkinData.SkinSection = 'MENUITEM'
    DesignSize = (
      951
      20)
    object SumGirdProduitBtn: TAdvToolButton
      Left = 141
      Top = 0
      Width = 26
      Height = 20
      Cursor = crHandPoint
      Hint = 'Totaux'
      Anchors = [akRight]
      AutoThemeAdapt = False
      BorderColor = 15722984
      BorderDownColor = 15722984
      BorderHotColor = 14079702
      Color = 15722984
      ColorDown = 15722984
      ColorHot = 14079702
      ColorHotTo = 14079702
      ColorChecked = clNone
      DropDownSplit = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 26
      Images = MainForm.PanelIcons16
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -2
      OnClick = SumGirdProduitBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object RefreshGirdBtn: TAdvToolButton
      Left = 112
      Top = 0
      Width = 26
      Height = 20
      Cursor = crHandPoint
      Hint = 'Rafra'#238'chir'
      Anchors = [akRight]
      AutoThemeAdapt = False
      BorderColor = 15722984
      BorderDownColor = 15722984
      BorderHotColor = 14079702
      Color = 15722984
      ColorDown = 15722984
      ColorHot = 14079702
      ColorHotTo = 14079702
      ColorChecked = clNone
      DropDownSplit = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 27
      Images = MainForm.PanelIcons16
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -2
      OnClick = RefreshGirdBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object AdvToolButton1: TAdvToolButton
      Left = 175
      Top = 0
      Width = 26
      Height = 20
      Cursor = crHandPoint
      Hint = 'Exporter vers Excel'
      Anchors = [akRight]
      AutoThemeAdapt = False
      BorderColor = 15722984
      BorderDownColor = 15722984
      BorderHotColor = 14079702
      Color = 15722984
      ColorDown = 15722984
      ColorHot = 14079702
      ColorHotTo = 14079702
      ColorChecked = clNone
      DropDownSplit = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 29
      Images = MainForm.PanelIcons16
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -2
      OnClick = AdvToolButton1Click
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object AdvToolButton2: TAdvToolButton
      Left = 203
      Top = 0
      Width = 26
      Height = 20
      Cursor = crHandPoint
      Hint = 'Exporter vers PDF'
      Anchors = [akRight]
      AutoThemeAdapt = False
      BorderColor = 15722984
      BorderDownColor = 15722984
      BorderHotColor = 14079702
      Color = 15722984
      ColorDown = 15722984
      ColorHot = 14079702
      ColorHotTo = 14079702
      ColorChecked = clNone
      DropDownSplit = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 30
      Images = MainForm.PanelIcons16
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -2
      OnClick = AdvToolButton2Click
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object AdvToolButton3: TAdvToolButton
      Left = 231
      Top = 0
      Width = 26
      Height = 20
      Cursor = crHandPoint
      Hint = 'Imprimer'
      Anchors = [akRight]
      AutoThemeAdapt = False
      BorderColor = 15722984
      BorderDownColor = 15722984
      BorderHotColor = 14079702
      Color = 15722984
      ColorDown = 15722984
      ColorHot = 14079702
      ColorHotTo = 14079702
      ColorChecked = clNone
      DropDownButton = True
      DropDownMenu = PopupMenu1
      DropDownSplit = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 31
      Images = MainForm.PanelIcons16
      ParentFont = False
      ParentShowHint = False
      Shaded = False
      ShowHint = True
      Spacing = -2
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object Panel5: TPanel
      Left = 170
      Top = 0
      Width = 1
      Height = 20
      ParentCustomHint = False
      Anchors = [akTop, akRight]
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 13421772
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
    object Panel6: TPanel
      Left = 261
      Top = 0
      Width = 1
      Height = 20
      ParentCustomHint = False
      Anchors = [akTop, akRight]
      BevelEdges = []
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = 13421772
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
      TabOrder = 1
      StyleElements = []
    end
  end
  object TransferListDataS: TDataSource
    DataSet = DataModuleF.Transfer_comptesTable
    Left = 804
    Top = 620
  end
  object frxTransferListDB: TfrxDBDataset
    UserName = 'frxTransferListDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'code_transfer=code_transfer'
      'date_transfer=date_transfer'
      'time_transfer=time_transfer'
      'refer_transfer=refer_transfer'
      'mont_transfer=mont_transfer'
      'num_cheque_transfer=num_cheque_transfer'
      'code_mdpai=code_mdpai'
      'code_cmpts=code_cmpts'
      'code_cmptd=code_cmptd'
      'code_ur=code_ur'
      'CompteSource=CompteSource'
      'CompteDis=CompteDis'
      'Agent=Agent'
      'obser_transfer=obser_transfer')
    DataSource = TransferListDataS
    BCDToCurrency = False
    Left = 248
    Top = 394
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
  object TransferListfrxRprt: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 42764.636191851850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 278
    Top = 246
    Datasets = <
      item
        DataSet = frxTransferListDB
        DataSetName = 'frxTransferListDB'
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
        Height = 111.165430000000000000
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
            #201'tat liste des op'#233'rations de transfert')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 113.409400000000000000
          Top = 83.313571820000000000
          Width = 86.929190000000000000
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
          Top = 83.313571820000000000
          Width = 113.385826770000000000
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
            'N'#176' ')
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
          Left = 200.079011100000000000
          Top = 83.313571820000000000
          Width = 238.315090000000000000
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
            'Compte source')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 437.732691100000000000
          Top = 83.472480000000000000
          Width = 238.488188980000000000
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
            'Compte distination')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 675.488721100000000000
          Top = 83.472480000000000000
          Width = 242.267718980000000000
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
            'Observation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 915.284021100000000000
          Top = 83.472480000000000000
          Width = 132.283488980000000000
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
        object Caisse: TfrxMemoView
          Align = baCenter
          Left = 302.992321665000000000
          Top = 56.692950000000000000
          Width = 440.945166670000000000
          Height = 21.417336670000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Caisse :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 321.260050000000000000
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
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        DataSet = frxTransferListDB
        DataSetName = 'frxTransferListDB'
        RowCount = 0
        object Shape1: TfrxShapeView
          Top = 21.236240000000000000
          Width = 1046.929810000000000000
          Fill.BackColor = 13948116
          Frame.Color = 13948116
        end
        object frxBonLivDBnum_bvfac: TfrxMemoView
          Left = 113.409400000000000000
          Top = 0.779530000000000000
          Width = 85.795241420000000000
          Height = 18.897650000000000000
          DataField = 'date_transfer'
          DataSet = frxTransferListDB
          DataSetName = 'frxTransferListDB'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxTransferListDB."date_transfer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDBclientbvfac: TfrxMemoView
          Left = 9.102350000000000000
          Top = 0.779530000000000000
          Width = 102.047236770000000000
          Height = 18.897650000000000000
          DataField = 'refer_transfer'
          DataSet = frxTransferListDB
          DataSetName = 'frxTransferListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Memo.UTF8W = (
            '[frxTransferListDB."refer_transfer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 199.905690000000000000
          Top = 0.779530000000000000
          Width = 238.488411100000000000
          Height = 18.897650000000000000
          DataField = 'CompteSource'
          DataSet = frxTransferListDB
          DataSetName = 'frxTransferListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxTransferListDB."CompteSource"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 437.559370000000000000
          Top = 0.938438180000000000
          Width = 238.488188976378000000
          Height = 18.897650000000000000
          DataField = 'CompteDis'
          DataSet = frxTransferListDB
          DataSetName = 'frxTransferListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxTransferListDB."CompteDis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 676.315400000000000000
          Top = 0.938438180000000000
          Width = 238.488188980000000000
          Height = 18.897650000000000000
          DataField = 'obser_transfer'
          DataSet = frxTransferListDB
          DataSetName = 'frxTransferListDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxTransferListDB."obser_transfer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 914.331170000000000000
          Top = 0.938438180000000000
          Width = 132.283488980000000000
          Height = 18.897650000000000000
          DataField = 'mont_transfer'
          DataSet = frxTransferListDB
          DataSetName = 'frxTransferListDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxTransferListDB."mont_transfer"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.834662760000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        object Memo20: TfrxMemoView
          Left = 862.110700000000000000
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
          Left = 120.346630000000000000
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
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Number des op'#233'rations :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 952.126470000000000000
          Top = 0.536860940000000000
          Width = 94.488188980000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxTransferListDB."mont_transfer">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 242
    Top = 638
    object L1: TMenuItem
      Caption = 'Listing'
      OnClick = L1Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnShortCut = ApplicationEvents1ShortCut
    Left = 770
    Top = 256
  end
end
