object FSplashPrinting: TFSplashPrinting
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FSplashPrinting'
  ClientHeight = 291
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  DesignSize = (
    546
    291)
  PixelsPerInch = 96
  TextHeight = 13
  object NameAddCompteSLbl: TLabel
    Left = 56
    Top = 112
    Width = 86
    Height = 19
    Caption = 'Imprimante:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Image1: TsImage
    Left = 5
    Top = 122
    Width = 50
    Height = 50
    Center = True
    Picture.Data = {07544269746D617000000000}
    Proportional = True
    ImageIndex = 10
    Images = MainForm.PanelIcons48
    SkinData.SkinSection = 'CHECKBOX'
  end
  object CompteAddCompteSLbl: TLabel
    Left = 87
    Top = 161
    Width = 52
    Height = 18
    Caption = 'Format:'
    Color = 4207405
    FocusControl = FormatFPrintingCbx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Label1: TLabel
    Left = 103
    Top = 64
    Width = 36
    Height = 19
    Caption = 'Titre:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object Label2: TLabel
    Left = 43
    Top = 209
    Width = 99
    Height = 19
    Caption = 'Prix de vente:'
    Color = 4207405
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 19
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleElements = []
  end
  object OKFPrintingBtn: TAdvToolButton
    Tag = 2
    Left = 180
    Top = 255
    Width = 187
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    ShowHint = True
    Spacing = -1
    OnClick = OKFPrintingBtnClick
    Version = '1.6.1.2'
    ExplicitTop = 259
    TMSStyle = 0
  end
  object PrintFPrintingBtn: TsSpeedButton
    Left = 507
    Top = 204
    Width = 27
    Height = 27
    Cursor = crHandPoint
    Hint = 'Modifer'
    ParentShowHint = False
    ShowHint = True
    OnClick = PrintFPrintingBtnClick
    SkinData.SkinSection = 'SPEEDBUTTON'
    Images = MainForm.PanelIcons24
    ImageIndex = 48
  end
  object SetDeafultFPrintingBtn: TAdvToolButton
    Left = 323
    Top = 133
    Width = 25
    Height = 26
    Cursor = crHandPoint
    Hint = 'D'#233'finir par d'#233'faut'
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
    ImageIndex = 17
    Images = MainForm.PanelIcons24
    ParentFont = False
    ParentShowHint = False
    Rounded = True
    Shaded = False
    ShowHint = True
    Spacing = -1
    Visible = False
    OnClick = SetDeafultFPrintingBtnClick
    Version = '1.6.1.2'
    TMSStyle = 0
  end
  object PrintTicketfrxPreview: TfrxPreview
    Left = 354
    Top = 48
    Width = 208
    Height = 157
    ActiveFrameColor = 15722984
    BackColor = 15722984
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderStyle = bsNone
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Caption = 'Impression des '#201'tiquettes'
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
    TabOrder = 5
    StyleElements = []
  end
  object LineP: TPanel
    Left = 1
    Top = 246
    Width = 547
    Height = 2
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 6
    StyleElements = []
  end
  object FormatFPrintingCbx: TComboBox
    Left = 145
    Top = 157
    Width = 212
    Height = 26
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = '40X20 Code 128 avec prix'
    OnChange = FormatFPrintingCbxChange
    Items.Strings = (
      '40X20 Code 128 avec prix'
      '40X20 Code 128 sans prix'
      '40X20 Code 128 sans tous'
      '45X35 Code 128 avec prix'
      '45X35 Code 128 sans prix')
  end
  object TitleFPrintingEdt: TEdit
    Left = 145
    Top = 60
    Width = 212
    Height = 26
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvSpace
    Ctl3D = True
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Roboto'
    Font.Style = []
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    StyleElements = [seClient, seBorder]
    OnChange = TitleFPrintingEdtChange
  end
  object PrintersListFPrintingCbx: TComboBox
    Left = 145
    Top = 108
    Width = 212
    Height = 26
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object PrixFPrintingCbx: TComboBox
    Left = 145
    Top = 205
    Width = 212
    Height = 26
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'Prix D'#233'tail'
    OnChange = PrixFPrintingCbxChange
    Items.Strings = (
      'Prix D'#233'tail'
      'Prix Revendeur'
      'Prix Gros'
      'Prix Autre 1'
      'Prix Autre 2')
  end
  object NumberPagesPrintingSpn: TsSpinEdit
    Left = 364
    Top = 205
    Width = 137
    Height = 21
    Alignment = taRightJustify
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 18
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
    Text = '1'
    MaxValue = 0
    MinValue = 1
    Value = 1
  end
  object PrintTicketfrxRprt: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = PrintTicketfrxPreview
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoClose, pbNoFullScreen, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'POSTEK C168 200s'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41864.469234849500000000
    ReportOptions.LastChange = 42585.006179826400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure TITLEOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//TITLE.TEXT:=<TITRE>;'
      'end;'
      ''
      'procedure PrixOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//IF <PV>=1 then '
      
        '//Prix.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.00'#39',<frxProduitD' +
        'B."prixvd_p">)+'#39' DA'#39';'
      
        '//IF <PV>=2 then Prix.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.0' +
        '0'#39',<S_ET1."PV2_TTC">)+'#39' DA'#39';'
      
        '//IF <PV>=3 then Prix.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.0' +
        '0'#39',<S_ET1."PV3_TTC">)+'#39' DA'#39';'
      'end;'
      ''
      'procedure DATE_EXPOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//IF <S_ET1."DATE_PER">=0  THEN DATE_EXP.TEXT:='#39#39
      
        '  //                       ELSE DATE_EXP.TEXT:='#39'Exp: '#39'+ DateToSt' +
        'r(<S_ET1."DATE_PER">);'
      ''
      ''
      'end;'
      ''
      'procedure BAR_CODEOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//BAR_CODE.TEXT:=<CODE_BARRE>;'
      ''
      'end;'
      ''
      'begin'
      'end.')
    Left = 40
    Top = 240
    Datasets = <
      item
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
      end>
    Variables = <
      item
        Name = 'PV'
        Value = '3'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 20.000000000000000000
      PaperSize = 256
      HGuides.Strings = (
        '22.67718')
      object PRODUIT: TfrxMemoView
        Align = baCenter
        Left = 1.322881025000000000
        Top = 10.582677170000000000
        Width = 148.535437950000000000
        Height = 13.228346460000000000
        DataField = 'nom_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxProduitDB."nom_p"]')
        ParentFont = False
      end
      object Name: TfrxMemoView
        Width = 152.314967950000000000
        Height = 10.582677170000000000
        OnBeforePrint = 'TITLEOnBeforePrint'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        ParentFont = False
      end
      object Prix: TfrxMemoView
        Top = 59.031540000000000000
        Width = 151.181200000000000000
        Height = 16.629926140000000000
        OnBeforePrint = 'PPA2OnBeforePrint'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object BAR_CODE: TfrxBarCodeView
        Align = baCenter
        Left = 36.090600000000000000
        Top = 25.338590000000000000
        Width = 79.000000000000000000
        Height = 33.259842520000000000
        OnBeforePrint = 'BAR_CODEOnBeforePrint'
        BarType = bcCode128
        DataField = 'codebar_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Expression = '<frxProduitDB."codebar_p">'
        HAlign = haCenter
        Rotation = 0
        ShowText = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
      end
    end
  end
  object frxProduitDB: TfrxDBDataset
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
    DataSet = MainForm.ProduitTable
    BCDToCurrency = False
    Left = 16
    Top = 56
  end
  object frxReport2: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = PrintTicketfrxPreview
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoClose, pbNoFullScreen, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'POSTEK C168 200s'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41864.469234849500000000
    ReportOptions.LastChange = 42585.006602650460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure TITLEOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//TITLE.TEXT:=<TITRE>;'
      'end;'
      ''
      'procedure PPA2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//IF <PV>=1 then ppa2.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.0' +
        '0'#39',<S_ET1."PV1_TTC">)+'#39' DA'#39';'
      
        '//IF <PV>=2 then ppa2.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.0' +
        '0'#39',<S_ET1."PV2_TTC">)+'#39' DA'#39';'
      
        '//IF <PV>=3 then ppa2.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.0' +
        '0'#39',<S_ET1."PV3_TTC">)+'#39' DA'#39';'
      'end;'
      ''
      'procedure DATE_EXPOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//IF <S_ET1."DATE_PER">=0  THEN DATE_EXP.TEXT:='#39#39
      
        '  //                       ELSE DATE_EXP.TEXT:='#39'Exp: '#39'+ DateToSt' +
        'r(<S_ET1."DATE_PER">);'
      ''
      ''
      'end;'
      ''
      'procedure BAR_CODEOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//BAR_CODE.TEXT:=<CODE_BARRE>;'
      ''
      'end;'
      ''
      'begin'
      'end.')
    Left = 360
    Top = 240
    Datasets = <
      item
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
      end>
    Variables = <
      item
        Name = 'PV'
        Value = '3'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 20.000000000000000000
      PaperSize = 256
      HGuides.Strings = (
        '30.23624')
      object Name: TfrxMemoView
        Width = 152.314967950000000000
        Height = 10.582677170000000000
        OnBeforePrint = 'TITLEOnBeforePrint'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        ParentFont = False
      end
      object BAR_CODE: TfrxBarCodeView
        Align = baCenter
        Left = 36.090600000000000000
        Top = 15.118120000000000000
        Width = 79.000000000000000000
        Height = 59.716552520000000000
        OnBeforePrint = 'BAR_CODEOnBeforePrint'
        BarType = bcCode128
        DataField = 'codebar_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Expression = '<frxProduitDB."codebar_p">'
        HAlign = haCenter
        Rotation = 0
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = PrintTicketfrxPreview
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoClose, pbNoFullScreen, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'POSTEK C168 200s'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41864.469234849500000000
    ReportOptions.LastChange = 42585.006428055550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure TITLEOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//TITLE.TEXT:=<TITRE>;'
      'end;'
      ''
      'procedure PPA2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '//IF <PV>=1 then ppa2.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.0' +
        '0'#39',<S_ET1."PV1_TTC">)+'#39' DA'#39';'
      
        '//IF <PV>=2 then ppa2.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.0' +
        '0'#39',<S_ET1."PV2_TTC">)+'#39' DA'#39';'
      
        '//IF <PV>=3 then ppa2.text:='#39'Prix:'#39'+FormatFloat('#39'# ### ### ##0.0' +
        '0'#39',<S_ET1."PV3_TTC">)+'#39' DA'#39';'
      'end;'
      ''
      'procedure DATE_EXPOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//IF <S_ET1."DATE_PER">=0  THEN DATE_EXP.TEXT:='#39#39
      
        '  //                       ELSE DATE_EXP.TEXT:='#39'Exp: '#39'+ DateToSt' +
        'r(<S_ET1."DATE_PER">);'
      ''
      ''
      'end;'
      ''
      'procedure BAR_CODEOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//BAR_CODE.TEXT:=<CODE_BARRE>;'
      ''
      'end;'
      ''
      'begin'
      'end.')
    Left = 120
    Top = 240
    Datasets = <
      item
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
      end>
    Variables = <
      item
        Name = 'PV'
        Value = '3'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 20.000000000000000000
      PaperSize = 256
      HGuides.Strings = (
        '30.23624')
      object PRODUIT: TfrxMemoView
        Align = baCenter
        Left = 1.322881025000000000
        Top = 10.582677170000000000
        Width = 148.535437950000000000
        Height = 17.007876460000000000
        DataField = 'nom_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxProduitDB."nom_p"]')
        ParentFont = False
      end
      object Name: TfrxMemoView
        Width = 152.314967950000000000
        Height = 10.582677170000000000
        OnBeforePrint = 'TITLEOnBeforePrint'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        ParentFont = False
      end
      object BAR_CODE: TfrxBarCodeView
        Align = baCenter
        Left = 36.090600000000000000
        Top = 29.338590000000000000
        Width = 79.000000000000000000
        Height = 44.598432520000000000
        OnBeforePrint = 'BAR_CODEOnBeforePrint'
        BarType = bcCode128
        DataField = 'codebar_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Expression = '<frxProduitDB."codebar_p">'
        HAlign = haCenter
        Rotation = 0
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = PrintTicketfrxPreview
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoClose, pbNoFullScreen, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41864.632815740700000000
    ReportOptions.LastChange = 42585.026537824070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      'end.')
    Left = 444
    Top = 240
    Datasets = <
      item
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
      end>
    Variables = <
      item
        Name = 'PV'
        Value = '3'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PAGE1: TfrxReportPage
      PaperWidth = 45.000000000000000000
      PaperHeight = 35.000000000000000000
      PaperSize = 256
      object PRODUIT: TfrxMemoView
        Align = baCenter
        Left = 1.889765000000000000
        Top = 15.118110236220500000
        Width = 166.299320000000000000
        Height = 32.503937010000000000
        DataField = 'nom_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxProduitDB."nom_p"]')
        ParentFont = False
      end
      object Name: TfrxMemoView
        Align = baCenter
        Top = 1.779530000000000000
        Width = 170.078850000000000000
        Height = 12.850393700000000000
        OnBeforePrint = 'TITLEOnBeforePrint'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        ParentFont = False
      end
      object Prix: TfrxMemoView
        Align = baCenter
        Left = 1.889765000000000000
        Top = 102.606370000000000000
        Width = 166.299320000000000000
        Height = 27.968511260000000000
        OnBeforePrint = 'PPA2OnBeforePrint'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        DisplayFormat.FormatStr = '%2.2n'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object BAR_CODE: TfrxBarCodeView
        Align = baCenter
        Left = 29.039425000000000000
        Top = 48.795300000000000000
        Width = 112.000000000000000000
        Height = 52.913398030000000000
        OnBeforePrint = 'BAR_CODEOnBeforePrint'
        BarType = bcCode128
        DataField = 'codebar_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Expression = '<frxProduitDB."codebar_p">'
        HAlign = haCenter
        Rotation = 0
        Text = '00000000000000'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
      end
    end
  end
  object frxReport4: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = PrintTicketfrxPreview
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoClose, pbNoFullScreen, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41864.632815740700000000
    ReportOptions.LastChange = 42585.006930567130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      'end.')
    Left = 512
    Top = 240
    Datasets = <
      item
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
      end>
    Variables = <
      item
        Name = 'PV'
        Value = '3'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PAGE1: TfrxReportPage
      PaperWidth = 45.000000000000000000
      PaperHeight = 35.000000000000000000
      PaperSize = 256
      object PRODUIT: TfrxMemoView
        Align = baCenter
        Left = 1.889765000000000000
        Top = 15.874015748031500000
        Width = 166.299320000000000000
        Height = 36.283467010000000000
        DataField = 'nom_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxProduitDB."nom_p"]')
        ParentFont = False
      end
      object Name: TfrxMemoView
        Align = baCenter
        Top = 1.779530000000000000
        Width = 170.078850000000000000
        Height = 12.850393700000000000
        OnBeforePrint = 'TITLEOnBeforePrint'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Helvetica LT Std'
        Font.Style = [fsBold, fsUnderline]
        HAlign = haCenter
        ParentFont = False
      end
      object BAR_CODE: TfrxBarCodeView
        Align = baCenter
        Left = 29.039425000000000000
        Top = 53.795300000000000000
        Width = 112.000000000000000000
        Height = 75.590578030000000000
        OnBeforePrint = 'BAR_CODEOnBeforePrint'
        BarType = bcCode128
        DataField = 'codebar_p'
        DataSet = frxProduitDB
        DataSetName = 'frxProduitDB'
        Expression = '<frxProduitDB."codebar_p">'
        HAlign = haCenter
        Rotation = 0
        Text = '00000000000000'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
      end
    end
  end
end
