CREATE TABLE AtividadeComercial (
 idAtividadeComercial INT NOT NULL,
 descricaoAtividadeComercial VARCHAR(100)
);

ALTER TABLE AtividadeComercial ADD CONSTRAINT PK_AtividadeComercial PRIMARY KEY (idAtividadeComercial);


CREATE TABLE Bairro (
 idBairro INT NOT NULL,
 nomeBairro VARCHAR(100) NOT NULL
);

ALTER TABLE Bairro ADD CONSTRAINT PK_Bairro PRIMARY KEY (idBairro);


CREATE TABLE DDD (
 idDDD INT NOT NULL,
 numeroDDD INT NOT NULL
);

ALTER TABLE DDD ADD CONSTRAINT PK_DDD PRIMARY KEY (idDDD);


CREATE TABLE DDI (
 idDDI INT NOT NULL,
 numeroDDI INT NOT NULL
);

ALTER TABLE DDI ADD CONSTRAINT PK_DDI PRIMARY KEY (idDDI);


CREATE TABLE Pais (
 idPais INT NOT NULL,
 nomePais VARCHAR(100) NOT NULL
);

ALTER TABLE Pais ADD CONSTRAINT PK_Pais PRIMARY KEY (idPais);


CREATE TABLE Sexo (
 idSexo INT NOT NULL,
 descricaoSexo VARCHAR(100) NOT NULL,
 siglaSexo VARCHAR(100) NOT NULL
);

ALTER TABLE Sexo ADD CONSTRAINT PK_Sexo PRIMARY KEY (idSexo);


CREATE TABLE TipoFone (
 idTipoFone INT NOT NULL,
 siglaTipoFone VARCHAR(100) NOT NULL,
 descricaoTipoFone VARCHAR(100)
);

ALTER TABLE TipoFone ADD CONSTRAINT PK_TipoFone PRIMARY KEY (idTipoFone);


CREATE TABLE TipoLogradouro (
 idTipoLogradouro INT NOT NULL,
 siglaTipo VARCHAR(100),
 nomeTIpo VARCHAR(100) NOT NULL
);

ALTER TABLE TipoLogradouro ADD CONSTRAINT PK_TipoLogradouro PRIMARY KEY (idTipoLogradouro);


CREATE TABLE UF (
 idUF INT NOT NULL,
 siglaUF VARCHAR(10),
 nomeUF VARCHAR(100) NOT NULL,
 idPais INT
);

ALTER TABLE UF ADD CONSTRAINT PK_UF PRIMARY KEY (idUF);


CREATE TABLE Cidade (
 idCidade INT NOT NULL,
 nomeCidade VARCHAR(100) NOT NULL,
 idUF INT
);

ALTER TABLE Cidade ADD CONSTRAINT PK_Cidade PRIMARY KEY (idCidade);


CREATE TABLE Logradouro (
 idLogradouro INT NOT NULL,
 nomeLogradouro VARCHAR(100) NOT NULL,
 idTipoLogradouro INT
);

ALTER TABLE Logradouro ADD CONSTRAINT PK_Logradouro PRIMARY KEY (idLogradouro);


CREATE TABLE OrgaoExpeditor (
 idOrgaoExpeditor INT NOT NULL,
 nomeOrgaoExpeditor VARCHAR(100) NOT NULL,
 idUF INT
);

ALTER TABLE OrgaoExpeditor ADD CONSTRAINT PK_OrgaoExpeditor PRIMARY KEY (idOrgaoExpeditor);


CREATE TABLE Endereco (
 idEndereco INT NOT NULL,
 cep VARCHAR(100) NOT NULL,
 idBairro INT,
 idCidade INT,
 idLogradouro INT
);

ALTER TABLE Endereco ADD CONSTRAINT PK_Endereco PRIMARY KEY (idEndereco);


CREATE TABLE Fornecedor (
 idFornecedor INT NOT NULL,
 nomeAbreviadoFornecedor VARCHAR(100),
 nomeCompletoFornecedor VARCHAR(100),
 cnpj VARCHAR(100),
 numero INT,
 complemento VARCHAR(100),
 idEndereco INT
);

ALTER TABLE Fornecedor ADD CONSTRAINT PK_Fornecedor PRIMARY KEY (idFornecedor);


CREATE TABLE NotaCompra (
 idNotaCompra INT NOT NULL,
 dataNota DATE,
 totalNota FLOAT(10),
 descontoTotal FLOAT(10),
 valorLiquido FLOAT(10),
 idFornecedor INT
);

ALTER TABLE NotaCompra ADD CONSTRAINT PK_NotaCompra PRIMARY KEY (idNotaCompra);


CREATE TABLE Produto (
 idProduto INT NOT NULL,
 precoCustoAtual FLOAT(10),
 quantidadeEstoque INT,
 nomeProduto VARCHAR(100),
 codBarras VARCHAR(100),
 precoVendaAtual FLOAT(10),
 idFornecedor INT
);

ALTER TABLE Produto ADD CONSTRAINT PK_Produto PRIMARY KEY (idProduto);


CREATE TABLE AtividadeComercial_Fornecedor (
 idFornecedor INT NOT NULL,
 idAtividadeComercial INT NOT NULL
);

ALTER TABLE AtividadeComercial_Fornecedor ADD CONSTRAINT PK_AtividadeComercial_Fornecedor PRIMARY KEY (idFornecedor,idAtividadeComercial);


CREATE TABLE Cliente (
 idCliente INT NOT NULL,
 primeiroNomeCliente VARCHAR(100) NOT NULL,
 nomeMeioCliente VARCHAR(100),
 ultimoNomeCliente VARCHAR(100),
 nomeAbreviadoCliente VARCHAR(100),
 nomeCompletoCliente VARCHAR(100),
 cpf VARCHAR(100),
 cnpj VARCHAR(100),
 idSexo INT,
 numero INT NOT NULL,
 complemento VARCHAR(100),
 idEndereco INT,
 numeroDoc VARCHAR(100),
 dataExpedicao DATE,
 idOrgaoExpeditor INT
);

ALTER TABLE Cliente ADD CONSTRAINT PK_Cliente PRIMARY KEY (idCliente);


CREATE TABLE ClienteEmpresa (
 idClienteEmpresa CHAR(10) NOT NULL,
 primeiroNomeEmpresa VARCHAR(10) NOT NULL,
 nomeMeioEmpresa VARCHAR(10),
 ultimoNomeEmpresa VARCHAR(10),
 nomeAbreviadoEmpresa CHAR(10),
 cnpj VARCHAR(10) NOT NULL,
 numero INT NOT NULL,
 complemento VARCHAR(10),
 idEndereco INT,
 caminhoFoto VARCHAR(10),
 descricaoFoto VARCHAR(10)
);

ALTER TABLE ClienteEmpresa ADD CONSTRAINT PK_ClienteEmpresa PRIMARY KEY (idClienteEmpresa);


CREATE TABLE EmailCliente (
 idEmailCliente INT NOT NULL,
 descricaoEmail VARCHAR(100) NOT NULL,
 idCliente INT
);

ALTER TABLE EmailCliente ADD CONSTRAINT PK_EmailCliente PRIMARY KEY (idEmailCliente);


CREATE TABLE EmailFornecedor (
 idEmailFornecedor INT NOT NULL,
 descricaoEmail VARCHAR(100),
 idFornecedor INT
);

ALTER TABLE EmailFornecedor ADD CONSTRAINT PK_EmailFornecedor PRIMARY KEY (idEmailFornecedor);


CREATE TABLE FoneCliente (
 idFoneCliente INT NOT NULL,
 numeroFone VARCHAR(100) NOT NULL,
 idCliente INT,
 idDDI INT,
 idDDD INT,
 idTipoFone INT
);

ALTER TABLE FoneCliente ADD CONSTRAINT PK_FoneCliente PRIMARY KEY (idFoneCliente);


CREATE TABLE FoneFornecedor (
 idFoneFornecedor INT NOT NULL,
 numeroFone VARCHAR(100),
 idDDI INT,
 idDDD INT,
 idTipoFone INT,
 idFornecedor INT
);

ALTER TABLE FoneFornecedor ADD CONSTRAINT PK_FoneFornecedor PRIMARY KEY (idFoneFornecedor);


CREATE TABLE ItemCompra (
 idNotaCompra INT NOT NULL,
 idProduto INT NOT NULL,
 quantidade INT,
 precoUnitario FLOAT(10)
);

ALTER TABLE ItemCompra ADD CONSTRAINT PK_ItemCompra PRIMARY KEY (idNotaCompra,idProduto);


CREATE TABLE NotaVenda (
 idNotaVenda INT NOT NULL,
 dataNota DATE,
 totalNota FLOAT(10),
 descontoTotal FLOAT(10),
 valorLiquido FLOAT(10),
 idCliente INT
);

ALTER TABLE NotaVenda ADD CONSTRAINT PK_NotaVenda PRIMARY KEY (idNotaVenda);


CREATE TABLE AtividadeComercial_Cliente (
 idAtividadeComercial INT NOT NULL,
 idCliente INT NOT NULL
);

ALTER TABLE AtividadeComercial_Cliente ADD CONSTRAINT PK_AtividadeComercial_Cliente PRIMARY KEY (idAtividadeComercial,idCliente);


CREATE TABLE ItemVenda (
 idProduto INT NOT NULL,
 idNotaVenda INT NOT NULL,
 quantidade INT,
 precoUnitario FLOAT(10)
);

ALTER TABLE ItemVenda ADD CONSTRAINT PK_ItemVenda PRIMARY KEY (idProduto,idNotaVenda);


ALTER TABLE UF ADD CONSTRAINT FK_UF_0 FOREIGN KEY (idPais) REFERENCES Pais (idPais);


ALTER TABLE Cidade ADD CONSTRAINT FK_Cidade_0 FOREIGN KEY (idUF) REFERENCES UF (idUF);


ALTER TABLE Logradouro ADD CONSTRAINT FK_Logradouro_0 FOREIGN KEY (idTipoLogradouro) REFERENCES TipoLogradouro (idTipoLogradouro);


ALTER TABLE OrgaoExpeditor ADD CONSTRAINT FK_OrgaoExpeditor_0 FOREIGN KEY (idUF) REFERENCES UF (idUF);


ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_0 FOREIGN KEY (idBairro) REFERENCES Bairro (idBairro);
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_1 FOREIGN KEY (idCidade) REFERENCES Cidade (idCidade);
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2 FOREIGN KEY (idLogradouro) REFERENCES Logradouro (idLogradouro);


ALTER TABLE Fornecedor ADD CONSTRAINT FK_Fornecedor_0 FOREIGN KEY (idEndereco) REFERENCES Endereco (idEndereco);


ALTER TABLE NotaCompra ADD CONSTRAINT FK_NotaCompra_0 FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor);


ALTER TABLE Produto ADD CONSTRAINT FK_Produto_0 FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor);


ALTER TABLE AtividadeComercial_Fornecedor ADD CONSTRAINT FK_AtividadeComercial_Fornecedor_0 FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor);
ALTER TABLE AtividadeComercial_Fornecedor ADD CONSTRAINT FK_AtividadeComercial_Fornecedor_1 FOREIGN KEY (idAtividadeComercial) REFERENCES AtividadeComercial (idAtividadeComercial);


ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_0 FOREIGN KEY (idSexo) REFERENCES Sexo (idSexo);
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_1 FOREIGN KEY (idEndereco) REFERENCES Endereco (idEndereco);
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_2 FOREIGN KEY (idOrgaoExpeditor) REFERENCES OrgaoExpeditor (idOrgaoExpeditor);


ALTER TABLE ClienteEmpresa ADD CONSTRAINT FK_ClienteEmpresa_0 FOREIGN KEY (idEndereco) REFERENCES Endereco (idEndereco);


ALTER TABLE EmailCliente ADD CONSTRAINT FK_EmailCliente_0 FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente);


ALTER TABLE EmailFornecedor ADD CONSTRAINT FK_EmailFornecedor_0 FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor);


ALTER TABLE FoneCliente ADD CONSTRAINT FK_FoneCliente_0 FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente);
ALTER TABLE FoneCliente ADD CONSTRAINT FK_FoneCliente_1 FOREIGN KEY (idDDI) REFERENCES DDI (idDDI);
ALTER TABLE FoneCliente ADD CONSTRAINT FK_FoneCliente_2 FOREIGN KEY (idDDD) REFERENCES DDD (idDDD);
ALTER TABLE FoneCliente ADD CONSTRAINT FK_FoneCliente_3 FOREIGN KEY (idTipoFone) REFERENCES TipoFone (idTipoFone);


ALTER TABLE FoneFornecedor ADD CONSTRAINT FK_FoneFornecedor_0 FOREIGN KEY (idDDI) REFERENCES DDI (idDDI);
ALTER TABLE FoneFornecedor ADD CONSTRAINT FK_FoneFornecedor_1 FOREIGN KEY (idDDD) REFERENCES DDD (idDDD);
ALTER TABLE FoneFornecedor ADD CONSTRAINT FK_FoneFornecedor_2 FOREIGN KEY (idTipoFone) REFERENCES TipoFone (idTipoFone);
ALTER TABLE FoneFornecedor ADD CONSTRAINT FK_FoneFornecedor_3 FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor);


ALTER TABLE ItemCompra ADD CONSTRAINT FK_ItemCompra_0 FOREIGN KEY (idNotaCompra) REFERENCES NotaCompra (idNotaCompra);
ALTER TABLE ItemCompra ADD CONSTRAINT FK_ItemCompra_1 FOREIGN KEY (idProduto) REFERENCES Produto (idProduto);


ALTER TABLE NotaVenda ADD CONSTRAINT FK_NotaVenda_0 FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente);


ALTER TABLE AtividadeComercial_Cliente ADD CONSTRAINT FK_AtividadeComercial_Cliente_0 FOREIGN KEY (idAtividadeComercial) REFERENCES AtividadeComercial (idAtividadeComercial);
ALTER TABLE AtividadeComercial_Cliente ADD CONSTRAINT FK_AtividadeComercial_Cliente_1 FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente);


ALTER TABLE ItemVenda ADD CONSTRAINT FK_ItemVenda_0 FOREIGN KEY (idProduto) REFERENCES Produto (idProduto);
ALTER TABLE ItemVenda ADD CONSTRAINT FK_ItemVenda_1 FOREIGN KEY (idNotaVenda) REFERENCES NotaVenda (idNotaVenda);


