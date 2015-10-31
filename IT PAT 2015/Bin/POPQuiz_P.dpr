program POPQuiz_P;

uses
  Forms,
  Quiz_U in 'Quiz_U.pas' {Quiz_Form},
  Home_U in 'Home_U.pas' {Home_Form},
  Login_U in 'Login_U.pas' {Login_Form},
  New_U in 'New_U.pas' {New_Form},
  Client_U in 'Client_U.pas' {Client_Form},
  Datamodule_U in 'Datamodule_U.pas' {Dmod: TDataModule},
  Admin_U in 'Admin_U.pas' {Admin_Form},
  Video_U in 'Video_U.pas' {Video_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TVideo_Form, Video_Form); 
  Application.CreateForm(THome_Form, Home_Form);
  Application.CreateForm(TQuiz_Form, Quiz_Form);
  Application.CreateForm(TLogin_Form, Login_Form);
  Application.CreateForm(TNew_Form, New_Form);
  Application.CreateForm(TClient_Form, Client_Form);
  Application.CreateForm(TDmod, Dmod);
  Application.CreateForm(TAdmin_Form, Admin_Form);
  Application.Run;
end.
