object Form2: TForm2
  Left = 379
  Top = 208
  Width = 1044
  Height = 540
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 1028
    Height = 501
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Lucida Sans'
    Font.Style = []
    Lines.Strings = (
      'Jest to najpopularniejsza wersja gry "Tic Tac Toe".'
      
        'W przypadku, w kt'#243'rym obydwaj gracze graja optymalnie, gra zawsz' +
        'e prowadzi do remisu.'
      
        'Gra ta posiada okolo 362880 kombinacji, co pozwala na preprocess' +
        'ing wszystkich mozliwych rozgrywek.'
      
        'Dzieki temu komputer zawsze bedzie uzywal najkorzystniejszych dl' +
        'a niego ruchow.')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
end
