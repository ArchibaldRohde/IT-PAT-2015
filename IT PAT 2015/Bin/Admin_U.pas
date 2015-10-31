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
buttonSel : string;

arrQuestion : array [1..20] of string;
begin

QuizName := Inputbox('Name of New Quiz','Name of New Quiz', 'Name of New Quiz');

  Assignfile(Tfile,('quizzes\' + QuizName + '.txt.'));

  rewrite(tfile);
  buttonSel := mrYes;
  while buttonSel = mrYes do
  begin
    buttonSel := MessageDlg('Would you like to add a question!',mtConfirmation,mbYesNoCancel,0);
    if buttonSel = mrYes then
    begin

    end;

  end;

end;

end.
