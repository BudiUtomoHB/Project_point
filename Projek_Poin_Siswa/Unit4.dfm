object Form4: TForm4
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Data Wali Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 48
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object Label2: TLabel
    Left = 40
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 40
    Top = 128
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label4: TLabel
    Left = 40
    Top = 168
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label5: TLabel
    Left = 328
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object Label6: TLabel
    Left = 328
    Top = 88
    Width = 72
    Height = 13
    Caption = 'Mata Pelajaran'
  end
  object Label7: TLabel
    Left = 328
    Top = 128
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label8: TLabel
    Left = 328
    Top = 168
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 128
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 128
    Top = 168
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object Edit4: TEdit
    Left = 416
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 416
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object ComboBox2: TComboBox
    Left = 416
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'SD'
      'SMP'
      'SMA/K'
      'S1'
      'S2'
      'S3')
  end
  object ComboBox3: TComboBox
    Left = 416
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object Button1: TButton
    Left = 416
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 328
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 11
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 256
    Width = 753
    Height = 120
    DataSource = DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\SEMESTER 4\VISUAL\Projek_Poin_Siswa\libmysql.dll'
    Left = 592
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from wali_kelas')
    Params = <>
    Left = 592
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 592
    Top = 160
  end
end
