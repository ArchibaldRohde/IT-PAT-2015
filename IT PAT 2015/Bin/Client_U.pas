unit Client_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TClient_Form = class(TForm)
    lblPOPQuiz: TLabel;
    ListBox1: TListBox;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Client_Form: TClient_Form;

implementation

uses Home_U;

{$R *.dfm}

procedure TClient_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Home_Form.Show;
end;

end.
