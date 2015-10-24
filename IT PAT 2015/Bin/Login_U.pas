unit Login_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ColorButton, jpeg, ExtCtrls, Datamodule_U, Buttons;

type
  TLogin_Form = class(TForm)
    lblPOPQuiz: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    ColorButton1: TColorButton;
    ColorButton2: TColorButton;
    Image1: TImage;
    Image2: TImage;
    btnClose: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ColorButton1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login_Form: TLogin_Form;

implementation
uses Quiz_U, Home_U, New_U, Client_U;

{$R *.dfm}

procedure TLogin_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Home_Form.Show;
end;

procedure TLogin_Form.ColorButton1Click(Sender: TObject);
var
sName, sPassword : string;
begin
//////tydelik/////
Client_Form.Show;
Login_Form.Hide;
/////tydelik/////

//data//

end;

procedure TLogin_Form.btnCloseClick(Sender: TObject);
begin
  Login_Form.Hide;
  Home_Form.Show;
end;

end.
