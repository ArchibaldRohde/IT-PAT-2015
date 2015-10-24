object Home_Form: THome_Form
  Left = 335
  Top = 253
  Width = 616
  Height = 389
  Caption = 'Home_Form'
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblPOPQuiz: TLabel
    Left = 200
    Top = 8
    Width = 267
    Height = 72
    Caption = 'POPQuiz'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -64
    Font.Name = 'AR DARLING'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 192
    Top = 88
    Width = 267
    Height = 32
    Caption = 'Are you feeling lucky?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'AR DARLING'
    Font.Style = []
    ParentFont = False
  end
  object btnLogin: TColorButton
    Left = 144
    Top = 136
    Width = 113
    Height = 57
    Caption = 'btnLogin'
    TabOrder = 0
    OnClick = btnLoginClick
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnAdmin: TColorButton
    Left = 264
    Top = 136
    Width = 113
    Height = 57
    Caption = 'btnAdmin'
    TabOrder = 1
    OnClick = btnAdminClick
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnNew: TColorButton
    Left = 384
    Top = 136
    Width = 113
    Height = 57
    Caption = 'btnNew'
    TabOrder = 2
    OnClick = btnNewClick
    BackColor = clOlive
    HoverColor = clTeal
  end
end
