object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 443
  ClientWidth = 611
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
    Width = 611
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 607
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 611
    Height = 41
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitWidth = 607
    object Button1: TButton
      Left = 463
      Top = 1
      Width = 147
      Height = 39
      Align = alRight
      Caption = 'Voltar'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 459
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 456
      Height = 39
      DataSource = DataModule2.DataSource2
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alLeft
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 82
    Width = 611
    Height = 135
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 2
    ExplicitWidth = 607
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 609
      Height = 133
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataModule2.DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Codigo_Cliente'
          Title.Caption = 'C'#243'd Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CGC_CPF_Cliente'
          Title.Caption = 'CPF'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco'
          Title.Caption = 'Endere'#231'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'E_mail'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Cidade'
          Title.Caption = 'C'#243'd Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cep'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 217
    Width = 611
    Height = 226
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 607
    ExplicitHeight = 225
    object Label1: TLabel
      Left = 384
      Top = 11
      Width = 44
      Height = 15
      Caption = 'Telefone'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 11
      Width = 33
      Height = 15
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 214
      Top = 11
      Width = 21
      Height = 15
      Caption = 'CPF'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 308
      Top = 11
      Width = 62
      Height = 15
      Caption = 'C'#243'd Cliente'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 8
      Top = 120
      Width = 49
      Height = 15
      Caption = 'Endereco'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 308
      Top = 120
      Width = 31
      Height = 15
      Caption = 'Bairro'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 392
      Top = 120
      Width = 21
      Height = 15
      Caption = 'Cep'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 8
      Top = 61
      Width = 34
      Height = 15
      Caption = 'E_mail'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 8
      Top = 170
      Width = 77
      Height = 15
      Caption = 'Complemento'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 384
      Top = 61
      Width = 62
      Height = 15
      Caption = 'C'#243'd Cidade'
      FocusControl = DBEdit10
    end
    object DBEdit1: TDBEdit
      Left = 384
      Top = 32
      Width = 90
      Height = 23
      DataField = 'Telefone'
      DataSource = DataModule2.DataSource2
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 32
      Width = 200
      Height = 23
      DataField = 'Nome'
      DataSource = DataModule2.DataSource2
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 214
      Top = 32
      Width = 88
      Height = 23
      DataField = 'CGC_CPF_Cliente'
      DataSource = DataModule2.DataSource2
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 308
      Top = 32
      Width = 62
      Height = 23
      DataField = 'Codigo_Cliente'
      DataSource = DataModule2.DataSource2
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 141
      Width = 294
      Height = 23
      DataField = 'Endereco'
      DataSource = DataModule2.DataSource2
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 308
      Top = 141
      Width = 77
      Height = 23
      DataField = 'Bairro'
      DataSource = DataModule2.DataSource2
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 391
      Top = 141
      Width = 83
      Height = 23
      DataField = 'Cep'
      DataSource = DataModule2.DataSource2
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 82
      Width = 362
      Height = 23
      DataField = 'E_mail'
      DataSource = DataModule2.DataSource2
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 191
      Width = 466
      Height = 23
      DataField = 'Complemento'
      DataSource = DataModule2.DataSource2
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 384
      Top = 82
      Width = 90
      Height = 23
      DataField = 'Codigo_Cidade'
      DataSource = DataModule2.DataSource2
      TabOrder = 9
    end
  end
end
