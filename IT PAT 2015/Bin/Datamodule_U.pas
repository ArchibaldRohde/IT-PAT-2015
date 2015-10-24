unit Datamodule_U;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDmod = class(TDataModule)
    ADOuser: TADOConnection;
    TableUser: TADOTable;
    TableAdmin: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmod: TDmod;

implementation

{$R *.dfm}

end.
