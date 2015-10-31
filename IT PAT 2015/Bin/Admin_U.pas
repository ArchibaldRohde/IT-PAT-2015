unit Admin_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ColorButton;

type
  TAdmin_Form = class(TForm)
    btnClose: TBitBtn;
    btnEdit: TColorButton;
    btnAdd: TColorButton;
    btnDelete: TColorButton;
    LBquiz: TListBox;
    lblPOPQuiz: TLabel;
    btnRefresh: TColorButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Admin_Form: TAdmin_Form;

implementation

uses Home_U;

{$R *.dfm}

procedure TAdmin_Form.btnCloseClick(Sender: TObject);
begin
  Admin_Form.Hide;
  Home_Form.Show;
end;

procedure TAdmin_Form.FormCreate(Sender: TObject);
begin
  Admin_Form.Left := round((screen.WorkAreaWidth -600)/2);
  Admin_Form.Top := round((screen.WorkAreaHeight -350)/2);
end;

procedure TAdmin_Form.btnRefreshClick(Sender: TObject);
var
Tfile : Textfile;
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

end;

procedure TAdmin_Form.btnAddClick(Sender: TObject);
var
Tfile : textfile;
slyn : string;
QuizName : string;
buttonSel : integer;
k, i : integer;

arrQuestion : array [1..20] of string;
arrAnswer : array [1..20]of string;
arrRan : array [1..20]of string;
arrRan1 : array [1..20]of string;
arrRan2 : array [1..20]of string;
begin
k := 0;
QuizName := Inputbox('Name of New Quiz','Name of New Quiz', 'Name of New Quiz');

  Assignfile(Tfile,('quizzes\' + QuizName + '.txt.'));

  rewrite(tfile);
  buttonSel := mrYes;
  while buttonSel = mrYes do
  begin
    buttonSel := MessageDlg('Would you like to add a question? *keep in mind that 20 Questions should be added until further notice! ' + inttostr(k) + ' Questions have been added.',mtConfirmation,mbYesNoCancel,0);
    if buttonSel = mrYes then
    begin
      arrQuestion[k+1] :=  Inputbox('Question:','Question:', 'Question:');
      arrAnswer[k+1] :=  Inputbox('Answer:','Answer:', 'Answer:');
      arrRan[k+1] :=  Inputbox('Wrong Answer 1:','Wrong Answer 1:', 'Wrong Answer 1:');
      arrRan1[k+1] :=  Inputbox('Wrong Answer 2:','Wrong Answer 2:', 'Wrong Answer 2:');
      arrRan2[k+1] :=  Inputbox('Wrong Answer 3:','Wrong Answer 3:', 'Wrong Answer 3:');

      inc(k);
    end;

  end;
  for i := 1 to k do
  begin
    slyn := (arrQuestion[i] + '#' + arrAnswer[i] + '#' + arrRan[1] + '#' + arrRan2[1]);
    WriteLn(tfile, slyn);
  end;
  closefile(tfile);

 /////////////QUIZNAME////////////////
  Assignfile(tfile,'QuizList.txt');
   try
    reset(Tfile);
  except
    MessageDlg('QuizList.txt does not exist... Something is terribly wrong! Call your technician!',mtError,[mbCancel],0);
    exit;
  end;

  WriteLn(tfile, QuizName);
  closefile(tfile);
  ///////////////////////////////////
end;

end.
