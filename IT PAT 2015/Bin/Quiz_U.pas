unit Quiz_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ColorButton, Buttons;

type
  TQuiz_Form = class(TForm)
    lblA: TLabel;
    lblB: TLabel;
    lblC: TLabel;
    lblD: TLabel;
    lblQuestion: TLabel;
    lblPOPQuiz: TLabel;
    PBClock: TProgressBar;
    tmrClock: TTimer;
    lblClock: TLabel;
    btnA: TColorButton;
    btnB: TColorButton;
    btnC: TColorButton;
    btnD: TColorButton;
    btnClose: TBitBtn;
    procedure tmrClockTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure Go(path : string);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckAnswer(button: integer);
    procedure NextQuestion(number : integer);

  private
    marks : integer;
    arrNumbers : array[1..5] of integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Quiz_Form: TQuiz_Form;

const
  button1 = 1;
  button2 = 2;
  button3 = 3;
  button4 = 4;

implementation

{$R *.dfm}
uses Home_U, Login_U, New_U, Client_U;

procedure TQuiz_Form.tmrClockTimer(Sender: TObject);
begin
  PBClock.Position := PBClock.Position + 5;
  marks := marks - 1;
end;



procedure TQuiz_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Home_Form.Show;
end;

procedure TQuiz_Form.btnCloseClick(Sender: TObject);
begin
  Quiz_Form.Hide;
  Client_Form.Show;
end;

procedure TQuiz_Form.Go(path: string);
var
arrQuestion : array[1..20] of string;
arrAnswer : array[1..20] of string;
arrRan1 : array[1..20] of string;
arrRan2 : array[1..20] of string;
arrRan3 : array[1..20] of string;


TFile : textfile;
counter, k : integer;
slyn : string;

begin
// read file en save na arrs//
Assignfile(Tfile, path);

try
reset(tfile);
except
  MessageDlg('Quiz ' + path + ' does not exist. Please contact your administrator.',mtWarning,[mbOK],0);
  exit;

end;
counter := 1;
while NOT eof(tfile) do
begin
 readln(Tfile,slyn);
 arrQuestion[counter] := copy(slyn,0,(POS('#',Slyn)-1));
 delete(slyn,1,POS('#',Slyn));
 arrAnswer[counter] := copy(slyn,0,(POS('#',Slyn)-1));
 delete(slyn,1,POS('#',Slyn));
 arrRan1[counter] := copy(slyn,0,(POS('#',Slyn)-1));
 delete(slyn,1,POS('#',Slyn));
 arrRan2[counter] := copy(slyn,0,(POS('#',Slyn)-1));
 delete(slyn,1,POS('#',Slyn));
  arrRan3[counter] := copy(slyn,0,length(slyn));
 //showMessage('vraag: ' + arrQuestion[counter] + '  Antwoord: ' + arrAnswer[counter] + '  Ran3: ' + arrRan3[counter]);
 inc(counter);

end;

//////////////////////////////////////
randomize;
arrNumbers[1] := random(20) + 1;

arrNumbers[2] :=  random(20) + 1;
while arrNumbers[2] = arrNumbers[1] do
  arrNumbers[2] :=  random(20) + 1;

arrNumbers[3] :=  random(20) + 1;
while (arrNumbers[3] = arrNumbers[1]) OR (arrNumbers[3] = arrNumbers[2]) do
  arrNumbers[3] :=  random(20) + 1;

arrNumbers[4] :=  random(20) + 1;
while (arrNumbers[4] = arrNumbers[1]) OR (arrNumbers[4] = arrNumbers[2]) OR (arrNumbers[4] = arrNumbers[3]) do
  arrNumbers[4] :=  random(20) + 1;

arrNumbers[5] :=  random(20) + 1;
while (arrNumbers[5] = arrNumbers[1]) OR (arrNumbers[5] = arrNumbers[2]) OR (arrNumbers[5] = arrNumbers[3]) OR (arrNumbers[5] = arrNumbers[4]) do
  arrNumbers[5] :=  random(20) + 1;
//////////////////////////////////////
for k := 1 to 5 do
begin
  lblQuestion.caption := arrQuestion[arrnumbers[k]];
  btnA.Caption := arrAnswer[arrnumbers[k]];
  btnB.Caption := arrran1[arrnumbers[k]];
  btnC.Caption := arrran2[arrnumbers[k]];
  btnD.Caption := arrran3[arrnumbers[k]];


end;


                  //repeat 5 times//
  //random question and answer sequence//
  marks := 20;
  tmrClock.Enabled := true;
  PBclock.Position := 0;

  ////////////////////////////////////////

end;

procedure TQuiz_Form.FormActivate(Sender: TObject);
begin
Go('quizzes\'+Client_Form.quiz+'.txt');

end;

procedure TQuiz_Form.FormCreate(Sender: TObject);
begin
Quiz_Form.left := round((screen.WorkAreaWidth -600)/2);
Quiz_Form.Top := round((screen.WorkAreaHeight -350)/2);
tmrClock.Enabled := false;
end;

procedure TQuiz_Form.CheckAnswer(button: integer);
begin

case button of
 button1 : ;
 button2 : ;
end;

//
end;

procedure TQuiz_Form.NextQuestion(number: integer);
begin
//
end;

end.


{........................................
skryf aparte prosedure vir next question
skryf aparte prosedure GO vir initial
skryf check button wat run op buttonclick
..........................................
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
jaaaaas!!!! jy kan dit doen}
