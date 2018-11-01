﻿/* -------------------------------------------------------------------------------
         	    Script demonstrando o uso da saída DBMS_OUTPUT
   ------------------------------------------------------------------------------- */
/* --------------------------------------------------------------------------------------------------------
    DBMS é um pacote interno que permite exibir a saída, depurar informações e enviar mensagens de blocos,
    subprogramas, pacotes e acionadores de PL/SQL.
   -------------------------------------------------------------------------------------------------------- */

-- Bloco de declaração de variáveis
DECLARE

V_NOME VARCHAR (30);

-- Início da execução do programa
BEGIN

	-- Inserindo o nome "Gabriela Garcia" na variável "V_NOME"
	V_NOME := "Gabriela Garcia";

	-- Exibindo o conteúdo da variável "V_NOME" utilizando DBMS_OUTPUT
	DBMS_OUTPUT.PUT_LINE(V_NOME);

-- Fim da execução do programa
END;
