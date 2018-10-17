DROP SCHEMA proj;
CREATE SCHEMA proj;

CREATE TABLE proj.tb_funcionario(
  	userID		    	INTEGER,
	nome			      VARCHAR(20) NOT NULL,
	sobreNome		    VARCHAR(35) NOT NULL,
	cpf				      VARCHAR(13) NOT NULL UNIQUE,
	rg			  VARCHAR(10) NOT NULL UNIQUE,
	dataNascimento  	  DATE,
	estadoCivil		  INTEGER NOT NULL,              
  	logradouro      VARCHAR(40) NOT NULL,
  	numResidencia   INTEGER NOT NULL,
 	complemento     VARCHAR(15),
  	bairro          VARCHAR(15),
  	cidade          VARCHAR(15) NOT NULL,
  	cep             VARCHAR(9) NOT NULL,
  	estado          VARCHAR(2) NOT NULL,
	codCargo	INTEGER,
	cargaHoraria	NUMERIC,
	salario		NUMERIC(7,2),
	idTag		INTEGER UNIQUE,
  	admissao        DATE NOT NULL,
  	demissao        DATE,
  	CONSTRAINT pk_func_userID PRIMARY KEY(userID)
);

CREATE TABLE proj.tb_contato(
  userID          INTEGER NOT NULL,
  tel             VARCHAR(15),
  cel             VARCHAR(15),
  email           VARCHAR(32),
  CONSTRAINT fk_cont_userID  FOREIGN KEY(userID) REFERENCES proj.tb_funcionario(userID)
);

CREATE TABLE proj.tb_login(
  password        VARCHAR(32) NOT NULL,
  login            TEXT NOT NULL,          
  userID          INTEGER NOT NULL,
  CONSTRAINT fk_login_userID FOREIGN KEY(userID) REFERENCES proj.tb_funcionario(userID)
);

CREATE TABLE proj.tb_departamentos(
  codDep          INTEGER,
  departamento    VARCHAR(10),
  CONSTRAINT pk_codDep PRIMARY KEY(codDep)
);

CREATE TABLE proj.tb_cargos(
	codDep          INTEGER,
	codCargo        INTEGER,
  	cargo           VARCHAR(10),
	CONSTRAINT fk_carg_codDep FOREIGN KEY (codDep) REFERENCES proj.tb_departamentos(codDep)

);

CREATE TABLE proj.tb_pontos(
	userID		INTEGER NOT NULL,
	dia			  DATE NOT NULL,
	entrada		TIME NOT NULL,
	almoco		TIME,
	retorno		TIME,
	saida		  TIME
);
