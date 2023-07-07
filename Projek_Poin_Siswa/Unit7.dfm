object Form7: TForm7
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form Input Data Hubungan'
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
    Top = 48
    Width = 41
    Height = 13
    Caption = 'ID Siswa'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 65
    Height = 13
    Caption = 'ID Orang Tua'
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label4: TLabel
    Left = 24
    Top = 144
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object Label5: TLabel
    Left = 312
    Top = 64
    Width = 112
    Height = 17
    Caption = 'Pilih Data Siswa :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 680
    Top = 64
    Width = 145
    Height = 17
    Caption = 'Pilih Data Orang Tua :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 112
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Ayah'
      'Ibu')
  end
  object Button1: TButton
    Left = 112
    Top = 218
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 112
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 200
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 264
    Width = 320
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
  object DBGrid2: TDBGrid
    Left = 304
    Top = 88
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
  end
  object DBGrid3: TDBGrid
    Left = 672
    Top = 88
    Width = 320
    Height = 120
    DataSource = DataSource3
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
  end
  object ComboBox2: TComboBox
    Left = 112
    Top = 144
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'Kandung'
      'Wali')
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
    Left = 32
    Top = 312
  end
  object ZConnection2: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\SEMESTER 4\VISUAL\Projek_Poin_Siswa\libmysql.dll'
    Left = 328
    Top = 16
  end
  object ZConnection3: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\SEMESTER 4\VISUAL\Projek_Poin_Siswa\libmysql.dll'
    Left = 696
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 32
    Top = 264
  end
  object ZQuery2: TZQuery
    Connection = ZConnection2
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 384
    Top = 16
  end
  object ZQuery3: TZQuery
    Connection = ZConnection3
    SQL.Strings = (
      'select * from ortu')
    Params = <>
    Left = 752
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 32
    Top = 360
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 440
    Top = 16
  end
  object DataSource3: TDataSource
    DataSet = ZQuery3
    Left = 808
    Top = 16
  end
end
