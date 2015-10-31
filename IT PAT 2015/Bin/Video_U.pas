unit Video_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, Buttons, ExtCtrls;

type
  TVideo_Form = class(TForm)
    btnClose: TBitBtn;
    pnlScreen: TPanel;
    MPVideo: TMediaPlayer;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Video_Form: TVideo_Form;

implementation

uses Home_U;

{$R *.dfm}

procedure TVideo_Form.btnCloseClick(Sender: TObject);
begin
  Home_Form.Show;
  Video_Form.Hide;
end;


procedure TVideo_Form.FormCreate(Sender: TObject);
begin
Video_Form.Left := 0;
Video_Form.Top := 0;
Video_Form.ClientWidth := round(Screen.WorkAreaWidth/2);
Video_Form.ClientHeight := round(Screen.WorkAreaHeight/2);
  pnlScreen.Width := Video_Form.ClientWidth;
  pnlScreen.Height := Video_Form.ClientHeight;
  MPVideo.DisplayRect := Rect(0, 0, PnlScreen.Width, PnlScreen.Height);
  MPVideo.Open;

MPVideo.Play;
end;

procedure TVideo_Form.FormActivate(Sender: TObject);
begin
MPVideo.DisplayRect := Rect(0, 0, PnlScreen.Width, PnlScreen.Height);
  MPVideo.Open;
MPVideo.Play;
end;

end.
