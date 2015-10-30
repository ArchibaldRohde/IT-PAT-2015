unit Client_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ColorButton, Buttons;

type
  TClient_Form = class(TForm)
    lblPOPQuiz: TLabel;
    LBquiz: TListBox;
    lblPick: TLabel;
    lblhand3: TLabel;
    btnPlay: TColorButton;
    lblhand2: TLabel;
    btnHigh: TColorButton;
    lblhand1: TLabel;
    btnMy: TColorButton;
    btnClose: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPlayClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  quiz : string;
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

procedure TClient_Form.btnPlayClick(Sender: TObject);
var
buttonselected : integer;
begin
buttonselected := MessageDlg('You have selected '+ LBquiz.Items[LBquiz.ItemIndex] + '. Are you shure you feel up to the test?' ,mtConfirmation,mbOKCancel,0);

if buttonselected = mrOK then
begin
  quiz := LBquiz.Items[LBquiz.ItemIndex];
  Quiz_Form.Show;
  Client_Form.hide;
  Quiz_Form.Go('quizzes\'+quiz+'.txt');
end;


end;

procedure TClient_Form.btnCloseClick(Sender: TObject);
begin
  Client_Form.Hide;
  Home_Form.Show;
end;

procedure TClient_Form.FormCreate(Sender: TObject);
begin
Quiz_Form.left := round((screen.WorkAreaWidth -600)/2);
Quiz_Form.Top := round((screen.WorkAreaHeight -350)/2);
end;

end.
