object Admin_Form: TAdmin_Form
  Left = 967
  Top = 306
  BorderStyle = bsNone
  Caption = 'Admin_Form'
  ClientHeight = 350
  ClientWidth = 600
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
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
  object btnClose: TBitBtn
    Left = 568
    Top = 0
    Width = 33
    Height = 25
    Caption = ' '
    TabOrder = 0
    OnClick = btnCloseClick
    Kind = bkAbort
  end
  object ColorButton3: TColorButton
    Left = 344
    Top = 80
    Width = 121
    Height = 33
    Caption = 'Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BackColor = clOlive
    HoverColor = clTeal
  end
  object ColorButton1: TColorButton
    Left = 344
    Top = 120
    Width = 121
    Height = 33
    Caption = 'Add'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    BackColor = clOlive
    HoverColor = clTeal
  end
  object ColorButton2: TColorButton
    Left = 344
    Top = 160
    Width = 121
    Height = 33
    Caption = 'Delete'
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
  object ColorButton4: TColorButton
    Left = 344
    Top = 216
    Width = 121
    Height = 33
    Caption = 'View Quizes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    BackColor = clOlive
    HoverColor = clTeal
  end
  object ListBox1: TListBox
    Left = 56
    Top = 80
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
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16')
    ParentFont = False
    TabOrder = 5
  end
end
