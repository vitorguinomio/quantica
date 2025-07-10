# anotacoes
linguagem nativa do postgresql

## Como criar uma funcao
 
    CREATE FUNCTION nome_da_funcao (parametros_que_vai_usar) RETURNS integer'o que funcao vai retorna'
    AS 'Corpo fauncao ou seja todo seu codigo'
    $$
        DECLARE 
            TIPOS DE VARIAVEIS
                user_id interger; 'Sempre vai ser composto pelo nome da varial e tipo da variavel'
                preco numeric;

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

                meucampo nometabela.nomecoluna%TYPE  'Copia espefico e copia somente de apenas da coluna que eu declarei'

                k CONSTANT integer := 10; 'declarei uma constante inteira no meu k'

        --todas as variasveis que vao ser utilizadas
        BEGIN

        --inicio da implementacao dos codigos 

        END; 
    $$LANGUAGE plpgsql; --> indentifica a linguagem usada para funcao


