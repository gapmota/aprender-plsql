/* -------------------------------------------------------------------------------
         Como criar um script com o uso de parâmetros definidos pelo usuário
   ------------------------------------------------------------------------------- */
   
-- Bloco de declaração de variáveis/Cursor
DECLARE
   
   V_NOME VARCHAR(30);
   
-- Bloco de execução
BEGIN 
  
      -- A função NVL é específica do Oracle e só aceita duas expressões de qualquer tipo como entrada.
      -- Se a primeira expressão for nula, a função retornará a segunda expressão. Caso contrário, será retornada a primeira expressão.
      -- "&Nome" O sinal "&" chama a caixa de variáveis e tudo que vem depois do mesmo é o titulo que o usuário irá visualizar, 
      -- essa "Caixa de variáveis" que o usuário verá e definirá o valor dessa variável.
      V_NOME := NVL(('&Nome'),NULL);
      
      -- Verificação se a variável "V_NOME" não é nula
      IF (V_NOME IS NOT NULL) THEN
        
         -- Saída com a variável usando "DBMS"
         DBMS_OUTPUT.PUT_LINE('Nome do usuário: ' || V_NOME);
      END IF;
END;
