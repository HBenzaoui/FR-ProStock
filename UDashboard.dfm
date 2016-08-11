object DashboardF: TDashboardF
  Left = 0
  Top = 0
  ClientHeight = 566
  ClientWidth = 1045
  Color = 15855852
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1045
    Height = 289
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.001144400448600000
      end
      item
        Value = 49.998855599551390000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = CompanyP
        Row = 0
      end
      item
        Column = 1
        Control = ProduitP
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    object CompanyP: TPanel
      Left = 0
      Top = 0
      Width = 522
      Height = 289
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        522
        289)
      object Label2: TLabel
        Left = 13
        Top = 67
        Width = 114
        Height = 18
        Caption = 'Nom d'#39'enterpris:'
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
      object Label3: TLabel
        Left = 10
        Top = 121
        Width = 77
        Height = 18
        Caption = 'T'#233'l'#233'phone:'
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
      object Label4: TLabel
        Left = 10
        Top = 174
        Width = 51
        Height = 18
        Caption = 'Mobile:'
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
      object Label6: TLabel
        Left = 13
        Top = 228
        Width = 59
        Height = 18
        Caption = 'Adresse:'
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
      object NameCompanyDashBLbl: TLabel
        Left = 43
        Top = 93
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object TelCompanyDashBLbl: TLabel
        Left = 43
        Top = 145
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object MobileCompanyDashBLbl: TLabel
        Left = 43
        Top = 197
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object AdrCompanyDashBLbl: TLabel
        Left = 43
        Top = 249
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NClient: TLabel
        Left = 267
        Top = 51
        Width = 120
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Nombre des Clients:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NClientDashBLbl: TLabel
        Left = 391
        Top = 51
        Width = 49
        Height = 18
        Anchors = [akTop, akRight]
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label12: TLabel
        Left = 300
        Top = 85
        Width = 87
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Meilleur Client:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object TopAchatClientDashBLbl: TLabel
        Left = 391
        Top = 85
        Width = 125
        Height = 42
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label14: TLabel
        Left = 268
        Top = 130
        Width = 119
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Meilleur Versement:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object TopMoneyClientDashBLbl: TLabel
        Left = 391
        Top = 130
        Width = 125
        Height = 40
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label16: TLabel
        Left = 230
        Top = 245
        Width = 157
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Top montant Fournisseur:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label17: TLabel
        Left = 247
        Top = 210
        Width = 140
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Top Achat Fournisseur:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label18: TLabel
        Left = 227
        Top = 182
        Width = 160
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Nombre des Fournisseurs:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NFourDashBLbl: TLabel
        Left = 391
        Top = 182
        Width = 49
        Height = 18
        Anchors = [akTop, akRight]
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object TopAchatFourDashBLbl: TLabel
        Left = 391
        Top = 210
        Width = 125
        Height = 36
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object TopMoneyFourDashBLbl: TLabel
        Left = 391
        Top = 245
        Width = 125
        Height = 31
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 5
        Width = 522
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Enterpris'
        Color = 2497560
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 22
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Image1: TsImage
          Left = 4
          Top = 0
          Width = 40
          Height = 40
          Cursor = crHandPoint
          Align = alLeft
          Center = True
          Picture.Data = {07544269746D617000000000}
          Proportional = True
          ImageIndex = 11
          Images = MainForm.PanelIcons48
          SkinData.SkinSection = 'CHECKBOX'
        end
        object Panel13: TPanel
          Left = 520
          Top = 0
          Width = 2
          Height = 40
          Align = alRight
          BevelOuter = bvNone
          Color = 14933719
          ParentBackground = False
          TabOrder = 0
        end
        object Panel18: TPanel
          Left = 0
          Top = 0
          Width = 4
          Height = 40
          Align = alLeft
          BevelOuter = bvNone
          Color = 14933719
          ParentBackground = False
          TabOrder = 1
        end
      end
      object Panel2: TPanel
        Left = 261
        Top = 176
        Width = 165
        Height = 1
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 22
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object Panel9: TPanel
        Left = 520
        Top = 45
        Width = 2
        Height = 234
        Align = alRight
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 2
      end
      object Panel12: TPanel
        Left = 0
        Top = 279
        Width = 522
        Height = 10
        Align = alBottom
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 3
      end
      object Panel17: TPanel
        Left = 0
        Top = 45
        Width = 4
        Height = 234
        Align = alLeft
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 4
      end
      object Panel26: TPanel
        Left = 0
        Top = 0
        Width = 522
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 5
      end
    end
    object ProduitP: TPanel
      Left = 522
      Top = 0
      Width = 523
      Height = 289
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        523
        289)
      object Label22: TLabel
        Left = 35
        Top = 63
        Width = 117
        Height = 16
        Caption = 'Nombre de Produit:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NProduitDashBLbl: TLabel
        Left = 160
        Top = 63
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label24: TLabel
        Left = 7
        Top = 88
        Width = 145
        Height = 16
        Caption = 'Nombre Total sur Stock:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NProduitTotalDashBLbl: TLabel
        Left = 160
        Top = 88
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label26: TLabel
        Left = 6
        Top = 121
        Width = 66
        Height = 16
        Caption = 'Les Ventes'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NBLDashBLbl: TLabel
        Left = 176
        Top = 141
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label5: TLabel
        Left = 9
        Top = 141
        Width = 159
        Height = 16
        Caption = 'Nombre de Bons Livration:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label7: TLabel
        Left = 41
        Top = 164
        Width = 127
        Height = 16
        Caption = 'N'#176' Factures de Vente:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NFVDashBLbl: TLabel
        Left = 176
        Top = 164
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label9: TLabel
        Left = 12
        Top = 187
        Width = 156
        Height = 16
        Caption = 'N'#176' des Bons de Comptoir :'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NCTRDashBLbl: TLabel
        Left = 176
        Top = 187
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label11: TLabel
        Left = 6
        Top = 217
        Width = 66
        Height = 16
        Caption = 'Les Achats'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label13: TLabel
        Left = 32
        Top = 235
        Width = 136
        Height = 16
        Caption = 'N'#176' des bons r'#233'ception:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NBRDashBLbl: TLabel
        Left = 176
        Top = 235
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object NFADashBLbl: TLabel
        Left = 176
        Top = 259
        Width = 49
        Height = 18
        Caption = '-------'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 18
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Label20: TLabel
        Left = 48
        Top = 259
        Width = 120
        Height = 16
        Caption = 'N'#176' Factures d'#39'Achat:'
        Color = 4207405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4207405
        Font.Height = 16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = []
      end
      object Panel10: TPanel
        Left = 0
        Top = 45
        Width = 2
        Height = 234
        Align = alLeft
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 1
      end
      object Panel11: TPanel
        Left = 0
        Top = 279
        Width = 523
        Height = 10
        Align = alBottom
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 2
      end
      object Panel21: TPanel
        Left = 519
        Top = 45
        Width = 4
        Height = 234
        Align = alRight
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 3
      end
      object Panel27: TPanel
        Left = 0
        Top = 0
        Width = 523
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 4
      end
      object Panel28: TPanel
        Left = 21
        Top = 114
        Width = 165
        Height = 1
        BevelOuter = bvNone
        Color = 467841
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 22
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
      end
      object Panel29: TPanel
        Left = 21
        Top = 210
        Width = 165
        Height = 1
        BevelOuter = bvNone
        Color = 467841
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 22
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
      end
      object CtrTop10PRODUITDBGridEh: TDBGridEh
        AlignWithMargins = True
        Left = 248
        Top = 44
        Width = 268
        Height = 232
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Anchors = [akTop, akRight]
        AutoFitColWidths = True
        BorderStyle = bsNone
        DataSource = DashBTop5produit
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Helvetica LT Std'
        Font.Style = []
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.Tracking = False
        HorzScrollBar.ExtraPanel.NavigatorButtons = []
        HorzScrollBar.ExtraPanel.VisibleItems = []
        HorzScrollBar.SmoothStep = False
        HorzScrollBar.VisibleMode = sbNeverShowEh
        IndicatorOptions = []
        IndicatorTitle.UseGlobalMenu = False
        Options = [dgTitles, dgRowLines]
        OptionsEh = [dghFixed3D]
        ParentFont = False
        ReadOnly = True
        RowHeight = 4
        RowLines = 1
        TabOrder = 7
        TreeViewParams.ShowTreeLines = False
        VertScrollBar.SmoothStep = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        VertScrollBar.Width = 10
        Columns = <
          item
            Alignment = taCenter
            CaseInsensitiveTextSearch = False
            DropDownRows = 5
            DynProps = <>
            EditButtons = <>
            FieldName = 'nomp'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 16
            Font.Name = 'Roboto'
            Font.Style = []
            Footers = <>
            Layout = tlCenter
            Title.Alignment = taCenter
            Title.Caption = 'Top 5 Produits'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 1776156
            Title.Font.Height = 16
            Title.Font.Name = 'Roboto'
            Title.Font.Style = [fsBold]
            Width = 266
            WordWrap = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 5
        Width = 523
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Stock'
        Color = 467841
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = 22
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object sImage1: TsImage
          Left = 2
          Top = 0
          Width = 40
          Height = 40
          Cursor = crHandPoint
          Align = alLeft
          Center = True
          Picture.Data = {07544269746D617000000000}
          Proportional = True
          ImageIndex = 12
          Images = MainForm.PanelIcons48
          SkinData.SkinSection = 'CHECKBOX'
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 2
          Height = 40
          Align = alLeft
          BevelOuter = bvNone
          Color = 14933719
          ParentBackground = False
          TabOrder = 0
        end
        object Panel22: TPanel
          Left = 519
          Top = 0
          Width = 4
          Height = 40
          Align = alRight
          BevelOuter = bvNone
          Color = 14933719
          ParentBackground = False
          TabOrder = 1
        end
      end
    end
  end
  object GridPanel2: TGridPanel
    Left = 0
    Top = 329
    Width = 1045
    Height = 237
    Align = alClient
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.001144400448600000
      end
      item
        Value = 49.998855599551390000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Panel5
        Row = 0
      end
      item
        Column = 1
        Control = Panel6
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 1
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 522
      Height = 237
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel7: TPanel
        Left = 520
        Top = 0
        Width = 2
        Height = 232
        Align = alRight
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 0
      end
      object Panel16: TPanel
        Left = 0
        Top = 232
        Width = 522
        Height = 5
        Align = alBottom
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 1
      end
      object Panel20: TPanel
        Left = 0
        Top = 0
        Width = 4
        Height = 232
        Align = alLeft
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 2
      end
    end
    object Panel6: TPanel
      Left = 522
      Top = 0
      Width = 523
      Height = 237
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 2
        Height = 232
        Align = alLeft
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 0
      end
      object Panel15: TPanel
        Left = 0
        Top = 232
        Width = 523
        Height = 5
        Align = alBottom
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 1
      end
      object Panel24: TPanel
        Left = 519
        Top = 0
        Width = 4
        Height = 232
        Align = alRight
        BevelOuter = bvNone
        Color = 14933719
        ParentBackground = False
        TabOrder = 2
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 289
    Width = 1045
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Charts'
    Color = 10379008
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15722984
    Font.Height = 22
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object sImage2: TsImage
      Left = 4
      Top = 0
      Width = 40
      Height = 40
      Cursor = crHandPoint
      Align = alLeft
      Center = True
      Picture.Data = {07544269746D617000000000}
      Proportional = True
      ImageIndex = 13
      Images = MainForm.PanelIcons48
      SkinData.SkinSection = 'CHECKBOX'
    end
    object Panel19: TPanel
      Left = 0
      Top = 0
      Width = 4
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Color = 14933719
      ParentBackground = False
      TabOrder = 0
    end
    object Panel23: TPanel
      Left = 1043
      Top = 0
      Width = 2
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      Color = 14933719
      ParentBackground = False
      TabOrder = 1
    end
    object Panel25: TPanel
      Left = 1041
      Top = 0
      Width = 2
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      Color = 14933719
      ParentBackground = False
      TabOrder = 2
    end
  end
  object DashBTop5produit: TDataSource
    DataSet = DataModuleF.Top5produit
    Left = 976
    Top = 176
  end
end
