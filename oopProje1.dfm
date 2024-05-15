object MainPage: TMainPage
  Left = 0
  Top = 0
  Caption = 'KULLANICI KAYIT'
  ClientHeight = 541
  ClientWidth = 618
  Color = clActiveCaption
  Constraints.MaxHeight = 579
  Constraints.MaxWidth = 630
  Constraints.MinHeight = 579
  Constraints.MinWidth = 630
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  Scaled = False
  ScreenSnap = True
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 388
    Top = 119
    Width = 34
    Height = 23
    Caption = #304'S'#304'M'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 388
    Top = 148
    Width = 65
    Height = 23
    Caption = 'SOY'#304'S'#304'M'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 388
    Top = 177
    Width = 28
    Height = 23
    Caption = 'YA'#350
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 351
    Top = 255
    Width = 106
    Height = 23
    Caption = 'BAK'#304'YE G'#220'NCELLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object txtName: TEdit
    Left = 252
    Top = 119
    Width = 130
    Height = 23
    Alignment = taCenter
    TabOrder = 0
  end
  object txtAge: TEdit
    Left = 252
    Top = 177
    Width = 130
    Height = 23
    Alignment = taCenter
    TabOrder = 2
  end
  object txtSurname: TEdit
    Left = 252
    Top = 148
    Width = 130
    Height = 23
    Alignment = taCenter
    TabOrder = 1
  end
  object btnSave: TButton
    Left = 252
    Top = 216
    Width = 130
    Height = 33
    Caption = 'KAYDET'
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object txtAddMoney: TEdit
    Left = 292
    Top = 255
    Width = 53
    Height = 23
    Alignment = taCenter
    Enabled = False
    TabOrder = 3
    Text = '0'
  end
  object listView: TListView
    Left = 8
    Top = 332
    Width = 602
    Height = 201
    Color = clActiveCaption
    Columns = <>
    TabOrder = 5
    ViewStyle = vsReport
    OnClick = listViewClick
  end
  object btnUpdate: TButton
    Left = 116
    Top = 216
    Width = 130
    Height = 33
    Caption = 'G'#220'NCELLE'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 388
    Top = 216
    Width = 130
    Height = 33
    Caption = 'S'#304'L'
    Enabled = False
    TabOrder = 7
    OnClick = btnDeleteClick
  end
  object btnSetNonSelected: TButton
    Left = 276
    Top = 297
    Width = 77
    Height = 29
    Caption = 'TEM'#304'ZLE'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnSetNonSelectedClick
  end
  object btnInfo: TButton
    Left = 276
    Top = 8
    Width = 77
    Height = 29
    Caption = 'B'#304'LG'#304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btnInfoClick
  end
end
