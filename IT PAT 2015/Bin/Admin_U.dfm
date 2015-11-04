object Admin_Form: TAdmin_Form
  Left = 2038
  Top = 661
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
  object lblInfo: TLabel
    Left = 336
    Top = 208
    Width = 255
    Height = 89
    AutoSize = False
    Caption = 
      'Greetings Administrator.                                    Plea' +
      'se remember when creating a new Quiz to not give it the name of ' +
      'an already existing Quiz. This will create serious problems sinc' +
      'e this program is still in BETA!  Use Admin rights with the utmo' +
      'st care! Remember, the force will be with you. Always!'
    WordWrap = True
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
  object btnEdit: TColorButton
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
  object btnAdd: TColorButton
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
    OnClick = btnAddClick
    BackColor = clOlive
    HoverColor = clTeal
  end
  object btnDelete: TColorButton
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
    OnClick = btnDeleteClick
    BackColor = clOlive
    HoverColor = clTeal
  end
  object LBquiz: TListBox
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
      'Please refresh List')
    ParentFont = False
    TabOrder = 4
  end
  object btnRefresh: TColorButton
    Left = 256
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Refresh List'
    TabOrder = 5
    OnClick = btnRefreshClick
    BackColor = clOlive
    HoverColor = clRed
  end
end
