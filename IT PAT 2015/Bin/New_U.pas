unit New_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ColorButton, Datamodule_U, Buttons;

type
  TNew_Form = class(TForm)
    lblPOPQuiz: TLabel;
    lblName: TLabel;
    edtName: TEdit;
    lblPassword: TLabel;
    edtPassword: TEdit;
    Label3: TLabel;
    ColorButton1: TColorButton;
    imgWoman: TImage;
    imgMan: TImage;
    lblHint: TLabel;
    edtHint: TEdit;
    btnClose: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ColorButton1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  New_Form: TNew_Form;

implementation
uses Quiz_U, Home_U, Login_U;

{$R *.dfm}

procedure TNew_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Home_Form.Show;
end;

procedure TNew_Form.ColorButton1Click(Sender: TObject);
var
sNewName, sNewPassword, sNewHint : String;
begin
  sNewName := edtName.Text;
  sNewPassword := edtPassword.text;
  sNewHint := edtHint.text;
  if ((sNewPassword='') OR (sNewName= '') OR (sNewHint='')) then
  begin
    ShowMessage('All fields have not been filled in');
  end
  else
  begin
  //
  Dmod.TableUser.First;
  while NOT Dmod.TableUser.EOF do
  begin
    if Dmod.TableUser['Username'] = sNewName then
    break;
    Dmod.TableUser.Next;
  end;
  if NOT Dmod.TableUser.Eof then
  begin
  MessageDlg('Poephol dit bestaan klaar',mtError,[mbCancel],0);
  exit;
  end;

  //
  Dmod.TableUser.Last;
  Dmod.TableUser.Insert;
  Dmod.TableUser['Username'] := sNewName;
  Dmod.TableUser['Password'] := sNewPassword;
  Dmod.TableUser['Hint'] := sNewHint;
  Dmod.TableUser.Post;
  MessageDlg('Well done ' + sNewName + ' jy is actually in!!!!',mtWarning,[mbOK],0);

  New_Form.Hide;
  Home_Form.Show;
  end;



end;

procedure TNew_Form.btnCloseClick(Sender: TObject);
begin
  New_Form.Hide;
  Home_Form.Show;
end;

procedure TNew_Form.FormCreate(Sender: TObject);
begin
New_Form.Left := round((screen.WorkAreaWidth-600)/2);
end;

end.
