object Form1: TForm1
  Left = 157
  Top = 79
  Width = 935
  Height = 658
  Caption = 'Form Data Siswa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object Label4: TLabel
    Left = 16
    Top = 120
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label6: TLabel
    Left = 16
    Top = 168
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object Label7: TLabel
    Left = 16
    Top = 192
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label8: TLabel
    Left = 16
    Top = 216
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label9: TLabel
    Left = 320
    Top = 72
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object Label10: TLabel
    Left = 320
    Top = 96
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Label11: TLabel
    Left = 320
    Top = 120
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object Label12: TLabel
    Left = 320
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label13: TLabel
    Left = 320
    Top = 168
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object Label14: TLabel
    Left = 320
    Top = 192
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object Label15: TLabel
    Left = 320
    Top = 216
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 104
    Top = 72
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 96
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 120
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 104
    Top = 144
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 104
    Top = 168
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 408
    Top = 120
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 408
    Top = 144
    Width = 161
    Height = 21
    TabOrder = 6
  end
  object Edit8: TEdit
    Left = 408
    Top = 168
    Width = 161
    Height = 21
    TabOrder = 7
  end
  object Edit9: TEdit
    Left = 408
    Top = 192
    Width = 161
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 424
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 336
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 304
    Width = 873
    Height = 153
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 216
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object ComboBox2: TComboBox
    Left = 408
    Top = 72
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'X'
      'XI'
      'XII')
  end
  object ComboBox3: TComboBox
    Left = 408
    Top = 96
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Items.Strings = (
      'BAHASA'
      'MIPA'
      'IPS')
  end
  object ComboBox4: TComboBox
    Left = 408
    Top = 216
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 17
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object DateTimePicker1: TDateTimePicker
    Left = 104
    Top = 192
    Width = 161
    Height = 21
    Date = 45099.785147037040000000
    Time = 45099.785147037040000000
    TabOrder = 18
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\SEMESTER 4\VISUAL\Projek_Poin_Siswa\libmysql.dll'
    Left = 24
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 88
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 152
    Top = 8
  end
end
