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
    ListBox1: TListBox;
    lblPOPQuiz: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

end.
