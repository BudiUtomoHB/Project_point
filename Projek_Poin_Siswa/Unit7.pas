unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ZConnection1: TZConnection;
    ZConnection2: TZConnection;
    ZConnection3: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ComboBox2: TComboBox;
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
  Form7: TForm7;
  id : string;

implementation

{$R *.dfm}

procedure TForm7.DBGrid2CellClick(Column: TColumn);
begin
  Edit1.Text:=ZQuery2.Fields[0].AsString;
end;

procedure TForm7.DBGrid3CellClick(Column: TColumn);
begin
  Edit2.Text:=ZQuery3.Fields[0].AsString;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  Edit2.Text:=ZQuery1.Fields[2].AsString;
  ComboBox1.Text:=ZQuery1.Fields[3].AsString;
  ComboBox2.Text:=ZQuery1.Fields[4].AsString;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into hubungan values(null, "'+Edit1.Text+'", "'+Edit2.Text+'", "'+ComboBox1.Text+'", "'+ComboBox2.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from hubungan');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update hubungan set siswa_id="'+Edit1.Text+'", ortu_id="'+Edit2.Text+'", status="'+ComboBox1.Text+'", keterangan="'+ComboBox2.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from hubungan');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete hubungan where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from hubungan');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI HAPUS..');
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  ComboBox1.Clear;
  ComboBox2.Clear;
end;

end.
