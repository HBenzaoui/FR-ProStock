object FWorkingSplash: TFWorkingSplash
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FWorkingSplash'
  ClientHeight = 92
  ClientWidth = 187
  Color = 15527148
  Enabled = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxActivityIndicator1: TdxActivityIndicator
    Left = 0
    Top = 0
    Width = 187
    Height = 92
    Align = alClient
    PropertiesClassName = 'TdxActivityIndicatorElasticCircleProperties'
    Properties.ArcColor = -13079109
  end
end
