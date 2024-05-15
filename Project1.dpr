program Project1;

uses
  Vcl.Forms,
  oopProje1 in 'oopProje1.pas' {MainPage},
  User in 'Class\User.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainPage, MainPage);
  Application.Run;
end.
