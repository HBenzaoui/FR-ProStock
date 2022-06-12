object SNumberGestionF: TSNumberGestionF
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'SNumberGestionF'
  ClientHeight = 313
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    495
    313)
  PixelsPerInch = 96
  TextHeight = 13
  object OKAddUniteSBtn: TAdvToolButton
    Tag = 2
    Left = 154
    Top = 275
    Width = 187
    Height = 30
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    AutoThemeAdapt = False
    BorderColor = 7854350
    BorderDownColor = 7854350
    BorderHotColor = 15970832
    Color = clWhite
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
    Version = '1.7.2.0'
    TMSStyle = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Num'#233'ro de s'#233'rie'
    Color = 2673406
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4207405
    Font.Height = 22
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    StyleElements = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 265
    Width = 495
    Height = 2
    Anchors = [akLeft, akBottom]
    BevelOuter = bvNone
    Color = 10379008
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 1
    StyleElements = []
  end
end
