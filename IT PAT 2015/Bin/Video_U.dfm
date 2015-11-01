object Video_Form: TVideo_Form
  Left = 180
  Top = 614
  BorderStyle = bsNone
  Caption = 'Video_Form'
  ClientHeight = 636
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnClose: TBitBtn
    Left = 0
    Top = 0
    Width = 49
    Height = 25
    Caption = 'Skip'
    TabOrder = 0
    OnClick = btnCloseClick
    Kind = bkAbort
  end
  object pnlScreen: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 409
    Caption = 'pnlScreen'
    TabOrder = 1
  end
  object MPVideo: TMediaPlayer
    Left = 0
    Top = 408
    Width = 253
    Height = 30
    AutoOpen = True
    Display = pnlScreen
    FileName = 'C:\Users\Archibald\Desktop\norse vid\Game2.avi'
    Visible = False
    TabOrder = 2
  end
  object tmrVid: TTimer
    Interval = 75000
    OnTimer = tmrVidTimer
    Top = 608
  end
end
