Create table Cliente2(
id number (11) primary key,
nome varchar2(30),
datanasc date,
id_endereco number,
id_genero number,
cpf_cnpj number (11),
tipo_cliente varchar (2)
);

Create table Tipo_Cliente(
id number primary key,
descricao varchar2(10)
);

Create table Genero2(
descricao varchar2 (10),
id_genero number primary key
);

Create table Endereçocliente2(
id_endereco number primary key,
tipo varchar2,
logradouro varchar2(120),
complemento varchar (220),
numero number (5),
bairro varchar(50)
);

Create table Bairro2(
id_endereco number primary key,
nome varchar2 (50)
);

Create table Cidade2(
id_endereco number primary key,
nome varchar2 (20)
);

Create table Estado2(
id_endereco number primary key,
nome varchar2 (20)
);

Create table Pais2(
id_endereco  number primary key,
nome varchar2 (20)
);

alter table Cliente2 add constraint fk_tipo
foreign key (id_tipo ) references tipo_cliente(id); 