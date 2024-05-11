object formRelatorio: TformRelatorio
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 105
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
    ExplicitTop = -6
    object btnPesquisar: TButton
      Left = 132
      Top = 53
      Width = 106
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 6
      Top = 6
      Width = 120
      Height = 91
      Align = alCustom
      Caption = 'Pesquisar por'
      Items.Strings = (
        'C'#243'd. Cliente'
        'C'#243'd. Cidade'
        'Estado')
      TabOrder = 1
    end
    object tdInicial: TEdit
      Left = 132
      Top = 24
      Width = 50
      Height = 23
      TabOrder = 2
      TextHint = 'Inicial'
    end
    object tdFinal: TEdit
      Left = 188
      Top = 24
      Width = 50
      Height = 23
      TabOrder = 3
      TextHint = 'Final'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 392
    Width = 628
    Height = 50
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 391
    ExplicitWidth = 624
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 628
    Height = 287
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
