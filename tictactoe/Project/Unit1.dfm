object Form1: TForm1
  Left = 295
  Top = 300
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'TicTacToe'
  ClientHeight = 341
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pole1: TImage
    Left = 0
    Top = 16
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole1Click
  end
  object pole2: TImage
    Left = 96
    Top = 16
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole2Click
  end
  object pole3: TImage
    Left = 192
    Top = 16
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole3Click
  end
  object pole4: TImage
    Left = 0
    Top = 112
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole4Click
  end
  object pole5: TImage
    Left = 96
    Top = 112
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole5Click
  end
  object pole6: TImage
    Left = 192
    Top = 112
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole6Click
  end
  object pole7: TImage
    Left = 0
    Top = 208
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole7Click
  end
  object pole8: TImage
    Left = 96
    Top = 208
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole8Click
  end
  object pole9: TImage
    Left = 192
    Top = 208
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole9Click
  end
  object Label1: TLabel
    Left = 480
    Top = 0
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 432
    Top = 40
    Width = 246
    Height = 46
    Caption = 'Your points: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 432
    Top = 232
    Width = 218
    Height = 46
    Caption = 'PC points: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 432
    Top = 144
    Width = 157
    Height = 46
    Caption = 'Draws: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 320
    Top = 152
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Reset'
    TabOrder = 0
    OnClick = FormCreate
  end
  object MainMenu1: TMainMenu
    Left = 360
    Top = 48
    object Autor1: TMenuItem
      Caption = 'Info'
      object Autor2: TMenuItem
        Caption = 'Autor'
        OnClick = Autor2Click
      end
      object Oprogramie1: TMenuItem
        Caption = 'O programie'
        OnClick = Oprogramie1Click
      end
    end
  end
end
