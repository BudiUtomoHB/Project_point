object Form8: TForm8
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Menu Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 56
    Top = 24
    object FormData1: TMenuItem
      Caption = 'Form Data'
      object DataSiswa1: TMenuItem
        Caption = 'Data Siswa'
        OnClick = DataSiswa1Click
      end
      object DataOrangTua1: TMenuItem
        Caption = 'Data Orang Tua'
        OnClick = DataOrangTua1Click
      end
      object DataKelas1: TMenuItem
        Caption = 'Data Kelas'
        OnClick = DataKelas1Click
      end
      object DataWaliKelas1: TMenuItem
        Caption = 'Data Wali Kelas'
        OnClick = DataWaliKelas1Click
      end
      object DataPoin1: TMenuItem
        Caption = 'Data Poin'
        OnClick = DataPoin1Click
      end
      object DataPoinSiswa1: TMenuItem
        Caption = 'Data Poin Siswa'
        OnClick = DataPoinSiswa1Click
      end
      object DataHubungan1: TMenuItem
        Caption = 'Input Data Hubungan'
        OnClick = DataHubungan1Click
      end
      object DataHubungan2: TMenuItem
        Caption = 'Data Hubungan'
        OnClick = DataHubungan2Click
      end
    end
  end
end
