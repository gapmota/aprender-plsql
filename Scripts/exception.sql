/* -------------------------------------------------------------------------------
         		Script demonstrando o uso de exception
   ------------------------------------------------------------------------------- */

/* --------------------------------------------------------------------------------------------------------------------------
    Erros de tempo de execução surgem de falhas de design, erros de codificação, falhas de hardware e muitas outras fontes. 
    Embora não seja possível prever todos os erros possíveis, você pode planejar o tratamento de determinados tipos de erros 
    significativos para o seu programa PL/SQL, e esse tratamento é feito pelo excpetion. 
   -------------------------------------------------------------------------------------------------------------------------- */

-- Bloco de declaração de variáveis
DECLARE

V_NUM NUMBER;

-- Inicio da execução do programa
BEGIN

     -- Nessa parte é inserido um texto em uma variável do tipo "NUMBER", forçando que um erro aconteça e o programa seja encaminho para o "EXCEPTION"
     V_NUM := "Número aleatório";

     -- Quando algum erro acontece o programa vem para cá, para o tratamento do erro
     EXCEPTION

     -- "OTHERS" quer dizer que o erro é genérico, mas tem outros tipos como por exemplo "NO_DATA_FOUND" que ocorre quando um dado não é encontrado
     WHEN OTHERS THEN

         -- Essa parte é o que vai aparecer na tela para o usuário, nesse caso uma tela com "ORA-20000: O número está recebendo uma String"
         RAISE_APPLICATION_ERROR(-20000, 'O número está recebendo uma String.');

END;
