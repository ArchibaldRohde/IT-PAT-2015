unit Home_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ColorButton, Quiz_U, Buttons;

type
  THome_Form = class(TForm)
    lblPOPQuiz: TLabel;
    btnLogin: TColorButton;
    btnAdmin: TColorButton;
    btnNew: TColorButton;
    lblLucky: TLabel;
    btnClose: TBitBtn;
    btnOlive: TColorButton;
    btnBlack: TColorButton;
    lblTheme: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure btnAdminClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBlackClick(Sender: TObject);
  private
    
    { Private declarations }
  public
   bAdmin : boolean;
    { Public declarations }
  end;

var
  Home_Form: THome_Form;

implementation
uses Login_U, New_U, Client_U, Video_U;
{$R *.dfm}

procedure THome_Form.btnLoginClick(Sender: TObject);
begin
Client_Form.btnRefresh.Click;
bAdmin := false;
Login_Form.Show;
Home_Form.Hide;

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

procedure THome_Form.btnCloseClick(Sender: TObject);
begin
  Video_Form.close;
  Home_Form.Close;
end;

procedure THome_Form.FormCreate(Sender: TObject);
begin
  Home_Form.Left := round((screen.WorkAreaWidth -600)/2);
  Home_Form.Top := round((screen.WorkAreaHeight -350)/2);
end;

procedure THome_Form.btnBlackClick(Sender: TObject);
begin
////////////////Home_Form////////
  Home_Form.Color := clblack;
  lblPOPQuiz.Font.Color := clwhite;
  lblLucky.FOnt.Color := clWhite;
  btnLogin.BackColor := clBlack;
  btnLogin.ForeColor := clWhite;
  btnAdmin.BackColor := clBlack;
  btnAdmin.ForeColor := clWhite;
  btnNew.BackColor := clBlack;
  btnNew.ForeColor := clWhite;
  //////////////////////////////
  //////////Login_Form//////////
  Login_Form.imgMan.Picture.LoadFromFile('foto''s\Man_Black.jpg');
  Login_Form.imgWoman.Picture.LoadFromFile('foto''s\Woman_Black.jpg');
  Login_Form.Color := clBlack;
  Login_Form.lblPOPQuiz.font.Color := clWhite;
  Login_Form.lblPass.font.Color := clWhite;
  Login_Form.lblName.font.Color := clWhite;
  Login_Form.btnForgot.BackColor := clBlack;
  Login_Form.btnForgot.ForeColor := clWhite;
  Login_Form.btnLogin.BackColor := clBlack;
  Login_Form.btnLogin.ForeColor := clWhite;
  Login_Form.lblHand.font.Color := clWhite;
  Login_Form.edtName.Color := clBlack;
  Login_Form.edtName.Font.Color := clWhite;
  Login_Form.edtPassword.Color := clBlack;
  Login_Form.edtPassword.Font.Color := clWhite;
  /////////////////////////////////
  //////////New_Form///////////////
  New_Form.imgMan.Picture.LoadFromFile('foto''s\Man_Black.jpg');
  New_Form.imgWoman.Picture.LoadFromFile('foto''s\Woman_Black.jpg');
  New_Form.Color := clBlack;
  New_Form.lblPOPQuiz.font.Color := clWhite;
  New_Form.lblPassword.font.Color := clWhite;
  New_Form.lblHint.font.Color := clWhite;
  New_Form.lblName.font.Color := clWhite;
  New_Form.btnCreateUser.BackColor := clBlack;
  New_Form.btnCreateUser.ForeColor := clWhite;
  New_Form.lblHand.font.Color := clWhite;
  New_Form.edtName.Color := clBlack;
  New_Form.edtName.Font.Color := clWhite;
  New_Form.edtPassword.Color := clBlack;
  New_Form.edtPassword.Font.Color := clWhite;
  New_Form.edtHint.Color := clBlack;
  New_Form.edtHint.Font.Color := clWhite;
  /////////////////////////////////
  ///////////Client_Form///////////
  

end;

end.
