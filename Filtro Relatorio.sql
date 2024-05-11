
SELECT  Cidades.
		Nome AS NomeCidade, COUNT(Clientes.Codigo_Cliente) AS TotalClientes
         FROM Clientes
           INNER JOIN Cidades ON Clientes.Codigo_Cidade = Cidades.Codigo_Cidade
	          WHERE Clientes.DataCadastro BETWEEN :DataInicial AND :DataFinal
		        GROUP BY Cidades.Nome


select * from Clientes
select * from Cidades

DECLARE @CodigoClienteInicial INT = 1;
DECLARE @CodigoClienteFinal INT = 3;
DECLARE @CodigoCidadeInicial INT = 1;
DECLARE @CodigoCidadeFinal INT = 3;
DECLARE @EstadoInicial VARCHAR(2) = 'SP';
DECLARE @EstadoFinal VARCHAR(2) = 'RJ';

SELECT 
    Clientes.Codigo_Cliente, 
    Clientes.Nome AS NomeCliente, 
    Clientes.Telefone, 
    Clientes.Endereco, 
    Clientes.Bairro, 
    Clientes.Complemento, 
    Clientes.E_mail, 
    Cidades.Nome AS NomeCidade, 
    Cidades.Estado
FROM 
    Clientes
INNER JOIN 
    Cidades ON Clientes.Codigo_Cidade = Cidades.Codigo_Cidade
WHERE 
    (@CodigoClienteInicial IS NULL OR Clientes.Codigo_Cliente >= @CodigoClienteInicial)
    AND (@CodigoClienteFinal IS NULL OR Clientes.Codigo_Cliente <= @CodigoClienteFinal)
    AND (@CodigoCidadeInicial IS NULL OR Clientes.Codigo_Cidade >= @CodigoCidadeInicial)
    AND (@CodigoCidadeFinal IS NULL OR Clientes.Codigo_Cidade <= @CodigoCidadeFinal)
    AND (@EstadoInicial IS NULL OR Cidades.Estado >= @EstadoInicial)
    AND (@EstadoFinal IS NULL OR Cidades.Estado <= @EstadoFinal)


	!<
	SELECT * FROM Clientes WHERE (Codigo_Cliente >= COALESCE(:CodigoClienteInicial, Codigo_Cliente) AND
                                  Codigo_Cliente <= COALESCE(:CodigoClienteFinal, Codigo_Cliente)) AND
								   (Codigo_Cidade = COALESCE(:CodigoCidade, Codigo_Cidade)) AND
								         (Estado >= COALESCE(:EstadoInicial, Estado) AND
										  Estado <= COALESCE(:EstadoFinal, Estado))