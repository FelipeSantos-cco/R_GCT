CREATE DATABASE IF NOT EXISTS bd_R_testes;

CREATE TABLE IF NOT EXISTS registro(
	id_registro INT PRIMARY KEY AUTO_INCREMENT
    , dataHora DATETIME
    , valor_CPU DECIMAL(5,2)    
	, valor_ram DECIMAL(5,2)
    , valor_disco DECIMAL(5,2)
);