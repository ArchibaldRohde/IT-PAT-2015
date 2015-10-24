unit Client_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ColorButton, Buttons;

type
  TClient_Form = class(TForm)
    lblPOPQuiz: TLabel;
    ListBox1: TListBox;
    Label1: TLabel;
    Label3: TLabel;
    ColorButton1: TColorButton;
    Label2: TLabel;
    ColorButton2: TColorButton;
    Label4: TLabel;
    ColorButton3: TColorButton;
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
  Client_Form: TClient_Form;

implementation

uses Home_U, Quiz_U;

{$R *.dfm}

procedure TClient_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Home_Form.Show;
end;

procedure TClient_Form.ColorButton1Click(Sender: TObject);
begin
Quiz_Form.Show;
Client_Form.hide;
end;

procedure TClient_Form.btnCloseClick(Sender: TObject);
begin
  Client_Form.Hide;
  Home_Form.Show;
end;

procedure TClient_Form.FormCreate(Sender: TObject);
begin
  Client_Form.Left := round((screen.WorkAreaWidth -600)/2);
end;

end.
