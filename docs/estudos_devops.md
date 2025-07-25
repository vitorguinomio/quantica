# Documento com objetivo de salva os estudos
Aqui vai ficar salvo todos cursos e materias e passo a passo para se torna um desenvolvedor completo e saber a diferença entre todos.

## Conteúdo a estudar e o motivo

### Docker --> Tecnologia importante para ter o ambiente sempre configurado para fazer test e até mesmo desenvolver. O necessario a se estudar e :
### (Pratica em pyhton)
*** Cursos para ver o conteudo: https://www.youtube.com/watch?v=OERbOJZwGAU&list=PLViOsriojeLrdw5VByn96gphHFxqH3O_N ***

~~Imagens: **Aprenda a criar imagens com Dockerfile e entender como funcionam as camadas.**~~
https://www.youtube.com/watch?v=X2hpxp3Kq6A
https://www.youtube.com/watch?v=yhyc3-Namto


~~Containers: **Entenda como instanciar, gerenciar e interagir com containers.**~~
https://www.youtube.com/watch?v=X2hpxp3Kq6A

~~Volumes: **Use volumes para persistir dados entre execuções de containers.**~~

Networks: **Crie redes Docker para comunicação entre containers com diferentes drivers (bridge, host...).**

Dockerfile: **Escreva instruções para construir imagens personalizadas e otimizadas.**

Docker Compose: **Orquestre múltiplos containers com um único arquivo docker-compose.yml.**

Multistage builds: **Reduza o tamanho de suas imagens separando build e runtime.**

Criação de ambientes: **Monte ambientes completos com banco, cache e app usando Compose.**

Variáveis de ambiente: **Injete configurações dinâmicas nos containers com variáveis ou .env.**

Bind mounts vs Volumes: **Entenda quando usar arquivos locais (bind) ou volumes gerenciados pelo Docker.**

Rede entre containers: **Aprenda a conectar containers em redes isoladas ou compartilhadas.**

Persistência de dados (PostgreSQL, Redis): **Use volumes para manter dados de bancos após reiniciar containers.**

Healthchecks e restart policies: **Configure verificação de saúde e reinício automático de containers.**

Docker Swarm ou Kubernetes: **Estude orquestração de containers para escalar e gerenciar aplicações.**

CI/CD com Docker: **Automatize testes, builds e deploys com pipelines usando Docker.**

Segurança (docker scan): **Escaneie vulnerabilidades e reduza a superfície de ataque nas imagens.**

Monitoramento (Prometheus, Grafana, cAdvisor): **Colete e visualize métricas de containers em tempo real.**

Otimização de imagens: **Use .dockerignore, cache de camadas e base mínima para imagens mais leves.**

ELK Stack: **Centralize e visualize logs dos containers com Elasticsearch, Logstash e Kibana.**

Deploys automáticos: **Configure pipelines e triggers para fazer deploy contínuo com containers.**

Docker + AWS/GCP/Azure: **Aprenda a rodar containers em nuvem usando ECS, EKS, GKE ou Azure Container Apps.**


### Python as bibliotecas mais essenciais principalmente para banco de dados

#### Pandas
*** https://www.youtube.com/playlist?list=PL5TJqBvpXQv5f0iJg3Fv9ZF0GC4MiK5c4 ***

Leitura e escrita de dados (CSV, Excel, JSON, SQL): <Domine o uso de read_ e to_ para importar/exportar dados com facilidade.**

DataFrames e Series: **Entenda como manipular e estruturar dados tabulares em objetos pandas.**

Filtros e seleções: **Aprenda a usar .loc, .iloc, e máscaras booleanas para extrair dados com precisão.**

Transformações e limpeza de dados: **Use .apply(), .replace(), .dropna(), .fillna() para limpar e transformar datasets.**

Agrupamentos e agregações (groupby): **Agrupe dados e aplique operações como soma, média e contagem de forma eficiente.**

Merge, join e concatenação: **Combine múltiplos DataFrames de forma flexível, como faria com tabelas SQL.**

Trabalhar com datas e tempos: **Use pd.to_datetime, reamostragem e diferenciais para lidar com séries temporais.**

#### mysqlconnector
*** https://www.youtube.com/watch?v=41HPcgf2F6o ***

Conexão ao banco MySQL: **Use connect() com host, user e password para iniciar a conexão.**

Executar queries SQL (cursor.execute): **Envie comandos SQL para consultar, inserir ou atualizar dados.**

Manipulação de resultados (fetchone, fetchall): **Recupere dados e transforme-os em estruturas Python úteis.**

Inserção e transações: **Entenda como enviar dados com segurança e confirmar com .commit().**

Segurança e prepared statements: **Proteja contra SQL Injection usando parâmetros seguros em consultas.**


#### Sqlachamy
*** https://www.youtube.com/watch?v=woKYyhLCcnU&list=PLlAbYrWSYTiN7bNJEYzULnO2cUvF8v3vY ***

Conceito de ORM (Object Relational Mapping): **Aprenda a mapear tabelas SQL em classes Python para trabalhar com banco via objetos.**

Criação de engine e conexão: **Configure sua URL de conexão e crie o engine com create_engine().**

Modelagem de tabelas com classes (Declarative Base): **Defina a estrutura do banco como classes com atributos e tipos de dados.**

Inserção, consulta e atualização com ORM: **Use session.add(), query(), filter() para interagir com os dados como objetos.**

Expressões SQL com SQLAlchemy Core: **Escreva SQL programaticamente sem usar ORM, com foco em performance e controle.**

Integração com Pandas: **Utilize pd.read_sql() e to_sql() com engine SQLAlchemy para manipulação híbrida.**


#### psycopg2 
*** https://www.youtube.com/watch?v=qw--VYLpxG4 ***

Conexão ao PostgreSQL: **Estabeleça conexão com connect() e use parâmetros como host, dbname e user.**

Executar comandos e queries: **Use cursores para enviar SQL, inclusive comandos DDL e DML.**

Gerenciamento de transações: **Controle commits e rollbacks manualmente para garantir consistência.**

Uso seguro com parâmetros: **Evite SQL injection usando o sistema de parâmetros do psycopg2.**

Integração com objetos JSON e arrays do Postgres: **Trabalhe com os tipos avançados do PostgreSQL com suporte nativo da biblioteca.**


### Linux (Nobara linux --> base fedora)
#### (Fazer todo o estudo em uma machine virtual para não estraga a de uso proprio)
#### Docker e KVM melhores opções para fazer esses test
*** Curso: https://www.youtube.com/playlist?list=PLHz_AreHm4dksnH2jVTIVNviIMBVYyJY3 ***

Aprender a usar o terminal: **saber qual linguagem ela usar**

O que compõe a distrito que se usar: **Seus leitor de arquivos (audio, text, softwares**
Saber suar a interface e o terminal para fazer coisas basicas.

Saber usar gerenciador de pacote ( Appimage ,Flatpak, pip): **saber gerenciar , debugar pacotes.**

Network Management(IP, DNS , FireWall): **saber como funcionar tanto como por terminal e pela interface.**

UFC tab(storage management) : **Criar pontos de montagens , por meio comando e interface.**

SYSTEMD : **saber gerencia os processos do sistema.**

Logs e onde encontra-los.

    system automation: 
        Ansible , terraform, shellscript --> (automatiza)
        bacula --> para backup 
        prometheus, grafana --> para monitorar o seu sistema.

### Github
*** https://www.youtube.com/watch?v=DqTITcMq68k ***
~~git init, clone, add, commit, status, log: **Comandos base para versionar e acompanhar alterações no código.**~~

~~git push/pull e remote origin: **Envie e receba código entre seu repositório local e o GitHub.**~~

git branch e merge: **Gerencie múltiplas versões do código com branches e fusões.**

git stash, revert, reset e checkout: **Corrija erros, recupere versões e gerencie alterações com segurança**

Criar repositórios e configurar SSH/Token: **Crie repositórios no GitHub e conecte com autenticação segura.**

README.md profissional: **Documente seu projeto com markdown usando estrutura, badges, imagens e instruções claras.**

Commits semânticos e mensagens claras: **Use convenções como feat, fix, docs para organizar o histórico.**

Issues e Labels: **Organize bugs, tarefas e melhorias com etiquetas personalizadas.**

Pull Requests (PR) e Code Review: **Trabalhe em equipe com revisão de código e boas práticas de colaboração.**

GitHub Actions (CI/CD): **Automatize testes, builds e deploys com fluxos de trabalho YAML no GitHub.**

GitHub Projects e Milestones: **Planeje tarefas com quadros kanban e cronogramas no estilo ágil.**

Templates de Issues e PRs: **Padronize contribuições com templates automáticos para colaboradores.**

Releases e Versionamento: **Marque versões estáveis do seu código com tags e notas de versão.**

GitHub Pages: **Crie sites estáticos diretamente a partir do repositório (portfólios, documentação).**

Segurança e dependabot: **Monitore vulnerabilidades automaticamente e use CI para verificação de pacotes.**

Colaboração e Forks: **Trabalhe em projetos open-source com forks e contribuições externas.**



### VIM 
#### Conceitos Fundamentais

Modos do VIM: normal, inserção, visual e comando.

Entrar e sair: vim arquivo.txt, :w, :q, :wq, :q!

Movimentação básica: h (esquerda), j (baixo), k (cima), l (direita)

2. Edição de Texto

Inserir texto: i, I, a, A, o, O

Deletar: x, dd, d$, d0, dG

Copiar e colar: yy, p, P, :registers

Desfazer/refazer: u, Ctrl + r

3. Busca e Substituição

Buscar: /texto, n, N

Substituir: :s/texto1/texto2/g, :%s/texto1/texto2/gc

4. Trabalho com Múltiplos Arquivos e Buffers

Abrir múltiplos arquivos: vim arquivo1 arquivo2

Alternar entre buffers: :bn, :bp, :ls, :b#

Divisões de tela: :split, :vsplit, Ctrl+w para navegar

5. Plugins e Configuração Avançada

.vimrc: Arquivo de configuração do VIM

Gerenciador de plugins: vim-plug

Plugins populares: NERDTree, vim-airline, fzf.vim, coc.nvim

6. Macetes e Produtividade

Macros: q[a-z], comandos, q, executar: @[a-z]

Atalhos personalizados no .vimrc

Explorar comandos como :help, :set number, :set paste

## 📅 Roteiro de Estudo Semanal para PL/pgSQL

| Semana | Conteúdo                     | Objetivo                                               |
|--------|------------------------------|--------------------------------------------------------|
| 1      | Sintaxe e funções básicas    | Criar funções simples com `RETURN`, `IF`, e variáveis  |
| 2      | Loops, cursores e exceções   | Controlar fluxo com `LOOP`, `WHILE`, `EXCEPTION`       |
| 3      | Gatilhos e procedures        | Automatizar ações com `TRIGGER` e `PROCEDURE`          |
| 4      | Integração com Python        | Usar `psycopg2` ou `SQLAlchemy` para chamar funções    |













