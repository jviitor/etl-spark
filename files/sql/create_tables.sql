drop table if exists movimento;
drop table if exists cartao;
drop table if exists conta;
drop table if exists associado;

CREATE TABLE associado (
	id integer,
	nome text,
	sobrenome text,
	idade integer,
    email text,
	primary key (id)
);

CREATE TABLE conta (
	id integer,
	tipo text,
	data_criacao timestamp,
	id_associado integer,
	primary key (id),
	constraint fk_associado
		foreign key(id_associado)
			references associado(id)
);

CREATE TABLE cartao (
	id integer not null,
	num_cartao integer,
	nom_impresso text,
	id_conta integer,
    primary key(id),
    id_associado integer,
    constraint fk_conta
		foreign key(id_conta)
			references conta(id),
    constraint fk_associado
		foreign key(id_associado)
			references associado(id)
);

CREATE TABLE movimento (
	id integer not null,
	vlr_transacao decimal(10,2),
	des_transacao text,
	data_movimento timestamp,
    id_cartao integer,
	primary key (id),
	constraint fk_cartao
		foreign key(id_cartao)
			references cartao(id)
);