object Dmod: TDmod
  OldCreateOrder = False
  Left = 1501
  Top = 128
  Height = 150
  Width = 215
  object ADOuser: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Datab' +
      'ase\Users.mdb;Mode=Share Deny None;Persist Security Info=False;J' +
      'et OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB' +
      ':Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database' +
      ' Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Gl' +
      'obal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet ' +
      'OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fa' +
      'lse;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compa' +
      'ct Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 8
  end
  object TableUser: TADOTable
    Active = True
    Connection = ADOuser
    CursorType = ctStatic
    TableName = 'User Table'
    Left = 72
    Top = 8
  end
  object TableAdmin: TADOTable
    Active = True
    Connection = ADOuser
    CursorType = ctStatic
    TableName = 'Admin Table'
    Left = 128
    Top = 8
  end
end
