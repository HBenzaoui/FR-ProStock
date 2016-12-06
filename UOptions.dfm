object FOptions: TFOptions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 674
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TopP: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Configurations'
    Color = 4207405
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15722984
    Font.Height = 27
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    StyleElements = []
  end
  object S1: TPanel
    Left = 0
    Top = 348
    Width = 448
    Height = 4
    BevelOuter = bvNone
    Color = 15658734
    ParentBackground = False
    TabOrder = 1
  end
  object P1: TPanel
    Left = 0
    Top = 357
    Width = 448
    Height = 276
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      448
      276)
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 107
      Height = 24
      Caption = 'Impression'
      Color = 4207405
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 24
      Font.Name = 'Helvetica LT Std'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object AutoImL: TLabel
      Left = 20
      Top = 36
      Width = 185
      Height = 16
      Caption = 'Impression Auto sur Comptoir:'
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
    object CaiseeLbl: TLabel
      Left = 20
      Top = 60
      Width = 196
      Height = 16
      Caption = 'Imprimante de caisse par d'#233'faut:'
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
    object Label2: TLabel
      Left = 20
      Top = 120
      Width = 224
      Height = 16
      Caption = 'Imprimante de Code barre par d'#233'faut:'
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
    object Label3: TLabel
      Left = 20
      Top = 169
      Width = 176
      Height = 16
      Caption = 'Format d'#39#233'tiquette par d'#233'faut:'
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
    object Label4: TLabel
      Left = 20
      Top = 217
      Width = 210
      Height = 16
      Caption = 'Prix de vente d'#39#233'tiquette par d'#233'faut:'
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
    object LineP: TPanel
      Left = 8
      Top = 115
      Width = 434
      Height = 1
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 7854350
      DoubleBuffered = True
      ParentBackground = False
      ParentDoubleBuffered = False
      TabOrder = 2
      StyleElements = []
    end
    object APrintOptionGSlider: TsSlider
      Left = 220
      Top = 38
      Width = 37
      Height = 15
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
      TabOrder = 0
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
    object PrintersListFOptionCaisseCbx: TComboBox
      Left = 35
      Top = 81
      Width = 381
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object PrintersListFOptionCodeBCbx: TComboBox
      Left = 35
      Top = 141
      Width = 381
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object FormatFOptionCodeBCbx: TComboBox
      Left = 35
      Top = 190
      Width = 381
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        '40X20 Code 128 avec prix'
        '40X20 Code 128 sans prix'
        '40X20 Code 128 sans tous'
        '45X35 Code 128 avec prix'
        '45X35 Code 128 sans prix')
    end
    object PrixVenteListFOptionCodeBCbx: TComboBox
      Left = 35
      Top = 238
      Width = 381
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        'Prix D'#233'tail'
        'Prix Revendeur'
        'Prix Gros'
        'Prix Autre 1'
        'Prix Autre 2')
    end
  end
  object P2: TPanel
    Left = 0
    Top = 51
    Width = 448
    Height = 303
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Label5: TLabel
      Left = 8
      Top = 0
      Width = 99
      Height = 24
      Caption = 'Enterprise'
      Color = 4207405
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 24
      Font.Name = 'Helvetica LT Std'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 21
      Top = 32
      Width = 107
      Height = 16
      Caption = 'Nom d'#39'enterprise:'
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
      Left = 61
      Top = 72
      Width = 67
      Height = 16
      Caption = 'T'#233'l'#233'phone:'
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
    object Label8: TLabel
      Left = 84
      Top = 112
      Width = 44
      Height = 16
      Caption = 'Mobile:'
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
    object Label9: TLabel
      Left = 76
      Top = 152
      Width = 52
      Height = 16
      Caption = 'Adresse:'
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
    object ImageDeleteProduitGBtn: TAdvToolButton
      Left = 416
      Top = 213
      Width = 26
      Height = 30
      Cursor = crHandPoint
      AutoThemeAdapt = False
      BorderColor = clWhite
      BorderDownColor = 7854350
      BorderHotColor = 15970832
      Color = clWhite
      ColorDown = 7854350
      ColorHot = clBtnFace
      ColorChecked = clNone
      DropDownSplit = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 23
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      Shaded = False
      ShowHint = True
      Spacing = -1
      Visible = False
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object ImageEditProduitGBtn: TAdvToolButton
      Left = 416
      Top = 184
      Width = 26
      Height = 30
      Cursor = crHandPoint
      AutoThemeAdapt = False
      BorderColor = clWhite
      BorderDownColor = 7854350
      BorderHotColor = 15970832
      Color = clWhite
      ColorDown = 7854350
      ColorHot = clBtnFace
      ColorChecked = clNone
      DropDownSplit = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4207405
      Font.Height = 18
      Font.Name = 'Roboto'
      Font.Style = []
      ImageIndex = 22
      Images = MainForm.PanelIcons24
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      Shaded = False
      ShowHint = True
      Spacing = -1
      Visible = False
      Version = '1.6.1.2'
      TMSStyle = 0
    end
    object Label10: TLabel
      Left = 91
      Top = 230
      Width = 37
      Height = 16
      Caption = 'Logo :'
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
    object Shape1: TShape
      Left = 133
      Top = 184
      Width = 284
      Height = 108
      Pen.Color = 7854350
    end
    object ImageCompanyOptionImg: TsImage
      Left = 134
      Top = 185
      Width = 282
      Height = 106
      Cursor = crHandPoint
      Center = True
      Picture.Data = {07544269746D617000000000}
      Proportional = True
      OnClick = ImageCompanyOptionImgClick
      OnMouseEnter = ImageCompanyOptionImgMouseEnter
      OnMouseLeave = ImageCompanyOptionImgMouseLeave
      Blend = 40
      ImageIndex = 0
      Images = sAlphaImageList1
      Grayed = True
      SkinData.SkinSection = 'CHECKBOX'
    end
    object NameCompanyOptionEdt: TEdit
      Left = 134
      Top = 28
      Width = 282
      Height = 26
      Alignment = taCenter
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
    end
    object TelCompanyOptionEdt: TEdit
      Left = 134
      Top = 68
      Width = 282
      Height = 26
      Alignment = taCenter
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
    end
    object MobCompanyOptionEdt: TEdit
      Left = 134
      Top = 108
      Width = 282
      Height = 26
      Alignment = taCenter
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
    end
    object AdrCompanyOptionEdt: TEdit
      Left = 134
      Top = 148
      Width = 282
      Height = 26
      Alignment = taCenter
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Helvetica LT Std'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 4
    Height = 593
    Align = alLeft
    BevelOuter = bvNone
    Color = 15658734
    ParentBackground = False
    TabOrder = 4
  end
  object Panel3: TPanel
    Left = 443
    Top = 45
    Width = 5
    Height = 593
    Align = alRight
    BevelOuter = bvNone
    Color = 15658734
    ParentBackground = False
    TabOrder = 5
  end
  object Panel4: TPanel
    Left = 0
    Top = 638
    Width = 448
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Color = 4207405
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15722984
    Font.Height = 27
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 6
    StyleElements = []
    DesignSize = (
      448
      36)
    object OKFPrintingBtn: TAdvToolButton
      Tag = 2
      Left = 130
      Top = 3
      Width = 187
      Height = 30
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
      AutoThemeAdapt = False
      BorderColor = 7854350
      BorderDownColor = 7854350
      BorderHotColor = 15970832
      Color = 7854350
      ColorTo = 7854350
      ColorDown = 7854350
      ColorDownTo = 7854350
      ColorHot = 8453888
      ColorHotTo = 8453888
      ColorChecked = clNone
      DropDownSplit = False
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 20
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Rounded = True
      ShowHint = True
      Spacing = -1
      OnClick = OKFPrintingBtnClick
      Version = '1.6.1.2'
      TMSStyle = 0
    end
  end
  object OpenPictureDialogProduitG: TOpenPictureDialog
    Filter = 'JPEG graphics|*.jpg'
    Left = 36
    Top = 207
  end
  object sAlphaImageList1: TsAlphaImageList
    Height = 96
    Width = 96
    Items = <
      item
        ImageFormat = ifPNG
        ImageName = 'add_image-96'
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000005
          034944415478DAED9DDD4B145118C6D7EBE8BE3F60FF8B6E22C3B52805C23BF1
          26224010A8AB8C0CA12040DD2C2CB3C4EF3449934DA02FD5D24A8BA828B5B515
          4BD3483228F5FAEDBCC3CEB68CBB3B1FE79C993933AFF0C0B0F311BCBF7CDE73
          9E739C8D004084E49DA808048000900800012011000240220004804400080089
          001000925F01343C9D8F32D5312598D69920E45A4FD7026B129506803DBC88A9
          8669878A9E573BE91A150905902EFE2815D8B246AD42B00AA0868A6A5B354200
          A43D9F6CC7991D454500A8A3623A569D0800092AA463254400A0A126C7105504
          002A24870800012000048000A8A1DBAF5760E0E32FB89FFCAB098FF133022059
          5726937077EE373C58DAC9293C87D71000492A54FC6C08044092ED98155F9713
          3B220026429FB70A00AF25008285CDD62A00BC3654009A27173511000FD434B6
          0037675634E1315990CBBAF16219DA665735E13135611775F5592A537C5DF819
          0D43DDB09EF1CF9AED18016856C4CED1444CA6C698F5BCFCBAABF8192B62E7F0
          1A8A226459CF542A6FF133563495A2304E86E29AF5AC9A02C06BE292AC28B400
          1AD17A5E7D332D7EC68AD8B58D63044098AE4D2D592EBE2EBC870088B09E8924
          B4CDACDA0680F7E0BD0480CB7A16A0D586F518D5AA59D1020170AA96E925C7C5
          D785CFB03DDC9C5DD1146A00F1C945EEE2EB8ADB08EC5A58EF48A4B635B5B8D0
          477C0940B39E1CB35DC756C49E65C58A70369B9D7EE2B1D319AED2005AA69785
          15FFBF152D9B421F9CDF1D37E06732FB88EF00340BB41EA30AAD1DF4BCFF9937
          EBC173A100A067FCB200E45B3BC0866B1A354B6ACABE02909DF1CB9271ED406F
          BA6600643565DF00C895F1CB92BE76606CBA56961C4537655F00C897F1CBB422
          9C25E76ABA6612DD94BD076092F1CB52FFA74DDBC597D1943D076025E317ADDE
          0F1B8E8B2FBA297B0AC06AC62F529D6F7FB0026E730310D5943D036037E317A1
          F6376B30F2658BBBF89A0DCDA5E0C2E41DA8BA770E2AFAABA1ACB712625D659A
          F0183FAB1CAC85EA91EB50FFF0B9FF0038C9F8F9F41D86927FB88A3EB0B00667
          C76F41C5E00928EE8CD952795F159C1A6E804B8F66BD07E038E3E79095AD25F9
          34B4B809B5E3ED50DA536EBBF04695741D63209AE0F2E377DE00E0CDF8DD6EBA
          8D334FE0685F0577E18D3ADC7D1CCE24FADD072022E377A3E926D83D6837A20B
          6FD4A1CED8C508448A5C01109718B4896CBAC3CC724E26CE4B2F7E461DB19192
          EE923D520188CEF865355DFC9FEF6AF1B320E4FA4D10064046C62FA3E9BA613B
          85EC28D47FA0814DD16ED1CC7EEC3EEF604769452801E0B01047269E03E88C6D
          EC6F2FDB1B3A00383677621BA201A4551F2A00383BC509928F006C1FE838B22F
          3400302270DA382501C834E45000C09CC66F0098E6420100934A9EA1A3440070
          A027160D3C008C8BFD0AA0B8ABF474E0016066CF5360DE9F8243D2AE585FE001
          E0C2895F01304D04FEA57DB87AE56300C9C0BFB61297107D0C602BF02F6E0D02
          00A55F5DACBC05A9FEF26EE59BB0EAAFAF577E18AAFA1738283F1153FD2B4C94
          8F2282200CBE940DE382208C7E958DA383205CFCC04510251764026443F54A2E
          490645B8108E0BE2CA2DCA0749B82544B96D29D4903DDE9815BCEF6E8C14E136
          4165B6260651B851D655083C9B7383FC9BE0861D716F4F0F436376323AB232DA
          31365C025060889A9E276C0B283E3EA33E7BA849006CCC98D3B6E4243B9AC37B
          F5192E7DA3362F8C9E5814E362CCEC71E10457AF7009312D3C9ED0CEB16BF05A
          A7FFCE3F0F6AAD62752ECB450000000049454E44AE426082}
      end>
    Left = 44
    Top = 248
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
end
