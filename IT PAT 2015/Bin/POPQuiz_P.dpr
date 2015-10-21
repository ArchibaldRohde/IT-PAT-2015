program POPQuiz_P;

uses
  Forms,
  Quiz_U in 'Quiz_U.pas' {Quiz_Form},
  Home_U in 'Home_U.pas' {Home_Form},
  Login_U in 'Login_U.pas' {Login_Form},
  New_U in 'New_U.pas' {New_Form},
  Client_U in 'Client_U.pas' {Client_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THome_Form, Home_Form);
  Application.CreateForm(TQuiz_Form, Quiz_Form);
  Application.CreateForm(TLogin_Form, Login_Form);
  Application.CreateForm(TNew_Form, New_Form);
  Application.CreateForm(TClient_Form, Client_Form);
  Application.Run;
end.
