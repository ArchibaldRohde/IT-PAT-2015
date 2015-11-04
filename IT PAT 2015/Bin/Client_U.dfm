object Client_Form: TClient_Form
  Left = 699
  Top = 428
  BorderStyle = bsNone
  Caption = 'Client_Form'
  ClientHeight = 350
  ClientWidth = 600
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblPOPQuiz: TLabel
    Left = 224
    Top = 8
    Width = 143
    Height = 46
    Caption = 'POPQuiz'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'AR DARLING'
    Font.Style = []
    ParentFont = False
  end
  object lblPick: TLabel
    Left = 104
    Top = 72
    Width = 69
    Height = 13
    Caption = 'Pick your quiz:'
  end
  object lblhand3: TLabel
    Left = 376
    Top = 256
    Width = 29
    Height = 41
    Caption = 'B'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
  end
  object lblhand2: TLabel
    Left = 376
    Top = 184
    Width = 25
    Height = 41
    Caption = 'C'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
  end
  object lblhand1: TLabel
    Left = 376
    Top = 112
    Width = 35
    Height = 41
    Caption = 'F'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
  end
  object LBquiz: TListBox
    Left = 96
    Top = 88
    Width = 273
    Height = 233
    Color = clOlive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    Items.Strings = (
      'Please refresh List')
    ParentFont = False
    TabOrder = 0
  end
  object btnPlay: TColorButton
    Left = 408
    Top = 256
    Width = 121
    Height = 33
    Caption = 'Play Quiz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnPlayClick
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnHigh: TColorButton
    Left = 408
    Top = 184
    Width = 121
    Height = 33
    Caption = 'High scores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnHighClick
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnCredits: TColorButton
    Left = 408
    Top = 112
    Width = 121
    Height = 33
    Caption = 'Credits'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnClose: TBitBtn
    Left = 568
    Top = 0
    Width = 33
    Height = 25
    Caption = ' '
    TabOrder = 4
    OnClick = btnCloseClick
    Kind = bkAbort
  end
  object btnRefresh: TColorButton
    Left = 296
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Refresh List'
    TabOrder = 5
    OnClick = btnRefreshClick
    BackColor = clOlive
    HoverColor = clRed
  end
end
