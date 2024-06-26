unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Codigo_Cidade: TAutoIncField;
    ADOQuery1Nome: TStringField;
    ADOQuery1Estado: TStringField;
    ADOQuery1Cep_Inicial: TStringField;
    ADOQuery1Cep_Final: TStringField;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOConnection2: TADOConnection;
    ADOQuery2Codigo_Cliente: TAutoIncField;
    ADOQuery2CGC_CPF_Cliente: TStringField;
    ADOQuery2Nome: TStringField;
    ADOQuery2Telefone: TStringField;
    ADOQuery2Endereco: TStringField;
    ADOQuery2Bairro: TStringField;
    ADOQuery2Complemento: TStringField;
    ADOQuery2E_mail: TStringField;
    ADOQuery2Codigo_Cidade: TIntegerField;
    ADOQuery2Cep: TStringField;
    ADOConnection3: TADOConnection;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
