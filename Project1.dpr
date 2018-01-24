program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Menu},
  Unit2 in 'Unit2.pas' {Testing},
  Unit3 in 'Unit3.pas' {Result},
  Unit4 in 'Unit4.pas' {Setting},
  Unit5 in 'Unit5.pas' {Information};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenu, Menu);
  Application.Run;
end.
