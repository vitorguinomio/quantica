# anotacoes
linguagem nativa do postgresql

## Como criar uma funcao

### Declarano as var
CREATE FUNCTION nome_da_funcao (parametros_que_vai_usar) RETURNS integer'o que funcao vai retorna 'AS 'Corpo fauncao ou seja todo seu codigo'
    
    $$
        DECLARE --todas as variasveis que vao ser utilizadas
            TIPOS DE VARIAVEIS
                user_id interger; 'Sempre vai ser composto pelo nome da varial e tipo da variavel'
                preco numeric;

Tipo ROWTYPE (copia uma tabela):

    minhalinha nometabela%ROWTYPE; 'vai copiar os mesmo tipo de variaveis de acordo com a tabela indicada antes da % '

    | id     | Nome 'VARCHAR(55)'           | idade 'numeric'|     
    |--------|------------------------------|----------------|
    | 1      | Vitor sousa cardoso          | 22             |
    | 2      | Marluce de sousa santos      | 18             |
    | 3      | Cleiton jose                 | 17             |
    | id     | Nome 'VARCHAR(55)'           | idade 'numeric'|
    |--------|------------------------------|----------------|
    | 1      |                              |                |
    | 2      |                              |                |
    | 3      |                              |                |

 Tipo coluna type (Copia uma coluna):

                meucampo nometabela.nomecoluna%TYPE  'Copia espefico e copia somente de apenas da coluna que eu declarei'

Constant variavel constante:

    k CONSTANT integer := 10; 'declarei uma constante inteira no meu k'

### Declarando os parametros

BEGIN --inicio da implementacao dos codigos 
'Dita toda acao que vai ser feita com os parametros e variaveis Tendo return na sua sintaxe para aponta de todo o processor ao que dever retorna'


    CREATE FUNCTION aplicaTaxa (valor1 real, valor2 real) -- posso colocar o o type dos parametros
    RETURNS real AS 
    $$
    BEGIN
               (1 + 2 ) -- E Posso colocar o valor dos parametros direto na Function
        RETURN (valor1 + valor2) * 0.06; -- script feita para dar return
    END;
    $$ LANGUAGE plpgsql;
        

        END; --> Finaliza a function 
    $$LANGUAGE plpgsql; --> indentifica a linguagem usada para funcao


