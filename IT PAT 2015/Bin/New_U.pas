unit New_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ColorButton;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ColorButton1Click(Sender: TObject);
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
sName, sPassword, sHint : String;
begin
  sName := edtName.Text;
  sPassword := edtPassword.text;
  sHint := edtHint.text;
  if sPassword='' OR if(sName= '') OR if(sHint='') then
  begin
    ShowMessage('All fields have not been filled in');
  end
  else
  begin
    //
  end;



end;

end.
