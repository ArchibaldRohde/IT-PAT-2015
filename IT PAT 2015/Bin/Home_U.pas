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
    procedure btnLoginClick(Sender: TObject);
    procedure btnAdminClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    
    { Private declarations }
  public
   bAdmin : boolean
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

procedure THome_Form.btnCloseClick(Sender: TObject);
begin
  Home_Form.Close;
end;

procedure THome_Form.FormCreate(Sender: TObject);
begin
  Home_Form.Left := round((screen.WorkAreaWidth -600)/2);
  Home_Form.Top := round((screen.WorkAreaHeight -350)/2);
end;

end.
