unit Home_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ColorButton, Quiz_U;

type
  THome_Form = class(TForm)
    lblPOPQuiz: TLabel;
    btnLogin: TColorButton;
    btnAdmin: TColorButton;
    btnNew: TColorButton;
    Label1: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure btnAdminClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
  private
    bAdmin : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Home_Form: THome_Form;

implementation
uses Login_U, New_U, Client_U;
{$R *.dfm}

procedure THome_Form.btnLoginClick(Sender: TObject);
begin
Login_Form.Show;
Home_Form.Hide;
bAdmin := false;
end;

procedure THome_Form.btnAdminClick(Sender: TObject);
begin
Login_Form.Show;
Home_Form.Hide;
bAdmin := true;
end;

procedure THome_Form.btnNewClick(Sender: TObject);
begin
New_Form.Show;
Home_Form.Hide;
end;

end.