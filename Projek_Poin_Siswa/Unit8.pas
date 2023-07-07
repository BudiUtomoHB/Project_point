unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm8 = class(TForm)
    MainMenu1: TMainMenu;
    FormData1: TMenuItem;
    DataSiswa1: TMenuItem;
    DataOrangTua1: TMenuItem;
    DataKelas1: TMenuItem;
    DataWaliKelas1: TMenuItem;
    DataPoin1: TMenuItem;
    DataPoinSiswa1: TMenuItem;
    DataHubungan1: TMenuItem;
    DataHubungan2: TMenuItem;
    procedure DataSiswa1Click(Sender: TObject);
    procedure DataOrangTua1Click(Sender: TObject);
    procedure DataKelas1Click(Sender: TObject);
    procedure DataWaliKelas1Click(Sender: TObject);
    procedure DataPoin1Click(Sender: TObject);
    procedure DataPoinSiswa1Click(Sender: TObject);
    procedure DataHubungan1Click(Sender: TObject);
    procedure DataHubungan2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit9;

{$R *.dfm}

procedure TForm8.DataSiswa1Click(Sender: TObject);
begin
  Form1.showmodal;
end;

procedure TForm8.DataOrangTua1Click(Sender: TObject);
begin
  Form2.showmodal;
end;

procedure TForm8.DataKelas1Click(Sender: TObject);
begin
  Form3.showmodal;
end;

procedure TForm8.DataWaliKelas1Click(Sender: TObject);
begin
  Form4.showmodal;
end;

procedure TForm8.DataPoin1Click(Sender: TObject);
begin
  Form5.showmodal;
end;

procedure TForm8.DataPoinSiswa1Click(Sender: TObject);
begin
  Form6.showmodal;  
end;

procedure TForm8.DataHubungan1Click(Sender: TObject);
begin
  Form7.showmodal;
end;

procedure TForm8.DataHubungan2Click(Sender: TObject);
begin
Form9.showmodal;
end;

end.
