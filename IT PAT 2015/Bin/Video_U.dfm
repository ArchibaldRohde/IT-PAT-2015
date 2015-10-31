object Video_Form: TVideo_Form
  Left = 501
  Top = 322
  Width = 1305
  Height = 675
  Caption = 'Video_Form'
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
    Left = 1256
    Top = 0
    Width = 33
    Height = 25
    Caption = ' '
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
    FileName = 'C:\Users\Archibald\Desktop\Untitled1_Lossless.avi'
    TabOrder = 2
  end
end
