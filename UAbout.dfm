object AboutF: TAboutF
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'About'
  ClientHeight = 367
  ClientWidth = 559
  Color = 15527148
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    559
    367)
  PixelsPerInch = 96
  TextHeight = 13
  object sImage2: TsImage
    Left = 200
    Top = 13
    Width = 159
    Height = 103
    Anchors = [akRight]
    Center = True
    Picture.Data = {07544269746D617000000000}
    Proportional = True
    Stretch = True
    SkinData.SkinSection = 'CHECKBOX'
  end
  object NameAboutF: TLabel
    Left = 176
    Top = 119
    Width = 207
    Height = 23
    Caption = 'ProStock version 4.6.1'
    Color = 7303023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7237230
    Font.Height = -19
    Font.Name = 'Helvetica LT Std'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 109
    Top = 342
    Width = 70
    Height = 14
    Caption = #169' 2015-2017'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7303023
    Font.Height = 14
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object ImageCompanyOptionImg: TsImage
    Left = 185
    Top = 337
    Width = 184
    Height = 21
    Cursor = crHandPoint
    Anchors = [akRight, akBottom]
    Center = True
    Picture.Data = {07544269746D617000000000}
    Proportional = True
    Stretch = True
    Transparent = True
    ImageIndex = 0
    SkinData.SkinSection = 'CHECKBOX'
  end
  object Label2: TLabel
    Left = 371
    Top = 342
    Width = 109
    Height = 14
    Caption = 'Tous droits r'#233'serv'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7303023
    Font.Height = 14
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 156
    Width = 123
    Height = 15
    Caption = 'Service commercial :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = -13
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 151
    Top = 156
    Width = 374
    Height = 15
    Caption = 
      ' + 213 (0) 550-00-00-00 / + 213 (0) 550-00-00-00 / info@digital.' +
      'dz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = -13
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 33
    Top = 185
    Width = 114
    Height = 15
    Caption = 'Support technique :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = -13
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 151
    Top = 185
    Width = 276
    Height = 15
    Caption = ' + 213 (0) 550-00-00-00 / + 213 (0) 550-00-00-00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = -13
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 58
    Top = 212
    Width = 89
    Height = 15
    Caption = 'Le developpur :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = -13
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 151
    Top = 212
    Width = 277
    Height = 15
    Caption = ' + 213 (0) 661-45-81-97 / hamzapdd@gmail.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = -13
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 514
    Top = 15
    Width = 28
    Height = 24
    Cursor = crHandPoint
    Alignment = taCenter
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'X'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = -1
    Font.Height = 15
    Font.Name = 'Helvetica LT Std'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    OnClick = Label9Click
    ExplicitLeft = 568
  end
  object Memo1: TMemo
    Left = 12
    Top = 248
    Width = 530
    Height = 83
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7303023
    Font.Height = 15
    Font.Name = 'Helvetica'
    Font.Style = []
    Lines.Strings = (
      
        'Avertissement: Ce logiciel est prot'#233'g'#233' par la loi relative au dr' +
        'oit d'#39'auteur et par les '
      'conventions '
      'internationales,'
      
        'Toute reproduction ou distribution partielle ou totale du logici' +
        'el, par quelque moyen que ce '
      
        'soit, est strictement interdite,Toute personne ne respectant pas' +
        ' ces dispositions se rendra '
      
        'coupable du d'#233'lit de contrefacon et sera passible sanctions p'#233'na' +
        'les pr'#233'vues.')
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
end
