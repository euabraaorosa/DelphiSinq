object DataModule2: TDataModule2
  Height = 480
  Width = 640
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=CadastroClientes;Data Source=DESKTOP-9N' +
      'CKG6R\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 73
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Cidades;')
    Left = 72
    Top = 128
    object ADOQuery1Codigo_Cidade: TAutoIncField
      DisplayWidth = 14
      FieldName = 'Codigo_Cidade'
      ReadOnly = True
    end
    object ADOQuery1Nome: TStringField
      DisplayWidth = 255
      FieldName = 'Nome'
      Size = 255
    end
    object ADOQuery1Estado: TStringField
      DisplayWidth = 255
      FieldName = 'Estado'
      Size = 255
    end
    object ADOQuery1Cep_Inicial: TStringField
      DisplayWidth = 10
      FieldName = 'Cep_Inicial'
      Size = 10
    end
    object ADOQuery1Cep_Final: TStringField
      DisplayWidth = 10
      FieldName = 'Cep_Final'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 64
    Top = 208
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM clientes;')
    Left = 192
    Top = 128
    object ADOQuery2Codigo_Cliente: TAutoIncField
      FieldName = 'Codigo_Cliente'
      ReadOnly = True
    end
    object ADOQuery2CGC_CPF_Cliente: TStringField
      FieldName = 'CGC_CPF_Cliente'
    end
    object ADOQuery2Nome: TStringField
      FieldName = 'Nome'
      Size = 255
    end
    object ADOQuery2Telefone: TStringField
      FieldName = 'Telefone'
    end
    object ADOQuery2Endereco: TStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object ADOQuery2Bairro: TStringField
      FieldName = 'Bairro'
      Size = 255
    end
    object ADOQuery2Complemento: TStringField
      FieldName = 'Complemento'
      Size = 255
    end
    object ADOQuery2E_mail: TStringField
      FieldName = 'E_mail'
      Size = 255
    end
    object ADOQuery2Codigo_Cidade: TIntegerField
      FieldName = 'Codigo_Cidade'
    end
    object ADOQuery2Cep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 192
    Top = 208
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=CadastroClientes;Data Source=DESKTOP-9N' +
      'CKG6R\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 185
    Top = 48
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=CadastroClientes;Data Source=DESKTOP-9N' +
      'CKG6R\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 313
    Top = 48
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection3
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoClienteInicial'
        Size = -1
        Value = Null
      end
      item
        Name = 'CodigoClienteFinal'
        Size = -1
        Value = Null
      end
      item
        Name = 'CodigoCidade'
        Size = -1
        Value = Null
      end
      item
        Name = 'EstadoInicial'
        Size = -1
        Value = Null
      end
      item
        Name = 'EstadoFinal'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Clientes'
      '  WHERE '
      
        '    (Codigo_Cliente >= COALESCE(:CodigoClienteInicial, Codigo_Cl' +
        'iente) AND'
      
        '     Codigo_Cliente <= COALESCE(:CodigoClienteFinal, Codigo_Clie' +
        'nte)) AND'
      '    (Codigo_Cidade = COALESCE(:CodigoCidade, Codigo_Cidade)) AND'
      '    (Estado >= COALESCE(:EstadoInicial, Estado) AND'
      '     Estado <= COALESCE(:EstadoFinal, Estado))')
    Left = 320
    Top = 136
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 328
    Top = 224
  end
end