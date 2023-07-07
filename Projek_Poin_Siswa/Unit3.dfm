object Form3: TForm3
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Data Kelas'
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
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label2: TLabel
    Left = 40
    Top = 88
    Width = 52
    Height = 13
    Caption = 'Jenis Kelas'
  end
  object Label3: TLabel
    Left = 40
    Top = 120
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Edit1: TEdit
    Left = 128
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'Pagi'
      'Siang')
  end
  object ComboBox2: TComboBox
    Left = 128
    Top = 120
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Bahasa'
      'IPA'
      'IPS')
  end
  object Button1: TButton
    Left = 304
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 128
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 216
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 208
    Width = 337
    Height = 120
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 424
    Top = 80
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 360
    Top = 80
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
    Left = 296
    Top = 80
  end
end
