CREATE DATABASE quimica_atomica
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE quimica_atomica;

CREATE TABLE elementos (
    numero_atomico INT PRIMARY KEY,
    simbolo VARCHAR(3) NOT NULL UNIQUE,
    nome VARCHAR(50) NOT NULL UNIQUE,
    massa_atomica DECIMAL(20,10) NOT NULL,
    grupo VARCHAR(20),
    categoria VARCHAR(50),
    periodo INT,
    tipo VARCHAR(20) NOT NULL,
    eletronegatividade DECIMAL(3,2),
    descoberto_em YEAR
);

CREATE TABLE isotopos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    elemento_id INT NOT NULL,
    numero_massa INT NOT NULL,
    massa_isotopica DECIMAL(20,10) NOT NULL,
    abundancia DECIMAL(5,2),
    FOREIGN KEY (elemento_id) REFERENCES elementos(numero_atomico),
    CONSTRAINT uq_isotopo UNIQUE (elemento_id, numero_massa)
);

CREATE TABLE formulas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    formula VARCHAR(100) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    massa_molar DECIMAL(20,4)
);

CREATE TABLE composicoes (
    formula_id INT NOT NULL,
    elemento_id INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    PRIMARY KEY (formula_id, elemento_id),
    FOREIGN KEY (formula_id) REFERENCES formulas(id),
    FOREIGN KEY (elemento_id) REFERENCES elementos(numero_atomico)
);

CREATE TABLE calculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    entrada TEXT NOT NULL,
    massa_calculada DECIMAL(20,4) NOT NULL,
    data_calculo DATETIME DEFAULT CURRENT_TIMESTAMP,
    metodo ENUM('massa_atomica_padrao', 'isotopos_abundancia') NOT NULL
);

INSERT INTO elementos (numero_atomico, simbolo, nome, massa_atomica, grupo, periodo, tipo, eletronegatividade, descoberto_em) VALUES
(1, 'H', 'Hidrogênio', 1.00794, 'Não-metal', 1, 'não-metal', 2.20, 1766),
(6, 'C', 'Carbono', 12.0107, 'Não-metal', 2, 'não-metal', 2.55, 1789),
(8, 'O', 'Oxigênio', 15.9994, 'Não-metal', 2, 'não-metal', 3.44, 1774),
(11, 'Na', 'Sódio', 22.98976928, 'Metal alcalino', 3, 'metal', 0.93, 1807);

INSERT INTO isotopos (elemento_id, numero_massa, massa_isotopica, abundancia) VALUES
(1, 1, 1.007825032, 99.9885),
(1, 2, 2.014101778, 0.0115),
(6, 12, 12.0000000, 98.93),
(6, 13, 13.003354835, 1.07);