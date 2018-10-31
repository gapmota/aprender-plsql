/* -------------------------------------------------------------------------------
         	   Script demonstrando o uso da condição IF em PLSQL
   ------------------------------------------------------------------------------- */
/* -------------------------------------------------------------------------------------------------------------------
    IF é uma condição dentro de um programa que se for atendida executa uma determinada linha de código, e se não for
    atendida executa outra determinada linha de código.
   ------------------------------------------------------------------------------------------------------------------- */

-- Bloco de declaração de variáveis
DECLARE

V_NUM NUMBER;

-- Insere o valor 1 na variável "V_NUM"
V_NUM := 1;

-- Início da execução do programa
BEGIN

-- Início do IF - Nessa parte o programa verifica se a variável não é nula
 IF (V_NUM IS NOT NULL) THEN

-- Se a condição for atendida a mensagem "A variável não é nula" aparecerá para o usuário
  DBMS_OUTPUT.PUT_LINE('A variável não é nula');

-- Fim do IF
 END IF;

-- Fim da execução do programa
END;