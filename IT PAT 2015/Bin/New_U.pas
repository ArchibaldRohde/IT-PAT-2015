unit New_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ColorButton;

type
  TNew_Form = class(TForm)
    lblPOPQuiz: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    ColorButton1: TColorButton;
    Image2: TImage;
    Image1: TImage;
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
sName, sPassword : String;
begin

end;

end.
