unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, ComCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox3: TComboBox;
    Edit4: TEdit;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ZConnection1: TZConnection;
    ZConnection2: TZConnection;
    ZConnection3: TZConnection;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    Label12: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation

{$R *.dfm}

procedure TForm6.DBGrid2CellClick(Column: TColumn);
begin
  Edit1.Text:=ZQuery2.Fields[3].AsString;
  ComboBox1.Text:=ZQuery2.Fields[7].AsString;
  ComboBox2.Text:=ZQuery2.Fields[8].AsString;
  Edit2.Text:=ZQuery2.Fields[10].AsString;
end;

procedure TForm6.DBGrid3CellClick(Column: TColumn);
begin
  Edit3.Text:=ZQuery3.Fields[1].AsString;
  ComboBox3.Text:=ZQuery3.Fields[3].AsString;
  Edit4.Text:=ZQuery3.Fields[2].AsString;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  ComboBox1.Text:=ZQuery1.Fields[2].AsString;
  ComboBox2.Text:=ZQuery1.Fields[3].AsString;
  Edit2.Text:=ZQuery1.Fields[4].AsString;
  Edit3.Text:=ZQuery1.Fields[5].AsString;
  ComboBox3.Text:=ZQuery1.Fields[6].AsString;
  Edit4.Text:=ZQuery1.Fields[7].AsString;
  DateTimePicker1.Date:=ZQuery1.Fields[8].AsDateTime;
  ComboBox4.Text:=ZQuery1.Fields[9].AsString;
  ComboBox5.Text:=ZQuery1.Fields[10].AsString;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into poin_siswa values(null, "'+Edit1.Text+'", "'+ComboBox1.Text+'", "'+ComboBox2.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'", "'+ComboBox3.Text+'", "'+Edit4.Text+'", "'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'", "'+ComboBox4.Text+'", "'+ComboBox5.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from poin_siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update poin_siswa set nama="'+Edit1.Text+'", jenis_kelamin="'+ComboBox1.Text+'", kelas="'+ComboBox2.Text+'", nama_wali="'+Edit2.Text+'", nama_poin="'+Edit3.Text+'", jenis="'+ComboBox3.Text+'", bobot="'+Edit4.Text+'", semester="'+ComboBox4.Text+'", status="'+ComboBox5.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from poin_siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from poin_siswa where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from poin_siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI HAPUS..');
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  ComboBox1.Clear;
  ComboBox2.Clear;
  ComboBox3.Clear;
  ComboBox4.Clear;
  ComboBox5.Clear;
end;

end.
