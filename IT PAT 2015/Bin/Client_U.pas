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
    btnCredits: TColorButton;
    btnClose: TBitBtn;
    btnRefresh: TColorButton;
    procedure btnPlayClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnHighClick(Sender: TObject);
  private
    { Private declarations }
  public
  quiz : string;
    { Public declarations }
  end;

var
  Client_Form: TClient_Form;

implementation

uses Home_U, Quiz_U, Datamodule_U;

{$R *.dfm}

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

procedure TClient_Form.btnRefreshClick(Sender: TObject);
var
tfile : Textfile;
slyn : string;
begin
LBquiz.Clear;
Assignfile(Tfile, 'QuizList.txt');
  try
    reset(Tfile);
  except
    MessageDlg('QuizList.txt does not exist... Something is terribly wrong! Call your technician!',mtError,[mbCancel],0);
  end;
    while NOT eof(tfile) do
    begin
      readln(Tfile, slyn);
      LBquiz.Items.Add(slyn);
    end;
closefile(tfile);
LBquiz.ItemIndex := 1;
end;

procedure TClient_Form.FormActivate(Sender: TObject);
begin
Client_Form.left := round((screen.WorkAreaWidth -600)/2);
Client_Form.Top := round((screen.WorkAreaHeight -350)/2);
end;

procedure TClient_Form.btnHighClick(Sender: TObject);
begin
Dmod.TableHighScore.First;
 while NOT Dmod.TableHighScore.Eof  do
    begin //while

     if Dmod.TableHighScore['Quiz'] = LBquiz.Items[LBquiz.ItemIndex] then
        break;
        Dmod.TableHighScore.Next;
    end;

ShowMessage('The highscores for ' + DMod.TableHighScore['Quiz'] + ' are: ' + #10 + #10 +
                         '1) ' + DMod.TableHighScore['User1'] + ' with: ' + floattostr(DMod.TableHighScore['User1 score']) + '/100' + #10 +
                         '2) ' + DMod.TableHighScore['User2'] + ' with: ' + floattostr(DMod.TableHighScore['User2 score']) + '/100' + #10  +
                         '3) ' + DMod.TableHighScore['User3'] + ' with: ' + floattostr(DMod.TableHighScore['User3 score']) + '/100');

end;

end.
