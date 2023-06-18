object Form1: TForm1
  Left = 189
  Top = 137
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 240
    Top = 0
    Width = 298
    Height = 29
    Caption = 'MENAMBAHKAN DATA SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 56
    Width = 58
    Height = 19
    Caption = 'ID SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 80
    Width = 21
    Height = 19
    Caption = 'NIS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 104
    Width = 27
    Height = 19
    Caption = 'NIM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 128
    Width = 85
    Height = 19
    Caption = 'NAMA SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 152
    Width = 22
    Height = 19
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 40
    Top = 176
    Width = 95
    Height = 19
    Caption = 'TEMPAT LAHIR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 40
    Top = 200
    Width = 105
    Height = 19
    Caption = 'TANGGAL LAHIR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 40
    Top = 224
    Width = 97
    Height = 19
    Caption = 'JENIS KELAMIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 40
    Top = 248
    Width = 54
    Height = 19
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 40
    Top = 272
    Width = 115
    Height = 19
    Caption = 'NOMER TELEPON'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 40
    Top = 296
    Width = 47
    Height = 19
    Caption = 'STATUS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 328
    Width = 833
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 240
    Top = 56
    Width = 345
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 240
    Top = 80
    Width = 345
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 240
    Top = 104
    Width = 345
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 240
    Top = 128
    Width = 345
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 240
    Top = 152
    Width = 345
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 240
    Top = 176
    Width = 345
    Height = 21
    TabOrder = 6
  end
  object dtp1: TDateTimePicker
    Left = 240
    Top = 200
    Width = 345
    Height = 21
    Date = 45095.542848159720000000
    Time = 45095.542848159720000000
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 240
    Top = 224
    Width = 345
    Height = 21
    TabOrder = 8
  end
  object Edit8: TEdit
    Left = 240
    Top = 248
    Width = 345
    Height = 21
    TabOrder = 9
  end
  object Edit9: TEdit
    Left = 240
    Top = 272
    Width = 345
    Height = 21
    TabOrder = 10
  end
  object Edit10: TEdit
    Left = 240
    Top = 296
    Width = 345
    Height = 21
    TabOrder = 11
  end
  object btn1: TButton
    Left = 600
    Top = 96
    Width = 89
    Height = 25
    Caption = 'TAMBAH DATA'
    TabOrder = 12
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 704
    Top = 120
    Width = 89
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 13
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 600
    Top = 144
    Width = 89
    Height = 25
    Caption = 'HAPUS DATA'
    TabOrder = 14
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 600
    Top = 184
    Width = 89
    Height = 25
    Caption = 'EDIT DATA'
    TabOrder = 15
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 704
    Top = 168
    Width = 89
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 16
    OnClick = btn5Click
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tabel_siswa')
    Left = 40
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\SEMESTER 4\VISUA' +
      'L 2\tugas visual\database_project.mdb;Mode=Share Deny None;Persi' +
      'st Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Re' +
      'gistry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine T' +
      'ype=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial' +
      ' Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New D' +
      'atabase Password="";Jet OLEDB:Create System Database=False;Jet O' +
      'LEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compa' +
      'ct=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLED' +
      'B:SFP=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 72
  end
end
