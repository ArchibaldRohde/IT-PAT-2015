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
    procedure btnCloseClick(Sender: TObject);
    procedure Go(path : string);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckAnswer(button: integer);
    procedure NextQuestion;
    procedure btnAClick(Sender: TObject);
    procedure btnBClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnDClick(Sender: TObject);

  private
    marks : integer;
    total : integer;
    quizcount : integer;
    arrNumbers : array[1..5] of integer;
    arrQuestion : array[1..20] of string;
    arrAnswer : array[1..20] of string;
    arrRan1 : array[1..20] of string;
    arrRan2 : array[1..20] of string;
    arrRan3 : array[1..20] of string;
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
/////////////////////////////////////TIMER/////////////////////////////////////////
procedure TQuiz_Form.tmrClockTimer(Sender: TObject);
begin
  PBClock.Position := PBClock.Position + 5;
  marks := marks - 1;
  if PBclock.Position = 100 then
  begin
    NextQuestion;
  end;

end;
////////////////////////////////////TIMER//////////////////////////////////////////

////////////////////////////////////Close/////////////////////////////////////////
procedure TQuiz_Form.btnCloseClick(Sender: TObject);
begin
  Quiz_Form.Hide;
  Client_Form.Show;
end;
////////////////////////////////////Close/////////////////////////////////////////

////////////////////////////////////GO////////////////////////////////////////////
procedure TQuiz_Form.Go(path: string);
var

TFile : textfile;
counter, k : integer;
slyn : string;

begin
total := 0;
// read file en save na arrs//
/////////////////////////////
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
/////////////randoms/////////////////////////
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
//////////////////randoms////////////////////////
////////////////////////////////////////////////
  tmrClock.Enabled := true;
  quizcount := 1;
  nextquestion;
end;
////////////////////////////////////GO////////////////////////////////////////////


procedure TQuiz_Form.FormActivate(Sender: TObject);
begin
{Go('quizzes\'+Client_Form.quiz+'.txt');}

end;

procedure TQuiz_Form.FormCreate(Sender: TObject);
begin
Quiz_Form.left := round((screen.WorkAreaWidth -600)/2);
Quiz_Form.Top := round((screen.WorkAreaHeight -350)/2);
tmrClock.Enabled := false;
end;

procedure TQuiz_Form.CheckAnswer(button: integer);
begin

{case button of
 button1 : 1;
 button2 : 2;
 button3 : 3;
 button4 : 4;
end; }
nextquestion;
//
end;


/////////////////////////NEXT///////////////
procedure TQuiz_Form.NextQuestion;
begin
  total := total + marks;
  lblQuestion.caption := arrQuestion[arrnumbers[quizcount]];
  btnA.Caption := arrAnswer[arrnumbers[quizcount]];
  btnB.Caption := arrran1[arrnumbers[quizcount]];
  btnC.Caption := arrran2[arrnumbers[quizcount]];
  btnD.Caption := arrran3[arrnumbers[quizcount]];

  PBclock.Position := 0;
  marks := 20;
  inc(quizcount);

 if quizcount > 5 then
 begin
   tmrClock.Enabled := false;
   showmessage('done ' + inttostr(total));
   Client_form.show;
   Quiz_Form.hide;
 end;


end;
/////////////////////////NEXT///////////////

procedure TQuiz_Form.btnAClick(Sender: TObject);
begin
  NextQuestion;
end;

procedure TQuiz_Form.btnBClick(Sender: TObject);
begin
  marks := 0;
    NextQuestion;
end;

procedure TQuiz_Form.btnCClick(Sender: TObject);
begin
 marks := 0;
    NextQuestion;
end;

procedure TQuiz_Form.btnDClick(Sender: TObject);
begin
 marks := 0;
    NextQuestion;
end;

end.


{........................................
skryf aparte prosedure vir next question
skryf aparte prosedure GO vir initial
skryf check button wat run op buttonclick
..........................................
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
jaaaaas!!!! jy kan dit doen}
