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