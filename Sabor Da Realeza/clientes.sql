drop table clientes
create table clientes 
(
	clieCodigo		int			identity(1,1)		,
	clieNome		varchar(50)						,
	clieEmail		varchar(50)						,
	clieTelefone	varchar(50)						,
	clieTipo        varchar(20)						,
	clieMensagem	varchar(200)					,
	constraint pk_clientes primary key (clieCodigo)	
)	

insert into clientes (clieNome, clieEmail, clieTelefone, clieTipo, clieMensagem)
values ('Felipe','1.1@aa','123456')

select * from clientes

---------------------------------------------------------------
drop table produtos
create table produtos
(
	prodCodigo		int identity (1,1)					,
	prodNome		varchar(50)							,
	prodValor		money								,
	prodQtdEstoque		int								,
	prodQtdMinima	int									,
	constraint pk_produtos primary key (prodCodigo)	
)

insert into produtos(prodNome, prodValor, prodQtdEstoque, prodQtdMinima)
	values ('Bolos', 14,20,4)

select * from produtos

---------------------------------------------------------------
drop table pedidos
create table pedidos
(
	pedNumero		int identity(1,1)					,
	pedData			datetime							,
	pedValor		money								,
	pedCodClie		int									,
	constraint	pk_pedidos primary key (pedNumero)		,
	constraint	fk_clientes foreign key (pedCodClie) references clientes		
)

select * from pedidos