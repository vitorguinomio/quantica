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

Volumes no Docker: conceito e vantagens

Volumes usam propagação de ligação privada recursiva (rprivate), e a propagação de ligação não é configurável para volumes. Eles são usados para armazenar dados persistentes de contêineres, sendo criados e gerenciados diretamente pelo Docker, armazenados no host. São semelhantes às montagens por vínculo (bind mounts), porém os volumes são mais abstratos e portáveis, sendo independentes da estrutura de diretórios do sistema operacional.

Por que usar volumes?
Volumes são especialmente úteis para armazenar dados importantes durante os testes ou em ambientes de produção. Enquanto as montagens por vínculo dependem da estrutura e do sistema de arquivos do host, os volumes são totalmente gerenciados pelo Docker, oferecendo maior flexibilidade.

Vantagens de usar volumes:

É mais fácil fazer backup ou migração de volumes do que de montagens por vínculo.

Você pode gerenciar volumes pela CLI do Docker ou pela API do Docker.

Funcionam tanto em contêineres Linux quanto Windows.

Permitem compartilhamento seguro entre múltiplos contêineres.

Podem ter seu conteúdo pré-preenchido por um contêiner ou durante a build da imagem.

Oferecem melhor desempenho de E/S (entrada/saída) em comparação com outras opções.

Bind mounts vs Volumes
Embora os volumes sejam mais eficientes para persistência e portabilidade, montagens por vínculo (bind mounts) são melhores quando é necessário acesso direto aos arquivos do host, por exemplo, durante o desenvolvimento. No entanto, essas montagens dependem da estrutura de diretórios do host e podem gerar problemas de portabilidade.

Volumes são considerados mais eficientes porque usam drivers do kernel Linux para armazenamento, e permitem a união de camadas de arquivos, reduzindo abstrações e melhorando o desempenho em comparação a bind mounts.

Outros tipos de armazenamento
Se o contêiner não precisa armazenar dados de forma persistente, pode-se usar tmpfs — que armazena os dados apenas em memória RAM. Essa é uma boa opção para gerar dados temporários e voláteis, já que são descartados quando o contêiner é finalizado.

Vale lembrar que, mesmo que um contêiner seja destruído, dados armazenados em volumes persistem, mas as camadas de transação do contêiner são perdidas.

Tipos de volumes:
Volumes nomeados:

Gerenciados automaticamente pelo Docker.

São independentes da estrutura do sistema de arquivos do host.

Exemplo: docker volume create meu-volume.

Bind mounts (montagens por vínculo):

Dependem da estrutura do sistema operacional.

Permitem acesso direto aos arquivos do host.

Exemplo: docker run -v /caminho/host:/caminho/container.