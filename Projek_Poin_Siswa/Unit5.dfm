object Form5: TForm5
  Left = 192
  Top = 124
  Width = 870
  Height = 451
  Caption = 'Form Data Poin'
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
    Left = 48
    Top = 56
    Width = 50
    Height = 13
    Caption = 'Nama Poin'
  end
  object Label2: TLabel
    Left = 48
    Top = 96
    Width = 28
    Height = 13
    Caption = 'Bobot'
  end
  object Label3: TLabel
    Left = 48
    Top = 136
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label4: TLabel
    Left = 48
    Top = 176
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 120
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 136
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Prestasi'
      'Pelanggaran')
  end
  object ComboBox2: TComboBox
    Left = 120
    Top = 176
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object Button1: TButton
    Left = 312
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 136
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 224
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 256
    Width = 465
    Height = 120
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 400
    Top = 128
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 344
    Top = 112
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
    Left = 288
    Top = 96
  end
end
