/* -------------------------------------------------------------------------------
         		Script demonstrando o uso de cursor
   ------------------------------------------------------------------------------- */
/* --------------------------------------------------------------------------------------------------------------------------
    Em alguns casos necessitamos de espaços de armazenamento mais complexos que as variáveis, como uma matriz de informação 
    resultada de uma consulta SQL, neste case se faz necessário o uso de cursores. 
   -------------------------------------------------------------------------------------------------------------------------- */
/* --------------------------------------------------------------------------------------------------------------------------
    Vamos imaginar que existe uma tabela cliente nomeada "TB_CLIENTE", e nessa tabela existe o campo "NOME_CLIENTE" que 
    guarda o nome dos clientes, e com isso temos o script a seguir.
   -------------------------------------------------------------------------------------------------------------------------- */

-- Bloco de declaração de variáveis
DECLARE

-- Declarando o CURSOR com o nome "CUR_CLI" e inserindo todos os registros através do SELECT
CURSOR CUR_CLI IS
SELECT * FROM TB_CLIENTE;

-- Início da execução do programa
BEGIN

-- Criando um FOR com o nome "REG_CLI" que irá executar até a ultima linha do "CUR_CLI"
  FOR REG_CLI IN CUR_CLI

-- "LOOP" faz executar o que estiver dentro dele até o FOR finalizar
    LOOP

-- Exibe o nome do cliente
	DBMS_OUTPUT.PUT_LINE(REG_CLI.NOME_CLIENTE);
    END LOOP;
END;