# Pandas

Dados estruturados --> sao dados que posso colocar em tabelas ou seja dados com definicoes e info, ocupar menos espaco .(obs: nomarlmente corresponde 20% dos dados de uma empresa)
Dados nao estruturados --> nao e possivel colocar em tabela como imagens ,audio video e etc, ocupar mais espaco. (obs : corresponde a 80% dos dados de uma empresa)

Tabelas com dados o panda apelida de DataFrame.

Tipos de dados
    1. Dados numericos : analise quantitativa ele.
        Discreto(precisa se intepretado o valor) e contavel. 
        Continuo e tambem para medidas e nao tem limite de medidas e usado em FLOAT normalmente(Se colocar tipos de grupos pode virar categorico).
    2. Categorico : analise qualitativa serve como  rotulos para categorias.
        Nominal, nao tem uma ordem e simplesmente categorias existente, TRUE E FALSE e um tipo nominal
        Ordinal, tem uma ordem como as categorias de roupa como (P, M, G).
    3. String : Sao tipos de dados textos para poder extrair informacoes
    4. Datas : Sao strings que ja identifica datas e posso quebra-las para fazer tipos de leituras especificas

    OBS: A categorias nao se extremista pode mudar de acordo com o problema e sua complexidade exemplo e meses do ano que pode ser do tipo numerico discreto ou do tipo categorico ordinal e como se vai determinar isso e como se model seu problema.
Casos especiais
    Pode ser te o caso que valores categoricos seja representado por numeros mais isso nao o torna necessariamente numerico, exemplo e como avaliacoes que sao dadas em estrelas (1, 2 , 3 , 4 e 5 estrelas). Uma forma de entender isso e saber que apesar de ter uma avalicao com 1 estrela e outra com 2 estrelas que quando somar vai virar 3 estrelas. Pode ser usado apenas como um indentificador 
