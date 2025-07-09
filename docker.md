# # Anato
 de docker 
## O que é um Docker: 
    É uma "Maquina" do zero que eu posso montar um ambiente virtual para poder fazer teste isolados de palicações, muito útil pois apenas tendo conexão com a internet ja tem acesso ao ambiente e preparado para uso de qualquer maquina basta apenas entra e subir o docker e rodar o software dentro dele. Sem ser necessario uma maquina virtual completa para fazer isso.
    

| Característica           | Docker Container                          | Máquina Virtual                           |
|--------------------------|-------------------------------------------|-------------------------------------------|
| Kernel                   | Compartilha com o host                    | Possui seu próprio kernel                 |
| Overhead                 | Leve (executa direto no sistema host)     | Pesado (emula hardware e sistema inteiro) |
| Inicialização            | Muito rápida (em segundos)                | Mais lenta (pode levar minutos)           |
| Isolamento               | A nível de processo e sistema de arquivos | Total (nível de hardware)                 |
| Performance              | Próxima do nativo                         | Menor, devido à virtualização             |
| Tamanho da imagem        | Leve (geralmente em MB)                   | Pesada (geralmente em GB)                 |
| Uso do sistema host      | Compartilhado (mesmo kernel e recursos)   | Separado (virtualização completa)         |

## Container 

Ele usar de namespacing e control group para poder separa por total o ambiente em si arquivado principalmente durante o processo antes do kernel, para ter separacao total do sistema externo.

## Imagen

E um arquivo que salva tudo que e necessario para um acao e codigo funcionar ou execucao como camadas de codigo , bibliotecas necessarias, dependencias e ate arquivos de execucao.
Uma imagen nao roda por si so e tambem nao consegue ser alterada somente a transformando num container para poder modifica-la ou poder dar run nela.
Em si ela serva como uma print do que e necesseario ter no ambiente para ele poder rodar e assim com base nesse blueprint o container ser criado e tudo necessario para o ambiente funcionar.
Processo que transforma uma imagen em um container "Ficara em uma pequena sessao do disco rigido que o kernel ira isolar"

## Volumes 

Usam rprivate propagação de ligação (privada recursiva), e a propagação de ligação não é configurável para volumes. 

São dados persistentes de um  contêiners, criados e gerenciados pelo docker. e armezado no Host do docker e semelhante das montagens de vinculação, exceto volumes que são direcianados.
O porque usar principalmente por cause de dados importantes durante os teste. As montagens binds dependam da estrutura de diretórios e do sistema operacional da máquina host, os volumes são totalmente gerenciados pelo Docker. Volumes são uma boa opção para os seguintes casos de uso:

    É mais fácil fazer backup ou migrar volumes do que vincular montagens.
    Você pode gerenciar volumes usando comandos da CLI do Docker ou a API do Docker.
    Os volumes funcionam em contêineres Linux e Windows.
    Os volumes podem ser compartilhados com mais segurança entre vários contêineres.
    Novos volumes podem ter seu conteúdo pré-preenchido por um contêiner ou compilação.
    Quando sua aplicação requer E/S de alto desempenho.

Não e uma boa opção para acessar os arquivos pois e gerenciados pelo proprior docker montagens de vinculação e melhor opção para acessor os arquivos host.
Mais efeciente e ele usar o drive do kernel linux para armazenamento e principalmente união dos arquivos. Essa abstração extra e reduz o desempenho em coparação a uso de volume, que gravam diretamente no host.
Se não gerar arquivos persistenes faz tmpfs são dados virtuais na memoria ram boa opção para seu container gerar dados. 

Mesmo com o container destruidor , com persistencia volume os dados não são perdidos mais sua camada de transação sim.
