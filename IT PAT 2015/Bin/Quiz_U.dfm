object Quiz_Form: TQuiz_Form
  Left = 310
  Top = 424
  Width = 616
  Height = 389
  Caption = 'Quiz_Form'
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblA: TLabel
    Left = 8
    Top = 112
    Width = 18
    Height = 32
    Caption = 'A'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlack
    Font.Height = -29
    Font.Name = 'SWGamekeys MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblB: TLabel
    Left = 8
    Top = 144
    Width = 24
    Height = 32
    Caption = 'B'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlack
    Font.Height = -29
    Font.Name = 'SWGamekeys MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblC: TLabel
    Left = 8
    Top = 176
    Width = 21
    Height = 32
    Caption = 'C'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlack
    Font.Height = -29
    Font.Name = 'SWGamekeys MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblD: TLabel
    Left = 8
    Top = 208
    Width = 21
    Height = 32
    Caption = 'D'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlack
    Font.Height = -29
    Font.Name = 'SWGamekeys MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblQuestion: TLabel
    Left = 40
    Top = 64
    Width = 333
    Height = 21
    Caption = '<Insert random question here>'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Copperplate Gothic Bold'
    Font.Style = []
    ParentFont = False
  end
  object lblPOPQuiz: TLabel
    Left = 256
    Top = 8
    Width = 154
    Height = 42
    Caption = 'POPQuiz'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'AR DARLING'
    Font.Style = []
    ParentFont = False
  end
  object lblClock: TLabel
    Left = 8
    Top = 248
    Width = 31
    Height = 38
    Caption = #184
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
  end
  object PBClock: TProgressBar
    Left = 40
    Top = 256
    Width = 553
    Height = 17
    TabOrder = 0
  end
  object btnA: TColorButton
    Left = 40
    Top = 112
    Width = 553
    Height = 33
    TabOrder = 1
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnB: TColorButton
    Left = 40
    Top = 144
    Width = 553
    Height = 33
    TabOrder = 2
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnC: TColorButton
    Left = 40
    Top = 176
    Width = 553
    Height = 33
    TabOrder = 3
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnD: TColorButton
    Left = 40
    Top = 208
    Width = 553
    Height = 33
    TabOrder = 4
    BackColor = clOlive
    HoverColor = clTeal
  end
  object tmrClock: TTimer
    OnTimer = tmrClockTimer
  end
end