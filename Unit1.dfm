object Form1: TForm1
  Left = 0
  Top = 295
  Caption = 'Sinqia'
  ClientHeight = 397
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Cidades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 624
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 628
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitWidth = 624
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 473
      Height = 39
      DataSource = DataModule2.DataSource1
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alCustom
      TabOrder = 0
    end
    object Button1: TButton
      Left = 480
      Top = 6
      Width = 70
      Height = 30
      Align = alCustom
      Caption = 'Clientes'
      TabOrder = 1
      OnClick = Button1Click
    end
    object btnRelatorio: TButton
      Left = 556
      Top = 6
      Width = 61
      Height = 30
      Align = alCustom
      Caption = 'Relat'#243'rio'
      TabOrder = 2
      OnClick = btnRelatorioClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 82
    Width = 628
    Height = 181
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 2
    VerticalAlignment = taAlignTop
    ExplicitWidth = 624
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 626
      Height = 179
      Align = alClient
      DataSource = DataModule2.DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Cidade'
          Title.Caption = 'Codigo da Cidade'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Caption = 'Cliente'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cep_Inicial'
          Title.Caption = 'Cep Inicial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cep_Final'
          Title.Caption = 'Cep Final'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 263
    Width = 628
    Height = 134
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 624
    ExplicitHeight = 133
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 79
      Height = 15
      Caption = 'C'#243'digo Cidade'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 104
      Top = 8
      Width = 33
      Height = 15
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 168
      Top = 58
      Width = 55
      Height = 15
      Caption = 'Cep Inicial'
      FocusControl = DBEdit4
    end
    object Label3: TLabel
      Left = 8
      Top = 58
      Width = 35
      Height = 15
      Caption = 'Estado'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 324
      Top = 58
      Width = 49
      Height = 15
      Caption = 'Cep Final'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 29
      Width = 89
      Height = 23
      DataField = 'Codigo_Cidade'
      DataSource = DataModule2.DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 103
      Top = 29
      Width = 371
      Height = 23
      DataField = 'Nome'
      DataSource = DataModule2.DataSource1
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 168
      Top = 79
      Width = 150
      Height = 23
      DataField = 'Cep_Inicial'
      DataSource = DataModule2.DataSource1
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 79
      Width = 154
      Height = 23
      DataField = 'Estado'
      DataSource = DataModule2.DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 324
      Top = 79
      Width = 150
      Height = 23
      DataField = 'Cep_Final'
      DataSource = DataModule2.DataSource1
      TabOrder = 4
    end
  end
end
