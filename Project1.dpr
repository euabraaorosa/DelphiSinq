program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  Sinqia in 'Sinqia.pas' {Form3},
  Unit4 in 'Unit4.pas' {formRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TformRelatorio, formRelatorio);
  Application.Run;
end.
