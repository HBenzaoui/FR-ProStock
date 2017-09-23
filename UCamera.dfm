object CameraF: TCameraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'CameraF'
  ClientHeight = 308
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    361
    308)
  PixelsPerInch = 96
  TextHeight = 13
  object LeftP: TPanel
    Left = 300
    Top = 0
    Width = 61
    Height = 308
    Align = alRight
    Color = 15527148
    ParentBackground = False
    TabOrder = 0
    object ScanCameraFBtn: TsSpeedButton
      Left = 6
      Top = 129
      Width = 50
      Height = 50
      Hint = 'Scan'
      ParentShowHint = False
      ShowHint = True
      OnClick = ScanCameraFBtnClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = MainForm.PanelIcons48
      ImageIndex = 15
    end
    object Label1: TLabel
      Left = 16
      Top = 183
      Width = 31
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object Button1: TButton
      Left = 4
      Top = 16
      Width = 57
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 3
      Top = 56
      Width = 57
      Height = 25
      Caption = '1'
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 3
      Top = 82
      Width = 57
      Height = 25
      Caption = '2'
      TabOrder = 2
      Visible = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 3
      Top = 104
      Width = 57
      Height = 25
      Caption = '3'
      TabOrder = 3
      Visible = False
      OnClick = Button4Click
    end
  end
  object CameraCtrlCameraF: TdxCameraControl
    Left = 0
    Top = 0
    Width = 300
    Height = 308
    Align = alClient
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
  end
  object Panel1: TPanel
    Left = 15
    Top = 56
    Width = 270
    Height = 4
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 2
    Visible = False
    StyleElements = []
  end
  object Panel2: TPanel
    Left = 15
    Top = 250
    Width = 270
    Height = 4
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 3
    Visible = False
    StyleElements = []
  end
  object Panel3: TPanel
    Left = 15
    Top = 56
    Width = 4
    Height = 198
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 4
    Visible = False
    StyleElements = []
  end
  object Panel4: TPanel
    Left = 281
    Top = 56
    Width = 4
    Height = 198
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    Color = 4666873
    ParentBackground = False
    TabOrder = 5
    Visible = False
    StyleElements = []
  end
  object TimerCamerafFTmr: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerCamerafFTmrTimer
    Left = 140
    Top = 262
  end
end
