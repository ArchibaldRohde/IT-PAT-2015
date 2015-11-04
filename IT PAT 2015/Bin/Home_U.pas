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
    procedure Theme(colorback : integer; colorText : integer; imageMan : string; imageWoman : string);
    procedure btnOliveClick(Sender: TObject);
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
//
Theme(clBlack, clWhite,'foto''s\Man_Black.jpg','foto''s\Woman_Black.jpg' );

end;

procedure THome_Form.Theme(colorback : integer; colorText : integer; imageMan : string; imageWoman : string);
begin
  ////////////////Home_Form////////
  Home_Form.Color := colorback;
  lblTheme.Font.Color := colorText;
  lblPOPQuiz.Font.Color := colorText;
  lblLucky.FOnt.Color := colorText;
  btnLogin.BackColor := colorback;
  btnLogin.ForeColor := colorText;
  btnAdmin.BackColor := colorback;
  btnAdmin.ForeColor := colorText;
  btnNew.BackColor := colorback;
  btnNew.ForeColor := colorText;
  //////////////////////////////
  //////////Login_Form//////////
  Login_Form.imgMan.Picture.LoadFromFile(imageMan);
  Login_Form.imgWoman.Picture.LoadFromFile(imageWoman);
  Login_Form.Color := colorback;
  Login_Form.lblPOPQuiz.font.Color := colorText;
  Login_Form.lblPass.font.Color := colorText;
  Login_Form.lblName.font.Color := colorText;
  Login_Form.btnForgot.BackColor := colorback;
  Login_Form.btnForgot.ForeColor := colorText;
  Login_Form.btnLogin.BackColor := colorback;
  Login_Form.btnLogin.ForeColor := colorText;
  Login_Form.lblHand.font.Color := colorText;
  Login_Form.edtName.Color := colorback;
  Login_Form.edtName.Font.Color := colorText;
  Login_Form.edtPassword.Color := colorback;
  Login_Form.edtPassword.Font.Color := colorText;
  /////////////////////////////////
  //////////New_Form///////////////
  New_Form.imgMan.Picture.LoadFromFile(imageMan);
  New_Form.imgWoman.Picture.LoadFromFile(imageWoman);
  New_Form.Color := colorback;
  New_Form.lblPOPQuiz.font.Color := colorText;
  New_Form.lblPassword.font.Color := colorText;
  New_Form.lblHint.font.Color := colorText;
  New_Form.lblName.font.Color := colorText;
  New_Form.btnCreateUser.BackColor := colorback;
  New_Form.btnCreateUser.ForeColor := colorText;
  New_Form.lblHand.font.Color := colorText;
  New_Form.edtName.Color := colorback;
  New_Form.edtName.Font.Color := colorText;
  New_Form.edtPassword.Color := colorback;
  New_Form.edtPassword.Font.Color := colorText;
  New_Form.edtHint.Color := colorback;
  New_Form.edtHint.Font.Color := colorText;
  /////////////////////////////////
  ///////////Client_Form///////////
end;

procedure THome_Form.btnOliveClick(Sender: TObject);
begin
  Theme(clOlive,clBlack,'foto''s\Man_Olive.jpg','foto''s\Woman_Olive.jpg');
end;

end.
