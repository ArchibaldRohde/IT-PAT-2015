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

  private
    marks : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Quiz_Form: TQuiz_Form;

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
counter : integer;
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
 delete(slyn,0,POS('#',Slyn));
 arrAnswer[counter] := copy(slyn,0,(POS('#',Slyn)-1));
 delete(slyn,0,POS('#',Slyn));
 arrRan1[counter] := copy(slyn,0,(POS('#',Slyn)-1));
 delete(slyn,0,POS('#',Slyn));
 arrRan2[counter] := copy(slyn,0,(POS('#',Slyn)-1));
 delete(slyn,0,POS('#',Slyn));
  arrRan3[counter] := copy(slyn,0,length(slyn));
 showMessage('vraag: ' + arrQuestion[counter] + '  Antwoord: ' + arrAnswer[counter] + '  Ran3: ' + arrRan3[counter]);
 inc(counter);

end;

//////////////////////////////////////
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

end.
