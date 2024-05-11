unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, ppComm, ppFormWrapper, ppRptExp;

type
  TformRelatorio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btnPesquisar: TButton;
    RadioGroup1: TRadioGroup;
    tdInicial: TEdit;
    tdFinal: TEdit;
    //procedure btnPesquisarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelatorio: TformRelatorio;

implementation

{$R *.dfm}

uses Sinqia, Unit1, Unit2;

{
//procedure TformRelatorio.btnPesquisarClick(Sender: TObject);
var
  SQLQuery: TADOQuery;
  SQL: string;
begin
  // Create the SQL query object
  SQLQuery := TADOQuery.Create(nil);
  try
    // Set the connection
    SQLQuery.Connection := ADOConnection1;

    // Build the SQL query
    SQL := 'SELECT * FROM Clientes';

    // Add filters based on enabled GroupBox components
    if GroupBoxCodigoCliente.Enabled then
    begin
      SQL := SQL + ' WHERE Codigo_Cliente BETWEEN :codigoInicial AND :codigoFinal';
      SQLQuery.Parameters.ParamByName('codigoInicial').Value := StrToInt(EditCodigoClienteInicial.Text);
      SQLQuery.Parameters.ParamByName('codigoFinal').Value := StrToInt(EditCodigoClienteFinal.Text);
    end
    else if GroupBoxCodigoCidade.Enabled then
    begin
      SQL := SQL + ' WHERE Codigo_Cidade = :codigoCidade';
      SQLQuery.Parameters.ParamByName('codigoCidade').Value := EditCodigoCidade.Text;
    end
    else if GroupBoxEstado.Enabled then
    begin
      SQL := SQL + ' WHERE Estado BETWEEN :estadoInicial AND :estadoFinal';
      SQLQuery.Parameters.ParamByName('estadoInicial').Value := EditEstadoInicial.Text;
      SQLQuery.Parameters.ParamByName('estadoFinal').Value := EditEstadoFinal.Text;
    end;

    // Set the SQL query text
    SQLQuery.SQL.Text := SQL;

    // Execute the query
    SQLQuery.Open;

    // Use the results
    DBGrid1.DataSource := DataSource1;
    DataSource1.DataSet := SQLQuery;
  except
    on E: Exception do
    begin
      // Handle errors
      ShowMessage('Error: ' + E.Message);
    end;
  finally
    // Free the SQL query object
    SQLQuery.Free;
  end;
  }
end.
