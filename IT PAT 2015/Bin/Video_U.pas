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
    tmrVid: TTimer;
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tmrVidTimer(Sender: TObject);
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
  MPVideo.Stop;
  Home_Form.Show;
  Video_Form.Hide;
end;


procedure TVideo_Form.FormCreate(Sender: TObject);
begin
btnClose.BringToFront;
Video_Form.Left := 0;
Video_Form.Top := 0;
Video_Form.ClientWidth := 1280;
Video_Form.ClientHeight := 720;
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

procedure TVideo_Form.tmrVidTimer(Sender: TObject);
begin
  Video_Form.Hide;
  Home_Form.Show;
  tmrVid.enabled := false;
end;

end.
