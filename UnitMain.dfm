object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'LOL clicker'
  ClientHeight = 88
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit2: TEdit
    Left = 370
    Top = 8
    Width = 222
    Height = 21
    TabOrder = 0
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 370
    Top = 35
    Width = 49
    Height = 21
    TabOrder = 1
    Text = '630'
  end
  object Edit4: TEdit
    Left = 425
    Top = 35
    Width = 50
    Height = 21
    TabOrder = 2
    Text = '500'
  end
  object Button1: TButton
    Left = 479
    Top = 35
    Width = 113
    Height = 25
    Caption = 'Try click'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 370
    Top = 62
    Width = 222
    Height = 21
    TabOrder = 4
    Text = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1086#1082#1085#1072' '#1076#1083#1103' '#1090#1077#1089#1090' '#1087#1086#1080#1089#1082#1072' '#1077#1075#1086' handle'
  end
  object Button2: TButton
    Left = 88
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 224
    Top = 8
    Width = 140
    Height = 25
    Caption = 'Set 0, 0'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 560
    Top = 8
  end
end
