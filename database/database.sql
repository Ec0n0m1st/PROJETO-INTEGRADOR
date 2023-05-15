-- SCRIPT DE ESTRUTURAÇÃO DO BANCO DE DADOS

-- Comando do promt para criar o banco de dados
-- sqlite3 powerplant.db

-- Comando para executar este script
-- sqlite3 powerplant.db < database.sql

ATTACH DATABASE 'powerplant.db' AS 'powerplant';

CREATE TABLE powerplant.meals(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   nome TEXT NOT NULL,
   preco REAL,
   descricao TEXT NOT NULL,
   imagem TEXT NOT NULL,
   categoria TEXT NOT NULL
);

-- DADOS

INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Salmão com legumes", "55", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-1.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Salada tropical", "25", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-5.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Salada de soja", "30", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-6.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Salada ao pesto", "45", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-12.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Salada com ovos", "25", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-4.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Salada", "30", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-8.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Berinjela", "35", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-7.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Peixe", "45", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-10.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Tofu", "40", "Um quarto do prato com uma proteína magra, como peito de frango grelhado, filé de peixe ou tofu.", "./img/snack/snack-9.jpg", "refeicoes");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Pizza de champions", "55", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-1.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Panquecas salgadas", "45", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-10.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Tacos", "40", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-12.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Hamburguer veg", "40", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-2.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Hamburguer de soja", "40", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-3.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Combo veg", "60", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-4.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Hamburguer de tomate", "40", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-8.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Hamburguer integral", "45", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-7.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Torradas", "20", "Metade do prato com legumes variados, como brócolis, couve-flor, cenoura e abobrinha, preparados no vapor ou assados.", "./img/snacks/snacks-6.jpg", "lanches");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Trufas", "35", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-7.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Bolo de chocolate", "30", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-8.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Bolo de pote", "15", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-9.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Panquecas de chocolate", "35", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-1.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Iorgute com frutas", "20", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-2.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Pudim frutas vermelhas", "30", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-3.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Iorgute com frutas", "15", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-4.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Salada de frutas", "35", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-5.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Trufas", "35", "Smoothie de frutas e vegetais, feito com leite de amêndoa sem açúcar, espinafre fresco, banana e morangos.", "./img/desserts/desserts-6.jpg", "sobremesas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Suco verde", "35", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-1.jpg", "bebidas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Suco de cenoura", "30", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-2.jpg", "bebidas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Suco de laranja", "20", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-3.jpg", "bebidas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Suco de beterraba", "20", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-4.jpg", "bebidas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Suco de kiwi", "20", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-5.jpg", "bebidas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Limonada rosa", "15", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-6.jpg", "bebidas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Suco de pessêgo rosa", "40", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-7.jpg", "bebidas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Milksheik de cacau", "20", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-8.jpg", "bebidas");
INSERT INTO powerplant.meals (nome, preco, descricao, imagem, categoria)
        VALUES ("Suco de laranja rosa", "35", "Suco verde, feito com folhas de espinafre ou couve, pepino, maçã, limão e gengibre. É uma ótima opção para aumentar a ingestão de vitaminas e minerais, além de ser uma fonte natural de energia.", "./img/drinks/drinks-9.jpg", "bebidas");




