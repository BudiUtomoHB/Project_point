object Form2: TForm2
  Left = 192
  Top = 124
  Width = 870
  Height = 451
  Caption = 'Form Data Orang Tua'
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
    Left = 24
    Top = 56
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 24
    Top = 120
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label4: TLabel
    Left = 24
    Top = 152
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
  end
  object Label5: TLabel
    Left = 24
    Top = 184
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object Label6: TLabel
    Left = 288
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label7: TLabel
    Left = 288
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Agama'
  end
  object Label8: TLabel
    Left = 288
    Top = 136
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label9: TLabel
    Left = 288
    Top = 168
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 104
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 120
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'SD'
      'SMP'
      'SMA/K'
      'S1'
      'S2'
      'S3')
  end
  object Edit3: TEdit
    Left = 104
    Top = 152
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 104
    Top = 184
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 376
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 376
    Top = 104
    Width = 145
    Height = 21
    TabOrder = 6
  end
  object ComboBox2: TComboBox
    Left = 376
    Top = 136
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object ComboBox3: TComboBox
    Left = 376
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Kandung'
      'Wali')
  end
  object Button1: TButton
    Left = 392
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 304
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 272
    Width = 777
    Height = 120
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from ortu')
    Params = <>
    Left = 400
    Top = 16
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
    Left = 336
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 464
    Top = 16
  end
end
