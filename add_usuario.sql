

CREATE LOGIN teste WITH PASSWORD = 'teste';

USE CadastroClientes;
CREATE USER teste FOR LOGIN teste;

GRANT SELECT, INSERT, UPDATE, DELETE ON DATABASE::CadastroClientes TO teste;

