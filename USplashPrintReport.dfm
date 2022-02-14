object FSplashPrintReport: TFSplashPrintReport
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 495
  ClientWidth = 546
  Color = 15527148
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    546
    495)
  PixelsPerInch = 96
  TextHeight = 13
  object PreviewReportPBtn: TAdvToolButton
    Left = 172
    Top = 454
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
    Caption = 'Aper'#231'u'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 18
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    ShowHint = True
    Spacing = -1
    OnClick = PreviewReportPBtnClick
    Version = '1.7.2.0'
    ExplicitTop = 180
    TMSStyle = 0
  end
  object CancelReportPBtn: TAdvToolButton
    Left = 47
    Top = 454
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
    Caption = 'Fermer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ImageIndex = 19
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    ShowHint = True
    Spacing = -1
    OnClick = CancelReportPBtnClick
    Version = '1.7.2.0'
    ExplicitTop = 180
    TMSStyle = 0
  end
  object Image1: TsImage
    Left = 8
    Top = 79
    Width = 50
    Height = 50
    Cursor = crHandPoint
    Center = True
    Picture.Data = {07544269746D617000000000}
    Proportional = True
    ImageIndex = 16
    Images = MainForm.PanelIcons48
    SkinData.SkinSection = 'CHECKBOX'
  end
  object RequiredStarAddCompteSLbl: TLabel
    Left = 392
    Top = 75
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
  object Label5: TLabel
    Left = 68
    Top = 73
    Width = 43
    Height = 18
    Caption = 'Client:'
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
  object RequiredRegCGlbl: TLabel
    Left = 118
    Top = 50
    Width = 279
    Height = 30
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    Caption = 'S'#39'il vous pla'#238't entrer le nom de le Client'
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
  object Label1: TLabel
    Left = 88
    Top = 120
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
    Left = 273
    Top = 120
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
  object PrintReportPBtn: TAdvToolButton
    Left = 297
    Top = 454
    Width = 100
    Height = 30
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    AutoThemeAdapt = False
    Color = 7854350
    ColorTo = 7854350
    ColorDown = 7854350
    ColorDownTo = 7854350
    ColorHot = 8453888
    ColorHotTo = 8453888
    ColorChecked = clNone
    DropDownSplit = False
    Caption = 'Imprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    Rounded = True
    Shaded = False
    Spacing = -1
    OnClick = PrintReportPBtnClick
    Version = '1.7.2.0'
    ExplicitTop = 180
    TMSStyle = 0
  end
  object ListClientFourGBtn: TAdvToolButton
    Left = 399
    Top = 69
    Width = 35
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
    ImageIndex = 58
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    Shaded = False
    ShowHint = True
    Spacing = -1
    OnClick = ListClientFourGBtnClick
    Version = '1.7.2.0'
    TMSStyle = 0
  end
  object NameClientGErrorP: TPanel
    Left = 117
    Top = 66
    Width = 272
    Height = 32
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 8421631
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 5
    Visible = False
    StyleElements = []
  end
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 547
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Caption = 'Impression de Client Situation'
    Color = 4207405
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15722984
    Font.Height = 24
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
    StyleElements = []
  end
  object LineP: TPanel
    Left = 0
    Top = 441
    Width = 547
    Height = 2
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 4
    StyleElements = []
  end
  object NameReportPCbx: TComboBox
    Left = 118
    Top = 68
    Width = 270
    Height = 28
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    Sorted = True
    TabOrder = 0
    OnChange = NameReportPCbxChange
    OnDropDown = NameReportPCbxDropDown
  end
  object DateStartReportPD: TDateTimePicker
    Left = 117
    Top = 117
    Width = 133
    Height = 26
    Date = 42565.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 0.478213819442316900
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DateEndReportPD: TDateTimePicker
    Left = 301
    Top = 117
    Width = 133
    Height = 26
    Date = 42565.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 0.478213819442316900
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object PrintReportClientfrxRprt: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 44504.507512384260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 52
    Top = 260
    Datasets = <
      item
        DataSet = frxPrintReportClientDB
        DataSetName = 'frxPrintReportClientDB'
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
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
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
        Frame.Typ = []
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 182.976500000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object PreiodRX: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 371.023861665000000000
          Top = 34.015770000000000000
          Width = 304.882086670000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#233'riode du :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
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
            'La situation de client')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 208.000000000000000000
          Top = 156.488250000000000000
          Width = 117.165430000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 156.313571820000000000
          Width = 151.385900000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#176' De Pi'#233'ce')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 963.780150000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 321.590551180000000000
          Top = 156.488250000000000000
          Width = 113.590600000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Heure')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 525.669921100000000000
          Top = 156.488250000000000000
          Width = 140.047310000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Montant')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 434.733001100000000000
          Top = 156.488250000000000000
          Width = 94.692950000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Modalit'#233)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 152.196970000000000000
          Top = 156.488250000000000000
          Width = 56.692950000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Source')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 665.756501100000000000
          Top = 156.488250000000000000
          Width = 140.047310000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Versment')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 805.599111100000000000
          Top = 156.488250000000000000
          Width = 140.047310000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Reste')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 944.292061100000000000
          Top = 156.488250000000000000
          Width = 106.031540000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Agent')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 4.094516660000000000
          Top = 37.456710000000000000
          Width = 44.094516670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Client:')
          ParentFont = False
          VAlign = vaCenter
        end
        object NomCRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.409451660000000000
          Top = 55.252010000000000000
          Width = 675.276026670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 76.590600000000000000
          Width = 59.212636670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Address:')
          ParentFont = False
          VAlign = vaCenter
        end
        object AdrCRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.094465000000000000
          Top = 94.385900000000000000
          Width = 675.276026670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 115.385900000000000000
          Width = 59.212636670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tel1/Tel2:')
          ParentFont = False
          VAlign = vaCenter
        end
        object TelCRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.094465000000000000
          Top = 133.181200000000000000
          Width = 675.276026670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 899.528140000000000000
          Top = 2.000000000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
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
          AllowVectorExport = True
          Top = 1.380201430000000000
          Width = 35.095635710000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Agent :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Agent: TfrxMemoView
          AllowVectorExport = True
          Left = 31.795300000000000000
          Top = 1.000000000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 2.267716535433070000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = clNone
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.236240000000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        DataSet = frxPrintReportClientDB
        DataSetName = 'frxPrintReportClientDB'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 21.236240000000000000
          Width = 1046.929810000000000000
          Fill.BackColor = 13948116
          Frame.Color = 13948116
          Frame.Typ = []
        end
        object frxBonLivDBnum_bvfac: TfrxMemoView
          AllowVectorExport = True
          Left = 204.000000000000000000
          Top = 0.954208180000000000
          Width = 116.031481420000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportClientDB."date_bvliv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDBclientbvfac: TfrxMemoView
          AllowVectorExport = True
          Left = 1.881880000000000000
          Top = 0.779530000000000000
          Width = 147.779691100000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPrintReportClientDB."num"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 317.590551180000000000
          Top = 0.954208180000000000
          Width = 113.763755120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportClientDB."time_bvliv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 525.496600000000000000
          Top = 0.954208180000000000
          Width = 140.220465120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportClientDB."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 434.559680000000000000
          Top = 0.954208180000000000
          Width = 94.866271100000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportClientDB."mp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 148.196970000000000000
          Top = 0.954208180000000000
          Width = 59.338531420000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportClientDB."source"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 665.583180000000000000
          Top = 0.954208180000000000
          Width = 140.220465120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportClientDB."versemt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 805.425790000000000000
          Top = 0.954208180000000000
          Width = 140.220465120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportClientDB."rest"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 944.118740000000000000
          Top = 0.954208180000000000
          Width = 106.204695120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportClientDB
          DataSetName = 'frxPrintReportClientDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportClientDB."AgentName"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 525.669921100000000000
          Top = 0.377952760000000000
          Width = 140.047310000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxPrintReportClientDB."total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 378.599111100000000000
          Top = 0.377952760000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Total de la P'#233'riode  :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 1.456710000000000000
          Width = 117.543285120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = -1.740260000000000000
          Top = 1.456710000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Number de reglements :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 378.158171100000000000
          Top = 27.015770000000000000
          Width = 151.181102360000000000
          Height = 30.236240000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Total Credit de Client :')
          ParentFont = False
          VAlign = vaCenter
        end
        object CreditRX: TfrxMemoView
          AllowVectorExport = True
          Left = 528.047620000000000000
          Top = 27.015770000000000000
          Width = 417.685215120000000000
          Height = 30.236240000000000000
          Visible = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = 13948116
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 665.756501100000000000
          Top = 0.377952760000000000
          Width = 140.047310000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxPrintReportClientDB."versemt">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 805.599111100000000000
          Top = 0.377952760000000000
          Width = 140.047310000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxPrintReportClientDB."rest">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object OldCreditCRX: TfrxMemoView
          AllowVectorExport = True
          Left = 111.346630000000000000
          Top = 26.456710000000000000
          Width = 117.543285120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Solde initial :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxPrintReportClientDB: TfrxDBDataset
    UserName = 'frxPrintReportClientDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'num=num'
      'source=source'
      'date_bvliv=date_bvliv'
      'time_bvliv=time_bvliv'
      'total=total'
      'versemt=versemt'
      'rest=rest'
      'mp=mp'
      'agent=agent'
      'AgentName=AgentName')
    DataSource = PrintReportClientDS
    BCDToCurrency = False
    Left = 50
    Top = 312
  end
  object PrintReportClientDS: TDataSource
    DataSet = DataModuleF.ClientSituationQR
    Left = 50
    Top = 362
  end
  object PrintReportFourfrxRprt: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 44504.508049837960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 182
    Top = 262
    Datasets = <
      item
        DataSet = frxPrintReportFourDB
        DataSetName = 'frxPrintReportFourDB'
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
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
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
        Frame.Typ = []
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 182.976500000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object PreiodRX: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 371.023861665000000000
          Top = 34.015770000000000000
          Width = 304.882086670000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#233'riode du :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
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
            'La situation de Fournisseur')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 208.000000000000000000
          Top = 156.488250000000000000
          Width = 117.165430000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 156.313571820000000000
          Width = 151.385900000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#176' De Pi'#233'ce')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 963.780150000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 321.590551180000000000
          Top = 156.488250000000000000
          Width = 113.590600000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Heure')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 525.669921100000000000
          Top = 156.488250000000000000
          Width = 140.047310000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Montant')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 434.733001100000000000
          Top = 156.488250000000000000
          Width = 94.692950000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Modalit'#233)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 152.196970000000000000
          Top = 156.488250000000000000
          Width = 56.692950000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Source')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 665.756501100000000000
          Top = 156.488250000000000000
          Width = 140.047310000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Versment')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 805.599111100000000000
          Top = 156.488250000000000000
          Width = 140.047310000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Reste')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 944.292061100000000000
          Top = 156.488250000000000000
          Width = 106.031540000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Agent')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 4.094516660000000000
          Top = 37.456710000000000000
          Width = 78.110286670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Fournisseur:')
          ParentFont = False
          VAlign = vaCenter
        end
        object NomFRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.409451660000000000
          Top = 55.252010000000000000
          Width = 675.276026670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 76.590600000000000000
          Width = 59.212636670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Address:')
          ParentFont = False
          VAlign = vaCenter
        end
        object AdrFRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.094465000000000000
          Top = 94.385900000000000000
          Width = 675.276026670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 115.385900000000000000
          Width = 59.212636670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tel1/Tel2:')
          ParentFont = False
          VAlign = vaCenter
        end
        object TelFRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.094465000000000000
          Top = 133.181200000000000000
          Width = 675.276026670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 899.528140000000000000
          Top = 2.000000000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
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
          AllowVectorExport = True
          Top = 1.380201430000000000
          Width = 35.095635710000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Agent :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Agent: TfrxMemoView
          AllowVectorExport = True
          Left = 31.795300000000000000
          Top = 1.000000000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 2.267716535433070000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = clNone
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.236240000000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        DataSet = frxPrintReportFourDB
        DataSetName = 'frxPrintReportFourDB'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 21.236240000000000000
          Width = 1046.929810000000000000
          Fill.BackColor = 13948116
          Frame.Color = 13948116
          Frame.Typ = []
        end
        object frxBonLivDBnum_bvfac: TfrxMemoView
          AllowVectorExport = True
          Left = 204.000000000000000000
          Top = 0.954208180000000000
          Width = 116.031481420000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportFourDB."date_barec"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDBclientbvfac: TfrxMemoView
          AllowVectorExport = True
          Left = 1.881880000000000000
          Top = 0.779530000000000000
          Width = 147.779691100000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPrintReportFourDB."num"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 317.590551180000000000
          Top = 0.954208180000000000
          Width = 113.763755120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportFourDB."time_barec"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 525.496600000000000000
          Top = 0.954208180000000000
          Width = 140.220465120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportFourDB."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 434.559680000000000000
          Top = 0.954208180000000000
          Width = 94.866271100000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportFourDB."mp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 148.196970000000000000
          Top = 0.954208180000000000
          Width = 59.338531420000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportFourDB."source"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 665.583180000000000000
          Top = 0.954208180000000000
          Width = 140.220465120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportFourDB."versemt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 805.425790000000000000
          Top = 0.954208180000000000
          Width = 140.220465120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportFourDB."rest"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 944.118740000000000000
          Top = 0.954208180000000000
          Width = 106.204695120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportFourDB
          DataSetName = 'frxPrintReportFourDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportFourDB."AgentName"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 525.669921100000000000
          Top = 0.377952760000000000
          Width = 140.047310000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxPrintReportFourDB."total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 344.583341100000000000
          Top = 0.377952760000000000
          Width = 185.196970000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Total de la P'#233'riode  :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 1.456710000000000000
          Width = 117.543285120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = -1.740260000000000000
          Top = 1.456710000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Number de reglements :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 344.142401100000000000
          Top = 27.015770000000000000
          Width = 185.196872360000000000
          Height = 30.236240000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Total Credit de Fournisseur:')
          ParentFont = False
          VAlign = vaCenter
        end
        object CreditRX: TfrxMemoView
          AllowVectorExport = True
          Left = 528.047620000000000000
          Top = 27.015770000000000000
          Width = 417.685215120000000000
          Height = 30.236240000000000000
          Visible = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = 13948116
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 665.756501100000000000
          Top = 0.377952760000000000
          Width = 140.047310000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxPrintReportFourDB."versemt">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 805.599111100000000000
          Top = 0.377952760000000000
          Width = 140.047310000000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxPrintReportFourDB."rest">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object OldCreditFRX: TfrxMemoView
          AllowVectorExport = True
          Left = 111.346630000000000000
          Top = 26.456710000000000000
          Width = 117.543285120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Solde initial :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxPrintReportFourDB: TfrxDBDataset
    UserName = 'frxPrintReportFourDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'num=num'
      'source=source'
      'date_barec=date_barec'
      'time_barec=time_barec'
      'total=total'
      'versemt=versemt'
      'rest=rest'
      'mp=mp'
      'agent=agent'
      'AgentName=AgentName')
    DataSource = PrintReportFourDS
    BCDToCurrency = False
    Left = 180
    Top = 314
  end
  object PrintReportFourDS: TDataSource
    DataSet = DataModuleF.FourSituationQR
    Left = 180
    Top = 364
  end
  object PrintReportProduitfrxRprt: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 43312.704305358800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 310
    Top = 264
    Datasets = <
      item
        DataSet = frxPrintReportProduitDB
        DataSetName = 'frxPrintReportProduitDB'
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
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
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
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      VGuides.Strings = (
        '7,55906')
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 182.976500000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object PreiodRX: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 371.023861665000000000
          Top = 34.015770000000000000
          Width = 304.882086670000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#233'riode du :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
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
            'Mouvements de Produit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 331.000000000000000000
          Top = 156.488250000000000000
          Width = 102.047310000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 963.780150000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 429.590551180000000000
          Top = 156.488250000000000000
          Width = 94.692950000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Heure')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 523.669921100000000000
          Top = 156.488250000000000000
          Width = 109.811070000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Qt'#233' Mouvement'#233'e')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 136.733001100000000000
          Top = 156.488250000000000000
          Width = 196.740260000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Tiers')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 35.196970000000000000
          Top = 156.488250000000000000
          Width = 102.047231890000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#176' De Pi'#233'ce')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 630.756501100000000000
          Top = 156.488250000000000000
          Width = 103.937007870000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Prix de Revient')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 734.599111100000000000
          Top = 156.488250000000000000
          Width = 103.937007870000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Montant')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 944.292061100000000000
          Top = 156.488250000000000000
          Width = 106.031540000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Agent')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 4.094516660000000000
          Top = 37.456710000000000000
          Width = 47.874046670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Article:')
          ParentFont = False
          VAlign = vaCenter
        end
        object NomPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.409451660000000000
          Top = 55.252010000000000000
          Width = 675.276026670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 76.590600000000000000
          Width = 66.771696670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'R'#233'f'#233'rence:')
          ParentFont = False
          VAlign = vaCenter
        end
        object RefPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.094465000000000000
          Top = 94.385900000000000000
          Width = 675.276026670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 115.385900000000000000
          Width = 55.433106670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Q.Initial:')
          ParentFont = False
          VAlign = vaCenter
        end
        object QutIniPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 8.094465000000000000
          Top = 133.181200000000000000
          Width = 142.362296670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 156.313571820000000000
          Width = 41.779530000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Source')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 838.449451100000000000
          Top = 156.488250000000000000
          Width = 107.716537870000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Marge')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 115.385900000000000000
          Width = 55.433106670000000000
          Height = 13.858276670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Q.Dispo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object QutActuelPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 155.496135000000000000
          Top = 133.181200000000000000
          Width = 142.362296670000000000
          Height = 17.637806670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 532.913730000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 899.528140000000000000
          Top = 2.000000000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
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
          AllowVectorExport = True
          Top = 1.380201430000000000
          Width = 35.095635710000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Agent :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Agent: TfrxMemoView
          AllowVectorExport = True
          Left = 31.795300000000000000
          Top = 1.000000000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 2.267716535433070000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = clNone
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.236240000000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        DataSet = frxPrintReportProduitDB
        DataSetName = 'frxPrintReportProduitDB'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 20.236240000000000000
          Width = 1046.929810000000000000
          Fill.BackColor = 13948116
          Frame.Color = 13948116
          Frame.Typ = []
        end
        object frxBonLivDBnum_bvfac: TfrxMemoView
          AllowVectorExport = True
          Left = 332.133948580000000000
          Top = 0.954208180000000000
          Width = 97.133831420000000000
          Height = 18.897650000000000000
          DataField = 'date'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDBclientbvfac: TfrxMemoView
          AllowVectorExport = True
          Left = 1.881880000000000000
          Top = 0.779530000000000000
          Width = 30.614261100000000000
          Height = 18.897650000000000000
          DataField = 'source'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."source"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 429.417396060000000000
          Top = 0.954208180000000000
          Width = 94.866105120000000000
          Height = 18.897650000000000000
          DataField = 'time'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."time"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 524.496765980000000000
          Top = 0.954208180000000000
          Width = 106.204695120000000000
          Height = 18.897650000000000000
          DataField = 'qut'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."qut"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 136.559680000000000000
          Top = 0.954208180000000000
          Width = 193.134051100000000000
          Height = 18.897650000000000000
          DataField = 'tiers'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."tiers"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 32.196970000000000000
          Top = 0.954208180000000000
          Width = 102.047231890000000000
          Height = 18.897650000000000000
          DataField = 'num'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."num"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 630.583345980000000000
          Top = 0.954208180000000000
          Width = 103.937007874016000000
          Height = 18.897650000000000000
          DataField = 'prixuva'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."prixuva"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 734.425790000000000000
          Top = 0.954208180000000000
          Width = 103.937007870000000000
          Height = 18.897650000000000000
          DataField = 'montant'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."montant"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 944.118740000000000000
          Top = 0.954208180000000000
          Width = 106.204695120000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."AgentName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 838.276130000000000000
          Top = 0.954208180000000000
          Width = 103.937007870000000000
          Height = 18.897650000000000000
          DataField = 'marge'
          DataSet = frxPrintReportProduitDB
          DataSetName = 'frxPrintReportProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportProduitDB."marge"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 168.929190000000000000
        Top = 302.362400000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 211.606370000000000000
          Width = 113.385838980000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 114.803261890000000000
          Width = 96.377938110000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Mouvements:')
          ParentFont = False
          VAlign = vaCenter
        end
        object LastPrixAPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 102.346630000000000000
          Top = 111.456710000000000000
          Width = 98.645635120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 111.456710000000000000
          Width = 101.669291340000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dernier Prix d'#39'Achat :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 140.692950000000000000
          Width = 204.094620000000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 574.488560000000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object LastPrixVDPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 102.346630000000000000
          Top = 142.472480000000000000
          Width = 98.267716540000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Top = 142.472480000000000000
          Width = 102.425196850000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dernier Prix V Detail :')
          ParentFont = False
          VAlign = vaCenter
        end
        object LastPrixVGPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 521.787880000000000000
          Top = 142.472480000000000000
          Width = 98.267716540000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 419.661720000000000000
          Top = 142.472480000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dernier Prix V Gros :')
          ParentFont = False
          VAlign = vaCenter
        end
        object LastPrixVA2PRX: TfrxMemoView
          AllowVectorExport = True
          Left = 945.827460000000000000
          Top = 142.472480000000000000
          Width = 98.267716540000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 831.480830000000000000
          Top = 142.472480000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dernier Prix V Autre 2:')
          ParentFont = False
          VAlign = vaCenter
        end
        object LastPrixVRPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 321.897960000000000000
          Top = 142.472480000000000000
          Width = 98.267716540000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 200.551330000000000000
          Top = 142.472480000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dernier Prix V Revendeur:')
          ParentFont = False
          VAlign = vaCenter
        end
        object LastPrixVA1PRX: TfrxMemoView
          AllowVectorExport = True
          Left = 733.496600000000000000
          Top = 142.472480000000000000
          Width = 98.267716540000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 620.149970000000000000
          Top = 142.472480000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dernier Prix V Autre 1:')
          ParentFont = False
          VAlign = vaCenter
        end
        object AllOutsPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 211.582870000000000000
          Top = 56.015770000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 116.692950000000000000
          Top = 56.015770000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nombre des sorties:')
          ParentFont = False
          VAlign = vaCenter
        end
        object AllInsPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 211.582870000000000000
          Top = 28.031540000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 116.692950000000000000
          Top = 28.031540000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nombre des entries:')
          ParentFont = False
          VAlign = vaCenter
        end
        object QutOutPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 460.677490000000000000
          Top = 56.015770000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 325.315090000000000000
          Top = 56.015770000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total quantit'#233' sorties:')
          ParentFont = False
          VAlign = vaCenter
        end
        object QutInPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 460.205010000000000000
          Top = 28.031540000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 325.315090000000000000
          Top = 28.031540000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total quantit'#233' entires:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 54.252010000000000000
          Width = 795.590585350000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object MontantTotalOutPrx: TfrxMemoView
          AllowVectorExport = True
          Left = 678.551640000000000000
          Top = 56.015770000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 574.661720000000000000
          Top = 56.015770000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valeur de les sorties:')
          ParentFont = False
          VAlign = vaCenter
        end
        object MontantTotalInPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 678.079160000000000000
          Top = 28.031540000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 574.189240000000000000
          Top = 28.031540000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valeur de les entries')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 82.488250000000000000
          Width = 1014.803325350000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 56.015770000000000000
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Les Sorties(Les Ventes):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Top = 28.031540000000000000
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Les Entires(Les Achats):')
          ParentFont = False
          VAlign = vaCenter
        end
        object NQutMovedPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 461.260050000000000000
          Width = 113.385838980000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 327.551330000000000000
          Width = 134.173238110000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantit'#233' mouvement'#233':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 898.370750000000000000
          Top = 56.015770000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxPrintReportProduitDB."marge">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 794.480830000000000000
          Top = 56.015770000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Marge:')
          ParentFont = False
          VAlign = vaCenter
        end
        object AllPTOutsPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 211.582870000000000000
          Top = 83.149660000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 116.692950000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nombre des pertes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object QutPTOutPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 460.677490000000000000
          Top = 83.149660000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 325.315090000000000000
          Top = 83.149660000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total quantit'#233' pertes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object MontantTotalPTOutPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 678.551640000000000000
          Top = 83.149660000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 574.661720000000000000
          Top = 83.149660000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valeur de les pertes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = 109.622140000000000000
          Width = 795.590585350000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 83.149660000000000000
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Les Pertes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = -0.787260000000000000
          Top = 166.724490000000000000
          Width = 1045.039565350000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxPrintReportProduitDB: TfrxDBDataset
    UserName = 'frxPrintReportProduitDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'source=source'
      'num=num'
      'tiers=tiers'
      'date=date'
      'time=time'
      'qut=qut'
      'prixuva=prixuva'
      'montant=montant'
      'marge=marge'
      'agent=agent'
      'AgentName=AgentName')
    DataSource = PrintReportProduitDS
    BCDToCurrency = False
    Left = 308
    Top = 316
  end
  object PrintReportProduitDS: TDataSource
    DataSet = DataModuleF.ProduitMovementQR
    Left = 308
    Top = 366
  end
  object PrintReportAllProduitfrxRprt: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42576.399521435200000000
    ReportOptions.LastChange = 43312.854425798610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 447
    Top = 266
    Datasets = <
      item
        DataSet = frxPrintReportAllProduitDB
        DataSetName = 'frxPrintReportAllProduitDB'
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
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
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
        Frame.Typ = []
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 92.267780000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object PreiodRX: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 371.023861665000000000
          Top = 34.015770000000000000
          Width = 304.882086670000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#233'riode du :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
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
            'Le Mouvements de tous les Produits')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 530.000000000000000000
          Top = 63.488250000000000000
          Width = 56.692888980000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 963.780150000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 586.590551180000000000
          Top = 63.488250000000000000
          Width = 56.692888980000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Heure')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 643.669921100000000000
          Top = 63.488250000000000000
          Width = 64.456710000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Qt'#233' Mouvement'#233'e')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 361.733001100000000000
          Top = 63.488250000000000000
          Width = 170.078727950000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Tiers')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 275.196970000000000000
          Top = 63.488250000000000000
          Width = 86.929116770000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#176' De Pi'#233'ce')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 707.756501100000000000
          Top = 63.488250000000000000
          Width = 79.370056770000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Prix de Revient')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 786.599111100000000000
          Top = 63.488250000000000000
          Width = 79.370056770000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Montant')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 944.292061100000000000
          Top = 63.488250000000000000
          Width = 106.031540000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Agent')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 63.313571820000000000
          Width = 49.338590000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          Memo.UTF8W = (
            ' R'#233'ference')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 48.236240000000000000
          Top = 63.313571820000000000
          Width = 200.519790000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#233'signation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 247.000000000000000000
          Top = 63.313571820000000000
          Width = 34.220470000000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haCenter
          Memo.UTF8W = (
            'Source')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 865.126631100000000000
          Top = 63.488250000000000000
          Width = 79.370056770000000000
          Height = 28.174678180000000000
          AllowExpressions = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Gotham Rounded Light'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Marge')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 415.748300000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 899.528140000000000000
          Top = 2.000000000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
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
          AllowVectorExport = True
          Top = 1.380201430000000000
          Width = 35.095635710000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Agent :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Agent: TfrxMemoView
          AllowVectorExport = True
          Left = 31.795300000000000000
          Top = 1.000000000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 2.267716535433070000
          Fill.BackColor = 13948116
          Fill.ForeColor = clNone
          Frame.Color = clNone
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.236240000000000000
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        DataSet = frxPrintReportAllProduitDB
        DataSetName = 'frxPrintReportAllProduitDB'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 21.236240000000000000
          Width = 1046.929810000000000000
          Fill.BackColor = 13948116
          Frame.Color = 13948116
          Frame.Typ = []
        end
        object frxBonLivDBnum_bvfac: TfrxMemoView
          AllowVectorExport = True
          Left = 531.133948580000000000
          Top = 0.954208180000000000
          Width = 56.692888980000000000
          Height = 18.897650000000000000
          DataField = 'date'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxBonLivDBclientbvfac: TfrxMemoView
          AllowVectorExport = True
          Left = 254.472445820000000000
          Top = 0.779530000000000000
          Width = 19.275578350000000000
          Height = 18.897650000000000000
          DataField = 'source'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."source"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 586.417396060000000000
          Top = 0.954208180000000000
          Width = 56.692888980000000000
          Height = 18.897650000000000000
          DataField = 'time'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."time"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 643.496765980000000000
          Top = 0.954208180000000000
          Width = 64.629865120000000000
          Height = 18.897650000000000000
          DataField = 'qut'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."qut"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 360.559680000000000000
          Top = 0.954208180000000000
          Width = 170.078727950000000000
          Height = 18.897650000000000000
          DataField = 'tiers'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."tiers"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 275.196967560000000000
          Top = 0.954208180000000000
          Width = 86.929121650000000000
          Height = 18.897650000000000000
          DataField = 'num'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."num"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 707.583345980000000000
          Top = 0.954208180000000000
          Width = 79.370056770000000000
          Height = 18.897650000000000000
          DataField = 'prixuva'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."prixuva"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 786.425790000000000000
          Top = 0.954208180000000000
          Width = 79.370056770000000000
          Height = 18.897650000000000000
          DataField = 'montant'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."montant"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 944.118740000000000000
          Top = 0.954208180000000000
          Width = 106.204695120000000000
          Height = 18.897650000000000000
          DataField = 'AgentName'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."AgentName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 53.897650000000000000
          Top = 0.779530000000000000
          Width = 200.314963070000000000
          Height = 18.897650000000000000
          DataField = 'nom_p'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."nom_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = -0.118120000000000000
          Top = 0.779530000000000000
          Width = 53.291348350000000000
          Height = 18.897650000000000000
          DataField = 'refer_p'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."refer_p"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 864.953310000000000000
          Top = 0.954208180000000000
          Width = 79.370056770000000000
          Height = 18.897650000000000000
          DataField = 'marge'
          DataSet = frxPrintReportAllProduitDB
          DataSetName = 'frxPrintReportAllProduitDB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPrintReportAllProduitDB."marge"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.732373780000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 211.606370000000000000
          Width = 113.385838980000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 114.803261890000000000
          Width = 96.377938110000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Mouvements:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 574.488560000000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object AllOutsPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 211.582870000000000000
          Top = 56.015770000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 116.692950000000000000
          Top = 56.015770000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nombre des sorties:')
          ParentFont = False
          VAlign = vaCenter
        end
        object AllInsPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 211.582870000000000000
          Top = 28.031540000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 116.692950000000000000
          Top = 28.031540000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nombre des entries:')
          ParentFont = False
          VAlign = vaCenter
        end
        object QutOutPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 460.677490000000000000
          Top = 56.015770000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 325.315090000000000000
          Top = 56.015770000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total quantit'#233' sorties:')
          ParentFont = False
          VAlign = vaCenter
        end
        object QutInPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 460.205010000000000000
          Top = 28.031540000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 325.315090000000000000
          Top = 28.031540000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total quantit'#233' entires:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 54.252010000000000000
          Width = 795.590585350000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object MontantTotalOutPrx: TfrxMemoView
          AllowVectorExport = True
          Left = 678.551640000000000000
          Top = 56.015770000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 574.661720000000000000
          Top = 56.015770000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valeur de les sorties:')
          ParentFont = False
          VAlign = vaCenter
        end
        object MontantTotalInPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 678.079160000000000000
          Top = 28.031540000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 574.189240000000000000
          Top = 28.031540000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valeur de les entries')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 82.488250000000000000
          Width = 1014.803325350000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Top = 56.015770000000000000
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Les Sorties(Les Ventes):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Top = 28.031540000000000000
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Les Entires(Les Achats):')
          ParentFont = False
          VAlign = vaCenter
        end
        object NQutMovedPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 461.260050000000000000
          Width = 113.385838980000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 327.551330000000000000
          Width = 134.173238110000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantit'#233' mouvement'#233':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 898.370750000000000000
          Top = 56.015770000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxPrintReportAllProduitDB."marge">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 794.480830000000000000
          Top = 56.015770000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Marge:')
          ParentFont = False
          VAlign = vaCenter
        end
        object AllPTOutsPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 211.582870000000000000
          Top = 83.149660000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 116.692950000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nombre des pertes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object QutPTOutPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 460.677490000000000000
          Top = 83.149660000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 325.315090000000000000
          Top = 83.149660000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total quantit'#233' pertes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object MontantTotalPTOutPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 678.551640000000000000
          Top = 83.149660000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 574.661720000000000000
          Top = 83.149660000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valeur de les pertes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = 109.622140000000000000
          Width = 795.590585350000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 83.149660000000000000
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Les Pertes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Top = 137.842610000000000000
          Width = 793.701300000000000000
          Height = 1.889763780000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object TotalQutIniPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 211.582870000000000000
          Top = 111.606370000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 116.692950000000000000
          Top = 111.606370000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Qt'#233' Initial:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Top = 111.606370000000000000
          Width = 115.275590550000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 13948116
          HAlign = haRight
          Memo.UTF8W = (
            'Stock:')
          ParentFont = False
          VAlign = vaCenter
        end
        object TotalQutActuelPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 460.929500000000000000
          Top = 111.606370000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 325.315090000000000000
          Top = 111.606370000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Qt'#233' Dispo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object ValueStockPRX: TfrxMemoView
          AllowVectorExport = True
          Left = 678.551640000000000000
          Top = 111.606370000000000000
          Width = 113.763755120000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 574.661720000000000000
          Top = 111.606370000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4868682
          Font.Height = -9
          Font.Name = 'Helvetica LT Std'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valeur de stock:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxPrintReportAllProduitDB: TfrxDBDataset
    UserName = 'frxPrintReportAllProduitDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'refer_p=refer_p'
      'nom_p=nom_p'
      'source=source'
      'num=num'
      'tiers=tiers'
      'date=date'
      'time=time'
      'qut=qut'
      'prixuva=prixuva'
      'montant=montant'
      'marge=marge'
      'agent=agent'
      'AgentName=AgentName')
    DataSource = PrintReportAllProduitDS
    BCDToCurrency = False
    Left = 445
    Top = 318
  end
  object PrintReportAllProduitDS: TDataSource
    DataSet = DataModuleF.AllProduitMovementQR
    Left = 445
    Top = 370
  end
end
