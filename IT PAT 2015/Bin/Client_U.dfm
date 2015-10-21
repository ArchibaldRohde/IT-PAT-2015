object Client_Form: TClient_Form
  Left = 1196
  Top = 656
  Width = 616
  Height = 389
  Caption = 'Client_Form'
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
  object Label1: TLabel
    Left = 152
    Top = 72
    Width = 69
    Height = 13
    Caption = 'Pick your quiz:'
  end
  object ListBox1: TListBox
    Left = 152
    Top = 88
    Width = 273
    Height = 233
    Color = clOlive
    ItemHeight = 13
    Items.Strings = (
      'ma'
      'jou'
      'hare')
    TabOrder = 0
  end
end
