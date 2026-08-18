add-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/08/2026 às 01:58
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_agenda`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbcontatos`
--

CREATE TABLE `tbcontatos` (
  `idContato` int(11) NOT NULL,
  `nomeContato` varchar(200) NOT NULL,
  `emailContato` varchar(100) NOT NULL,
  `telefoneContato` varchar(50) NOT NULL,
  `enderecoContato` varchar(200) NOT NULL,
  `sexoContato` char(1) NOT NULL,
  `dataNascContato` date NOT NULL,
  `flagFavoritoContato` tinyint(1) NOT NULL,
  `nomeFotoContato` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbcontatos`
--

INSERT INTO `tbcontatos` (`idContato`, `nomeContato`, `emailContato`, `telefoneContato`, `enderecoContato`, `sexoContato`, `dataNascContato`, `flagFavoritoContato`, `nomeFotoContato`) VALUES
(1, 'Davi Emanuel Costa Oliveira', 'daviecostaoliveira@gmail.com', '(84) 99611-1176', 'Rua campo azul, parnamirim RN', 'M', '2001-04-02', 1, ''),
(2, 'Iara Elise da Silva Alves', 'iara.elise0006@gmail.com', '(84) 99134-1934', '', 'F', '2003-07-02', 1, ''),
(3, 'Gabriela Costa Oliveira', 'gabrielacosta@gmail.com', '(84) 95949-4934', '', 'F', '2013-05-03', 0, ''),
(4, 'Roseane Oliveira', 'roseaneoliveira@hotmail.com', '(84) 99023-4239', 'Rua campo azul, parnamirim RN', 'F', '1981-03-02', 0, ''),
(5, 'Sidcley Cavalcanti', 'sidcleycaval@gmail.com', '(84) 998223-1239', '', 'H', '1977-09-21', 0, ''),
(7, 'João Vitor', 'joao.vitor@gmail.com', '(84) 98213-3945', 'Rua josé alfredo medeiros, Parnamirim RN', 'M', '0000-00-00', 0, ''),
(8, 'Lucas Silva', 'lucas.silva@email.com', '(84) 99876-1234', 'Rua das Flores, 123 - Natal/RN', 'M', '1995-04-12', 1, ''),
(9, 'Mariana Souza', 'mariana.souza@email.com', '(84) 98765-4321', 'Av. Afonso Pena, 450 - Natal/RN', 'F', '1998-08-25', 0, ''),
(10, 'Carlos Eduardo', 'carlos.eduardo@email.com', '(84) 99123-4567', 'Rua Salgado Filho, 89 - Parnamirim/RN', 'M', '1987-11-03', 0, ''),
(11, 'Beatriz Costa', 'beatriz.costa@email.com', '(84) 98888-5555', 'Rua Potengi, 302 - Natal/RN', 'F', '2001-01-15', 1, ''),
(12, 'Gabriel Oliveira', 'gabriel.oliveira@email.com', '(84) 99654-3210', 'Av. Engenheiro Roberto Freire, 1500 - Natal/RN', 'M', '1992-06-30', 0, ''),
(13, 'Fernanda Lima', 'fernanda.lima@email.com', '(84) 98111-2233', 'Rua Jaguarari, 780 - Natal/RN', 'F', '1990-09-18', 1, ''),
(14, 'Rafael Alves', 'rafael.alves@email.com', '(84) 99444-7788', 'Av. Prudente de Morais, 2100 - Natal/RN', 'M', '1985-12-05', 0, ''),
(15, 'Juliana Melo', 'juliana.melo@email.com', '(84) 98712-3456', 'Rua Apodi, 54 - Natal/RN', 'F', '1996-03-22', 0, ''),
(16, 'Thiago Martins', 'thiago.martins@email.com', '(84) 99900-1122', 'Rua Maria Lacerda, 990 - Parnamirim/RN', 'M', '2000-07-08', 1, ''),
(17, 'Camila Rocha', 'camila.rocha@email.com', '(84) 98222-3344', 'Av. Bernardo Vieira, 3400 - Natal/RN', 'F', '1993-10-29', 0, ''),
(18, 'Ana Clara Ribeiro', 'ana.ribeiro@email.com', '(84) 98801-1001', 'Rua das Alvoradas, 12 - Natal/RN', 'F', '1994-01-15', 1, ''),
(19, 'Bruno Henrique Paiva', 'bruno.paiva@email.com', '(84) 98802-1002', 'Av. das Brisas, 45 - Parnamirim/RN', 'M', '1988-05-20', 0, ''),
(20, 'Carla Mendonça', 'carla.mendonca@email.com', '(84) 98803-1003', 'Rua dos Navegantes, 108 - Natal/RN', 'F', '2001-09-10', 0, ''),
(21, 'Daniel Farias', 'daniel.farias@email.com', '(84) 98804-1004', 'Rua São José, 77 - Natal/RN', 'M', '1992-12-03', 1, ''),
(22, 'Elena Vasconcelos', 'elena.vasconcelos@email.com', '(84) 98805-1005', 'Av. Ayrton Senna, 1200 - Parnamirim/RN', 'F', '1997-03-28', 0, ''),
(23, 'Felipe Nogueira', 'felipe.nogueira@email.com', '(84) 98806-1006', 'Rua Jaguarari, 430 - Natal/RN', 'M', '1985-07-14', 0, ''),
(24, 'Gabriela Torres', 'gabriela.torres@email.com', '(84) 98807-1007', 'Rua Potengi, 89 - Natal/RN', 'F', '1999-11-05', 1, ''),
(25, 'Hugo Leonardo', 'hugo.leonardo@email.com', '(84) 98808-1008', 'Av. Abel Cabral, 300 - Parnamirim/RN', 'M', '1990-02-18', 0, ''),
(26, 'Isabela Freitas', 'isabela.freitas@email.com', '(84) 98809-1009', 'Rua Trairi, 512 - Natal/RN', 'F', '1996-08-22', 0, ''),
(27, 'João Pedro Silveira', 'joao.silveira@email.com', '(84) 98810-1010', 'Av. Afonso Pena, 920 - Natal/RN', 'M', '2002-04-30', 1, ''),
(28, 'Karen Xavier', 'karen.xavier@email.com', '(84) 98811-1011', 'Rua Mossoró, 140 - Natal/RN', 'F', '1993-06-12', 0, ''),
(29, 'Lucas Gabriel Rocha', 'lucas.rocha@email.com', '(84) 98812-1012', 'Rua Maria Lacerda, 550 - Parnamirim/RN', 'M', '1995-10-08', 0, ''),
(30, 'Mariana Cavalcante', 'mariana.cavalcante@email.com', '(84) 98813-1013', 'Av. Prudente de Morais, 3100 - Natal/RN', 'F', '1989-01-25', 1, ''),
(31, 'Nicolas Andrade', 'nicolas.andrade@email.com', '(84) 98814-1014', 'Rua Ceará-Mirim, 67 - Natal/RN', 'M', '1998-07-19', 0, ''),
(32, 'Olivia Barreto', 'olivia.barreto@email.com', '(84) 98815-1015', 'Rua Fonseca e Silva, 204 - Natal/RN', 'F', '2000-12-11', 0, ''),
(33, 'Paulo Roberto', 'paulo.roberto@email.com', '(84) 98816-1016', 'Av. Bernardo Vieira, 1800 - Natal/RN', 'M', '1984-03-04', 1, ''),
(34, 'Quintino Neto', 'quintino.neto@email.com', '(84) 98817-1017', 'Rua Maxaranguape, 95 - Natal/RN', 'M', '1991-09-16', 0, ''),
(35, 'Renata Aragão', 'renata.aragao@email.com', '(84) 98818-1018', 'Av. Eng. Roberto Freire, 2200 - Natal/RN', 'F', '1997-05-23', 0, ''),
(36, 'Samuel Borges', 'samuel.borges@email.com', '(84) 98819-1019', 'Rua das Dunas, 31 - Parnamirim/RN', 'M', '2003-02-14', 1, ''),
(37, 'Tatiane Campos', 'tatiane.campos@email.com', '(84) 98820-1020', 'Rua Jundiaí, 180 - Natal/RN', 'F', '1992-08-07', 0, ''),
(38, 'Ubirajara Dias', 'ubirajara.dias@email.com', '(84) 98821-1021', 'Rua Apodi, 210 - Natal/RN', 'M', '1986-11-29', 0, ''),
(39, 'Valéria Esteves', 'valeria.esteves@email.com', '(84) 98822-1022', 'Av. Hermes da Fonseca, 840 - Natal/RN', 'F', '1994-04-02', 1, ''),
(40, 'Wagner Franco', 'wagner.franco@email.com', '(84) 98823-1023', 'Rua Seridó, 33 - Natal/RN', 'M', '1987-10-17', 0, ''),
(41, 'Yasmin Guedes', 'yasmin.guedes@email.com', '(84) 98824-1024', 'Rua das Oliveiras, 405 - Parnamirim/RN', 'F', '2001-01-09', 0, ''),
(42, 'Zacarias Hollanda', 'zacarias.hollanda@email.com', '(84) 98825-1025', 'Av. Salgado Filho, 2500 - Natal/RN', 'M', '1990-06-21', 1, ''),
(43, 'Arthur Aguiar', 'arthur.aguiar@email.com', '(84) 98826-1026', 'Rua Princesa Isabel, 112 - Natal/RN', 'M', '1995-12-15', 0, ''),
(44, 'Bárbara Lins', 'barbara.lins@email.com', '(84) 98827-1027', 'Rua Açu, 78 - Natal/RN', 'F', '1993-03-31', 0, ''),
(45, 'Caio Cesar', 'caio.cesar@email.com', '(84) 98828-1028', 'Av. Brabas, 90 - Parnamirim/RN', 'M', '1999-09-04', 1, ''),
(46, 'Debora Secco', 'debora.secco@email.com', '(84) 98829-1029', 'Rua das Rosas, 60 - Natal/RN', 'F', '1988-07-27', 0, ''),
(47, 'Eduardo Luz', 'eduardo.luz@email.com', '(84) 98830-1030', 'Av. Rio Branco, 400 - Natal/RN', 'M', '1996-02-11', 0, ''),
(48, 'Fernanda Montenegro', 'fernanda.m@email.com', '(84) 98831-1031', 'Rua Mipibu, 305 - Natal/RN', 'F', '1985-05-19', 1, ''),
(49, 'Guilherme Arantes', 'guilherme.a@email.com', '(84) 98832-1032', 'Rua Tuiuti, 88 - Natal/RN', 'M', '1991-10-03', 0, ''),
(50, 'Heloísa Perissé', 'heloisa.p@email.com', '(84) 98833-1033', 'Av. Gastão Mariz, 700 - Parnamirim/RN', 'F', '1997-01-22', 0, ''),
(51, 'Igor Cavalera', 'igor.c@email.com', '(84) 98834-1034', 'Rua Cidade Alta, 15 - Natal/RN', 'M', '2002-08-14', 1, ''),
(52, 'Jessica Ellen', 'jessica.e@email.com', '(84) 98835-1035', 'Rua Mossoró, 620 - Natal/RN', 'F', '1994-11-30', 0, ''),
(53, 'Kléber Toledo', 'kleber.t@email.com', '(84) 98836-1036', 'Av. Capitão-Mor Gouveia, 1400 - Natal/RN', 'M', '1989-04-18', 0, ''),
(54, 'Larissa Manoela', 'larissa.m@email.com', '(84) 98837-1037', 'Rua das Palmeiras, 33 - Parnamirim/RN', 'F', '2000-06-05', 1, ''),
(55, 'Marcelo Adnet', 'marcelo.a@email.com', '(84) 98838-1038', 'Rua Felipe Camarão, 210 - Natal/RN', 'M', '1993-09-27', 0, ''),
(56, 'Nathalia Dill', 'nathalia.d@email.com', '(84) 98839-1039', 'Av. Amintas Barros, 990 - Natal/RN', 'F', '1990-03-13', 0, ''),
(57, 'Otávio Muller', 'otavio.m@email.com', '(84) 98840-1040', 'Rua São Tomé, 44 - Natal/RN', 'M', '1986-12-08', 1, ''),
(58, 'Patricia Pillar', 'patricia.p@email.com', '(84) 98841-1041', 'Av. Xavier da Silveira, 450 - Natal/RN', 'F', '1992-05-17', 0, ''),
(59, 'Rodolfo Abrantes', 'rodolfo.a@email.com', '(84) 98842-1042', 'Rua Nova Parnamirim, 102 - Parnamirim/RN', 'M', '1987-01-29', 0, ''),
(60, 'Sabrina Sato', 'sabrina.s@email.com', '(84) 98843-1043', 'Av. Coronel Estevam, 1300 - Natal/RN', 'F', '1998-10-11', 1, ''),
(61, 'Tiago Iorc', 'tiago.i@email.com', '(84) 98844-1044', 'Rua das Orquídeas, 87 - Parnamirim/RN', 'M', '1995-07-06', 0, ''),
(62, 'Vanessa da Mata', 'vanessa.m@email.com', '(84) 98845-1045', 'Rua Praia de Ponta Negra, 50 - Natal/RN', 'F', '1989-02-24', 0, ''),
(63, 'Willian Bonner', 'willian.b@email.com', '(84) 98846-1046', 'Av. Interventor Mário Câmara, 720 - Natal/RN', 'M', '1991-08-19', 1, ''),
(64, 'Xuxa Meneghel', 'xuxa.m@email.com', '(84) 98847-1047', 'Rua das Violetas, 19 - Natal/RN', 'F', '1984-06-27', 0, ''),
(65, 'Yuri Alberto', 'yuri.a@email.com', '(84) 98848-1048', 'Av. Integração, 810 - Parnamirim/RN', 'M', '2001-03-18', 0, ''),
(66, 'Zeca Pagodinho', 'zeca.p@email.com', '(84) 98849-1049', 'Rua do Samba, 100 - Natal/RN', 'M', '1987-09-09', 1, ''),
(67, 'Alice Portugal', 'alice.p@email.com', '(84) 98850-1050', 'Av. Rui Barbosa, 1100 - Natal/RN', 'F', '1996-12-24', 0, ''),
(68, 'Breno Lopes', 'breno.l@email.com', '(84) 98851-1051', 'Rua Clementino Câmara, 54 - Natal/RN', 'M', '1994-04-10', 0, ''),
(69, 'Camila Pitanga', 'camila.p@email.com', '(84) 98852-1052', 'Rua Trairi, 980 - Natal/RN', 'F', '1991-11-15', 1, ''),
(70, 'Diego Ribas', 'diego.r@email.com', '(84) 98853-1053', 'Av. Maria Lacerda, 2100 - Parnamirim/RN', 'M', '1988-08-03', 0, ''),
(71, 'Emanuelle Araújo', 'emanuelle.a@email.com', '(84) 98854-1054', 'Rua das Acácias, 41 - Natal/RN', 'F', '1997-02-28', 0, ''),
(72, 'Fabio Assunção', 'fabio.a@email.com', '(84) 98855-1055', 'Av. Romualdo Galvão, 1500 - Natal/RN', 'M', '1986-07-12', 1, ''),
(73, 'Giovanna Antonelli', 'giovanna.a@email.com', '(84) 98856-1056', 'Rua Mossoró, 330 - Natal/RN', 'F', '1993-10-05', 0, ''),
(74, 'Hélio de la Peña', 'helio.p@email.com', '(84) 98857-1057', 'Rua Almirante Tamandaré, 80 - Natal/RN', 'M', '1990-05-21', 0, ''),
(75, 'Isabeli Fontana', 'isabeli.f@email.com', '(84) 98858-1058', 'Av. Gov. Silvio Pedroza, 400 - Natal/RN', 'F', '1998-01-17', 1, ''),
(76, 'Juliano Cazarré', 'juliano.c@email.com', '(84) 98859-1059', 'Rua Santo Antônio, 220 - Parnamirim/RN', 'M', '1992-09-30', 0, ''),
(77, 'Kéfera Buchmann', 'kefera.b@email.com', '(84) 98860-1060', 'Rua Raimundo Chaves, 650 - Natal/RN', 'F', '1995-03-08', 0, ''),
(78, 'Luan Santana', 'luan.s@email.com', '(84) 98861-1061', 'Av. Engenheiro Roberto Freire, 3400 - Natal/RN', 'M', '1991-06-13', 1, ''),
(79, 'Marta Vieira', 'marta.v@email.com', '(84) 98862-1062', 'Rua das Hortênsias, 12 - Parnamirim/RN', 'F', '1987-02-19', 0, ''),
(80, 'Neymar Junior', 'neymar.j@email.com', '(84) 98863-1063', 'Av. Senador Salgado Filho, 4000 - Natal/RN', 'M', '1992-02-05', 1, ''),
(81, 'Paloma Duarte', 'paloma.d@email.com', '(84) 98864-1064', 'Rua Souza Pinto, 115 - Natal/RN', 'F', '1994-08-26', 0, ''),
(82, 'Reinaldo Gianecchini', 'reinaldo.g@email.com', '(84) 98865-1065', 'Rua Desembargador Dionísio, 90 - Natal/RN', 'M', '1985-11-12', 0, ''),
(83, 'Sheron Menezzes', 'sheron.m@email.com', '(84) 98866-1066', 'Av. Praia de Tibau, 78 - Parnamirim/RN', 'F', '1990-10-24', 1, ''),
(84, 'Tatá Werneck', 'tata.w@email.com', '(84) 98867-1067', 'Rua São Tomé, 510 - Natal/RN', 'F', '1993-08-11', 0, ''),
(85, 'Umberto Magnani', 'umberto.m@email.com', '(84) 98868-1068', 'Rua Barros Cassal, 30 - Natal/RN', 'M', '1984-04-25', 0, ''),
(86, 'Vera Fischer', 'vera.f@email.com', '(84) 98869-1069', 'Av. Nilo Peçanha, 620 - Natal/RN', 'F', '1986-11-27', 1, ''),
(87, 'Wilson Simonal', 'wilson.s@email.com', '(84) 98870-1070', 'Rua da Abolição, 145 - Natal/RN', 'M', '1988-03-09', 0, ''),
(88, 'Xande de Pilares', 'xande.p@email.com', '(84) 98871-1071', 'Av. das Fronteiras, 900 - Natal/RN', 'M', '1991-12-25', 0, ''),
(89, 'Yanna Lavigne', 'yanna.l@email.com', '(84) 98872-1072', 'Rua Olinto Meira, 203 - Natal/RN', 'F', '1997-02-26', 1, ''),
(90, 'Zezé Di Camargo', 'zeze.c@email.com', '(84) 98873-1073', 'Rua dos Garimpeiros, 88 - Parnamirim/RN', 'M', '1985-08-17', 0, ''),
(91, 'Adriana Esteves', 'adriana.e@email.com', '(84) 98874-1074', 'Av. Prudente de Morais, 4500 - Natal/RN', 'F', '1990-12-15', 0, ''),
(92, 'Bernardo Velasco', 'bernardo.v@email.com', '(84) 98875-1075', 'Rua Bento Gonçalves, 67 - Natal/RN', 'M', '1996-05-04', 1, ''),
(93, 'Cássia Kis', 'cassia.k@email.com', '(84) 98876-1076', 'Rua das Camélias, 101 - Parnamirim/RN', 'F', '1984-01-06', 0, ''),
(94, 'Dudu Azevedo', 'dudu.a@email.com', '(84) 98877-1077', 'Av. Amintas Barros, 2400 - Natal/RN', 'M', '1993-11-07', 0, ''),
(95, 'Eliana Michaelichen', 'eliana.m@email.com', '(84) 98878-1078', 'Rua Padre Raimundo, 32 - Natal/RN', 'F', '1989-11-22', 1, ''),
(96, 'Fábio Porchat', 'fabio.p@email.com', '(84) 98879-1079', 'Rua das Alvoradas, 300 - Parnamirim/RN', 'M', '1994-07-01', 0, ''),
(97, 'Gloria Pires', 'gloria.p@email.com', '(84) 98880-1080', 'Av. Afonso Pena, 1550 - Natal/RN', 'F', '1985-08-23', 0, ''),
(98, 'Herson Capri', 'herson.c@email.com', '(84) 98881-1081', 'Rua Mossoró, 890 - Natal/RN', 'M', '1986-11-08', 1, ''),
(99, 'Isadora Ribeiro', 'isadora.r@email.com', '(84) 98882-1082', 'Rua das Castanheiras, 45 - Parnamirim/RN', 'F', '1998-06-16', 0, ''),
(100, 'José Loreto', 'jose.l@email.com', '(84) 98883-1083', 'Av. Senador Salgado Filho, 1200 - Natal/RN', 'M', '1992-05-27', 0, ''),
(101, 'Kizi Vaz', 'kizi.v@email.com', '(84) 98884-1084', 'Rua Princesa Isabel, 780 - Natal/RN', 'F', '1995-09-14', 1, ''),
(102, 'Luiz Fernando', 'luiz.f@email.com', '(84) 98885-1085', 'Av. Bernardo Vieira, 4100 - Natal/RN', 'M', '1987-03-12', 0, ''),
(103, 'Malu Mader', 'malu.m@email.com', '(84) 98886-1086', 'Rua Jundiaí, 620 - Natal/RN', 'F', '1988-09-12', 0, ''),
(104, 'Ney Latorraca', 'ney.l@email.com', '(84) 98887-1087', 'Rua Apodi, 450 - Natal/RN', 'M', '1984-07-27', 1, ''),
(105, 'Patricia de Sabrit', 'patricia.s@email.com', '(84) 98888-1088', 'Av. Abel Cabral, 1100 - Parnamirim/RN', 'F', '1991-04-21', 0, ''),
(106, 'Rafael Cardoso', 'rafael.c@email.com', '(84) 98889-1089', 'Rua Seridó, 400 - Natal/RN', 'M', '1994-11-17', 0, ''),
(107, 'Sthefany Brito', 'sthefany.b@email.com', '(84) 98890-1090', 'Av. Hermes da Fonseca, 1900 - Natal/RN', 'F', '1997-06-19', 1, ''),
(108, 'Tarcísio Filho', 'tarcisio.f@email.com', '(84) 98891-1091', 'Rua Açu, 510 - Natal/RN', 'M', '1989-08-22', 0, ''),
(109, 'Úrsula Corona', 'ursula.c@email.com', '(84) 98892-1092', 'Rua Praia de Genipabu, 90 - Parnamirim/RN', 'F', '1996-01-30', 0, ''),
(110, 'Vitor Kley', 'vitor.k@email.com', '(84) 98893-1093', 'Av. Eng. Roberto Freire, 4100 - Natal/RN', 'M', '2000-08-18', 1, ''),
(111, 'Wanessa Camargo', 'wanessa.c@email.com', '(84) 98894-1094', 'Rua Cidade Alta, 450 - Natal/RN', 'F', '1993-12-28', 0, ''),
(112, 'Yasser de Oliveira', 'yasser.o@email.com', '(84) 98895-1095', 'Rua das Girassóis, 77 - Parnamirim/RN', 'M', '1999-04-04', 0, ''),
(113, 'Zezé Polessa', 'zeze.p@email.com', '(84) 98896-1096', 'Av. Rio Branco, 1050 - Natal/RN', 'F', '1986-09-22', 1, ''),
(114, 'Arthur Zanetti', 'arthur.z@email.com', '(84) 98897-1097', 'Rua Potengi, 610 - Natal/RN', 'M', '1995-04-16', 0, ''),
(115, 'Bruna Marquezine', 'bruna.m@email.com', '(84) 98898-1098', 'Av. Afonso Pena, 2300 - Natal/RN', 'F', '2000-08-04', 1, ''),
(116, 'Caio Castro', 'caio.c@email.com', '(84) 98899-1099', 'Rua Maria Lacerda, 1800 - Parnamirim/RN', 'M', '1992-01-22', 0, ''),
(117, 'Daniela Mercury', 'daniela.m@email.com', '(84) 98900-1100', 'Rua Trairi, 1200 - Natal/RN', 'F', '1988-07-28', 0, ''),
(118, 'Adriano Imperador', 'adriano.i@email.com', '(84) 98901-1101', 'Rua das Acacias, 12 - Parnamirim/RN', 'M', '1987-02-17', 1, ''),
(119, 'Aline Moraes', 'aline.m@email.com', '(84) 98902-1102', 'Av. Afonso Pena, 3100 - Natal/RN', 'F', '1992-03-22', 0, ''),
(120, 'Almir Sater', 'almir.s@email.com', '(84) 98903-1103', 'Rua Potengi, 140 - Natal/RN', 'M', '1985-11-14', 0, ''),
(121, 'Amanda Seyfried', 'amanda.s@email.com', '(84) 98904-1104', 'Av. Abel Cabral, 890 - Parnamirim/RN', 'F', '1995-12-03', 1, ''),
(122, 'André Marques', 'andre.m@email.com', '(84) 98905-1105', 'Rua Mossoró, 712 - Natal/RN', 'M', '1990-09-24', 0, ''),
(123, 'Angélica Ksyvickis', 'angelica.k@email.com', '(84) 98906-1106', 'Av. Eng. Roberto Freire, 5000 - Natal/RN', 'F', '1984-11-30', 1, ''),
(124, 'Antonio Fagundes', 'antonio.f@email.com', '(84) 98907-1107', 'Rua Jundiaí, 230 - Natal/RN', 'M', '1986-04-18', 0, ''),
(125, 'Babu Santana', 'babu.s@email.com', '(84) 98908-1108', 'Rua Maria Lacerda, 2300 - Parnamirim/RN', 'M', '1989-12-10', 0, ''),
(126, 'Belparaiba Costa', 'bel.costa@email.com', '(84) 98909-1109', 'Rua Trairi, 450 - Natal/RN', 'F', '1997-07-08', 1, ''),
(127, 'Beto Lee', 'beto.l@email.com', '(84) 98910-1110', 'Av. Salgado Filho, 3200 - Natal/RN', 'M', '1993-01-19', 0, ''),
(128, 'Bianca Andrade', 'bianca.a@email.com', '(84) 98911-1111', 'Rua Princesa Isabel, 900 - Natal/RN', 'F', '1994-10-15', 1, ''),
(129, 'Bochecha Silva', 'bochecha.s@email.com', '(84) 98912-1112', 'Rua Apodi, 310 - Natal/RN', 'M', '1988-05-12', 0, ''),
(130, 'Caetano Veloso', 'caetano.v@email.com', '(84) 98913-1113', 'Av. Hermes da Fonseca, 2100 - Natal/RN', 'M', '1984-08-07', 1, ''),
(131, 'Camila Queiroz', 'camila.q@email.com', '(84) 98914-1114', 'Rua das Oliveiras, 110 - Parnamirim/RN', 'F', '1996-06-27', 0, ''),
(132, 'Carlinhos Brown', 'carlinhos.b@email.com', '(84) 98915-1115', 'Rua Seridó, 520 - Natal/RN', 'M', '1987-11-23', 0, ''),
(133, 'Carolina Dieckmann', 'carolina.d@email.com', '(84) 98916-1116', 'Av. Bernardo Vieira, 5000 - Natal/RN', 'F', '1991-09-16', 1, ''),
(134, 'Cauã Reymond', 'caua.r@email.com', '(84) 98917-1117', 'Rua Açu, 340 - Natal/RN', 'M', '1990-05-20', 0, ''),
(135, 'Celso Portiolli', 'celso.p@email.com', '(84) 98918-1118', 'Av. Prudente de Morais, 5100 - Natal/RN', 'M', '1985-06-01', 0, ''),
(136, 'Chay Suede', 'chay.s@email.com', '(84) 98919-1119', 'Rua Cidade Alta, 880 - Natal/RN', 'M', '1992-06-30', 1, ''),
(137, 'Cleo Pires', 'cleo.p@email.com', '(84) 98920-1120', 'Rua das Hortênsias, 300 - Parnamirim/RN', 'F', '1989-10-02', 0, ''),
(138, 'Cissa Guimarães', 'cissa.g@email.com', '(84) 98921-1121', 'Av. Rio Branco, 1800 - Natal/RN', 'F', '1986-04-18', 0, ''),
(139, 'Cris Vianna', 'cris.v@email.com', '(84) 98922-1122', 'Rua Ceará-Mirim, 410 - Natal/RN', 'F', '1993-04-11', 1, ''),
(140, 'Dado Dolabella', 'dado.d@email.com', '(84) 98923-1123', 'Av. Ayrton Senna, 2100 - Parnamirim/RN', 'M', '1988-07-20', 0, ''),
(141, 'Dani Calabresa', 'dani.c@email.com', '(84) 98924-1124', 'Rua São Tomé, 890 - Natal/RN', 'F', '1991-11-12', 0, ''),
(142, 'Daniel de Oliveira', 'daniel.o@email.com', '(84) 98925-1125', 'Rua Jaguarari, 1200 - Natal/RN', 'M', '1987-06-19', 1, ''),
(143, 'Deborah Secco', 'deborah.s@email.com', '(84) 98926-1126', 'Av. Gastão Mariz, 1500 - Parnamirim/RN', 'F', '1989-11-26', 0, ''),
(144, 'Dira Paes', 'dira.p@email.com', '(84) 98927-1127', 'Rua Mipibu, 720 - Natal/RN', 'F', '1985-06-30', 0, ''),
(145, 'Douglas Silva', 'douglas.s@email.com', '(84) 98928-1128', 'Av. Amintas Barros, 3100 - Natal/RN', 'M', '1994-09-27', 1, ''),
(146, 'Drica Moraes', 'drica.m@email.com', '(84) 98929-1129', 'Rua das Rosas, 210 - Parnamirim/RN', 'F', '1986-07-29', 0, ''),
(147, 'Edson Celulari', 'edson.c@email.com', '(84) 98930-1130', 'Rua Maxaranguape, 410 - Natal/RN', 'M', '1984-03-20', 0, ''),
(148, 'Emílio Dantas', 'emilio.d@email.com', '(84) 98931-1131', 'Av. Xavier da Silveira, 990 - Natal/RN', 'M', '1990-11-29', 1, ''),
(149, 'Erika Januza', 'erika.j@email.com', '(84) 98932-1132', 'Rua Fonseca e Silva, 670 - Natal/RN', 'F', '1993-05-07', 0, ''),
(150, 'Eva Wilma', 'eva.w@email.com', '(84) 98933-1133', 'Rua Seridó, 890 - Natal/RN', 'F', '1984-12-14', 0, ''),
(151, 'Fabiana Karla', 'fabiana.k@email.com', '(84) 98934-1134', 'Av. Interventor Mário Câmara, 1400 - Natal/RN', 'F', '1987-10-30', 1, ''),
(152, 'Felipe Simas', 'felipe.s@email.com', '(84) 98935-1135', 'Rua Nova Parnamirim, 560 - Parnamirim/RN', 'M', '1998-01-26', 0, ''),
(153, 'Fiuk Kart', 'fiuk.k@email.com', '(84) 98936-1136', 'Av. Amintas Barros, 4000 - Natal/RN', 'M', '1995-10-25', 0, ''),
(154, 'Flávia Alessandra', 'flavia.a@email.com', '(84) 98937-1137', 'Rua das Girassóis, 210 - Parnamirim/RN', 'F', '1988-06-07', 1, ''),
(155, 'Gabriel Braga Nunes', 'gabriel.b@email.com', '(84) 98938-1138', 'Av. Senador Salgado Filho, 4900 - Natal/RN', 'M', '1986-02-24', 0, ''),
(156, 'Giovanna Lancellotti', 'giovanna.l@email.com', '(84) 98939-1139', 'Rua Almirante Tamandaré, 310 - Natal/RN', 'F', '1996-05-21', 0, ''),
(157, 'Guta Stresser', 'guta.s@email.com', '(84) 98940-1140', 'Rua das Dunas, 150 - Parnamirim/RN', 'F', '1985-09-28', 1, ''),
(158, 'Henri Castelli', 'henri.c@email.com', '(84) 98941-1141', 'Av. Eng. Roberto Freire, 6100 - Natal/RN', 'M', '1989-02-10', 0, ''),
(159, 'Ícaro Silva', 'icaro.s@email.com', '(84) 98942-1142', 'Rua Souza Pinto, 420 - Natal/RN', 'M', '1993-03-19', 0, ''),
(160, 'Ingrid Guimarães', 'ingrid.g@email.com', '(84) 98943-1143', 'Av. Afonso Pena, 4100 - Natal/RN', 'F', '1986-07-05', 1, ''),
(161, 'Isabel Teixeira', 'isabel.t@email.com', '(84) 98944-1144', 'Rua Apodi, 780 - Natal/RN', 'F', '1987-11-10', 0, ''),
(162, 'Isabelle Drummond', 'isabelle.d@email.com', '(84) 98945-1145', 'Rua das Palmeiras, 340 - Parnamirim/RN', 'F', '1999-04-12', 0, ''),
(163, 'Jackson Antunes', 'jackson.a@email.com', '(84) 98946-1146', 'Av. Coronel Estevam, 2200 - Natal/RN', 'M', '1984-08-28', 1, ''),
(164, 'Jayme Matarazzo', 'jayme.m@email.com', '(84) 98947-1147', 'Rua Princesa Isabel, 1300 - Natal/RN', 'M', '1990-11-20', 0, ''),
(165, 'Joana Fomm', 'joana.f@email.com', '(84) 98948-1148', 'Av. Hermes da Fonseca, 2800 - Natal/RN', 'F', '1984-09-14', 0, ''),
(166, 'João Guilherme', 'joao.g@email.com', '(84) 98949-1149', 'Rua Maria Lacerda, 3100 - Parnamirim/RN', 'M', '2002-02-01', 1, ''),
(167, 'Juliana Paes', 'juliana.p@email.com', '(84) 98950-1150', 'Av. Prudente de Morais, 6200 - Natal/RN', 'F', '1988-03-26', 0, ''),
(168, 'Klara Castanho', 'klara.c@email.com', '(84) 98951-1151', 'Rua Mossoró, 1100 - Natal/RN', 'F', '2000-10-06', 0, ''),
(169, 'Lázaro Ramos', 'lazaro.r@email.com', '(84) 98952-1152', 'Av. Bernardo Vieira, 6100 - Natal/RN', 'M', '1987-11-01', 1, ''),
(170, 'Leandra Leal', 'leandra.l@email.com', '(84) 98953-1153', 'Rua Trairi, 1450 - Natal/RN', 'F', '1991-11-12', 0, ''),
(171, 'Léo Jaime', 'leo.j@email.com', '(84) 98954-1154', 'Rua Cidade Alta, 990 - Natal/RN', 'M', '1985-04-23', 0, ''),
(172, 'Lilia Cabral', 'lilia.c@email.com', '(84) 98955-1155', 'Av. Rio Branco, 2400 - Natal/RN', 'F', '1984-07-13', 1, ''),
(173, 'Lucas Lucco', 'lucas.l@email.com', '(84) 98956-1156', 'Av. Abel Cabral, 1900 - Parnamirim/RN', 'M', '1995-04-04', 0, ''),
(174, 'Lucy Alves', 'lucy.a@email.com', '(84) 98957-1157', 'Rua Potengi, 910 - Natal/RN', 'F', '1991-03-06', 0, ''),
(175, 'Luigi Baricelli', 'luigi.b@email.com', '(84) 98958-1158', 'Rua Jundiaí, 890 - Natal/RN', 'M', '1986-07-14', 1, ''),
(176, 'Maiara Pires', 'maiara.p@email.com', '(84) 98959-1159', 'Rua das Rosas, 540 - Parnamirim/RN', 'F', '1992-12-31', 0, ''),
(177, 'Marcello Novaes', 'marcello.n@email.com', '(84) 98960-1160', 'Av. Amintas Barros, 4900 - Natal/RN', 'M', '1985-08-13', 0, ''),
(178, 'Marcos Mion', 'marcos.m@email.com', '(84) 98961-1161', 'Av. Eng. Roberto Freire, 7200 - Natal/RN', 'M', '1988-06-20', 1, ''),
(179, 'Marcos Palmeira', 'marcos.p@email.com', '(84) 98962-1162', 'Rua Açu, 820 - Natal/RN', 'M', '1984-08-19', 0, ''),
(180, 'Maria Casadevall', 'maria.c@email.com', '(84) 98963-1163', 'Rua Ceará-Mirim, 780 - Natal/RN', 'F', '1992-07-24', 0, ''),
(181, 'Maria Clara Gueiros', 'maria.cg@email.com', '(84) 98964-1164', 'Av. Salgado Filho, 5100 - Natal/RN', 'F', '1985-05-26', 1, ''),
(182, 'Mariana Ximenes', 'mariana.x@email.com', '(84) 98965-1165', 'Rua Fonseca e Silva, 890 - Natal/RN', 'F', '1990-04-26', 0, ''),
(183, 'Mateus Solano', 'mateus.s@email.com', '(84) 98966-1166', 'Rua Seridó, 950 - Natal/RN', 'M', '1990-03-20', 0, ''),
(184, 'Maurício Mattar', 'mauricio.m@email.com', '(84) 98967-1167', 'Av. Gastão Mariz, 2200 - Parnamirim/RN', 'M', '1984-04-03', 1, ''),
(185, 'Mel Maia', 'mel.m@email.com', '(84) 98968-1168', 'Rua das Oliveiras, 450 - Parnamirim/RN', 'F', '2004-05-03', 0, ''),
(186, 'Michel Teló', 'michel.t@email.com', '(84) 98969-1169', 'Av. Afonso Pena, 5200 - Natal/RN', 'M', '1990-01-21', 0, ''),
(187, 'Monique Alfradique', 'monique.a@email.com', '(84) 98970-1170', 'Rua Mipibu, 990 - Natal/RN', 'F', '1991-04-29', 1, ''),
(188, 'Murilo Benício', 'murilo.b@email.com', '(84) 98971-1171', 'Av. Prudente de Morais, 7100 - Natal/RN', 'M', '1986-07-13', 0, ''),
(189, 'Nanda Costa', 'nanda.c@email.com', '(84) 98972-1172', 'Rua Maxaranguape, 650 - Natal/RN', 'F', '1991-09-24', 0, ''),
(190, 'Nicolas Prattes', 'nicolas.p@email.com', '(84) 98973-1173', 'Rua Maria Lacerda, 4100 - Parnamirim/RN', 'M', '1997-05-04', 1, ''),
(191, 'Otaviano Costa', 'otaviano.c@email.com', '(84) 98974-1174', 'Av. Xavier da Silveira, 1400 - Natal/RN', 'M', '1988-05-13', 0, ''),
(192, 'Paolla Oliveira', 'paolla.o@email.com', '(84) 98975-1175', 'Rua Princesa Isabel, 1600 - Natal/RN', 'F', '1991-04-14', 0, ''),
(193, 'Paulo Gustavo', 'paulo.g@email.com', '(84) 98976-1176', 'Av. Hermes da Fonseca, 3500 - Natal/RN', 'M', '1987-10-30', 1, ''),
(194, 'Paulo Vilhena', 'paulo.v@email.com', '(84) 98977-1177', 'Rua São Tomé, 1100 - Natal/RN', 'M', '1988-01-03', 0, ''),
(195, 'Pedro Bial', 'pedro.b@email.com', '(84) 98978-1178', 'Av. Bernardo Vieira, 7200 - Natal/RN', 'M', '1984-03-29', 0, ''),
(196, 'Priscila Fantin', 'priscila.f@email.com', '(84) 98979-1179', 'Rua das Acacias, 340 - Parnamirim/RN', 'F', '1992-02-18', 1, ''),
(197, 'Rainha Matos', 'rainha.m@email.com', '(84) 98980-1180', 'Rua Jaguarari, 1900 - Natal/RN', 'F', '1995-08-09', 0, ''),
(198, 'Reynaldo Gianecchini', 'reynaldo.g2@email.com', '(84) 98981-1181', 'Av. Interventor Mário Câmara, 2100 - Natal/RN', 'M', '1987-11-12', 0, ''),
(199, 'Rodrigo Faro', 'rodrigo.f@email.com', '(84) 98982-1182', 'Rua Nova Parnamirim, 980 - Parnamirim/RN', 'M', '1988-10-20', 1, ''),
(200, 'Rodrigo Lombari', 'rodrigo.l@email.com', '(84) 98983-1183', 'Av. Ayrton Senna, 3200 - Parnamirim/RN', 'M', '1991-10-15', 0, ''),
(201, 'Rômulo Estrela', 'romulo.e@email.com', '(84) 98984-1184', 'Rua das Hortênsias, 620 - Parnamirim/RN', 'M', '1989-03-05', 0, ''),
(202, 'Samara Felippo', 'samara.f@email.com', '(84) 98985-1185', 'Av. Rio Branco, 3100 - Natal/RN', 'F', '1987-10-06', 1, ''),
(203, 'Sergio Guizé', 'sergio.g@email.com', '(84) 98986-1186', 'Rua Almirante Tamandaré, 720 - Natal/RN', 'M', '1989-05-14', 0, ''),
(204, 'Silvia Pfeifer', 'silvia.p@email.com', '(84) 98987-1187', 'Av. Eng. Roberto Freire, 8100 - Natal/RN', 'F', '1984-02-24', 0, ''),
(205, 'Stepan Nercessian', 'stepan.n@email.com', '(84) 98988-1188', 'Rua Souza Pinto, 890 - Natal/RN', 'M', '1984-12-02', 1, ''),
(206, 'Suzana Pires', 'suzana.p@email.com', '(84) 98989-1189', 'Rua Apodi, 1100 - Natal/RN', 'F', '1990-08-17', 0, ''),
(207, 'Tais Araújo', 'tais.a@email.com', '(84) 98990-1190', 'Av. Afonso Pena, 6100 - Natal/RN', 'F', '1987-11-25', 0, ''),
(208, 'Thiago Lacerda', 'thiago.l@email.com', '(84) 98991-1191', 'Rua das Palmeiras, 780 - Parnamirim/RN', 'M', '1987-01-19', 1, ''),
(209, 'Tom Cavalcante', 'tom.c@email.com', '(84) 98992-1192', 'Av. Coronel Estevam, 3400 - Natal/RN', 'M', '1985-03-08', 0, ''),
(210, 'Tony Ramos', 'tony.r@email.com', '(84) 98993-1193', 'Rua Jundiaí, 1200 - Natal/RN', 'M', '1984-08-25', 0, ''),
(211, 'Vera Holtz', 'vera.h@email.com', '(84) 98994-1194', 'Av. Hermes da Fonseca, 4100 - Natal/RN', 'F', '1984-08-07', 1, ''),
(212, 'Vinícius Junior', 'vinicius.j@email.com', '(84) 98995-1195', 'Rua Mossoró, 1500 - Natal/RN', 'M', '2000-07-12', 0, ''),
(213, 'Viviane Araújo', 'viviane.a@email.com', '(84) 98996-1196', 'Av. Salgado Filho, 6200 - Natal/RN', 'F', '1984-03-25', 0, ''),
(214, 'Wagner Moura', 'wagner.m@email.com', '(84) 98997-1197', 'Rua Ceará-Mirim, 1100 - Natal/RN', 'M', '1985-06-27', 1, ''),
(215, 'Zezé Motta', 'zeze.m@email.com', '(84) 98998-1198', 'Av. Bernardo Vieira, 8100 - Natal/RN', 'F', '1984-06-27', 0, ''),
(216, 'Zilú Camargo', 'zilu.c@email.com', '(84) 98999-1199', 'Rua Mipibu, 1300 - Natal/RN', 'F', '1984-06-09', 0, ''),
(217, 'Zico Coimbra', 'zico.c@email.com', '(84) 98900-1200', 'Rua Açu, 1200 - Natal/RN', 'M', '1984-03-03', 1, ''),
(218, 'Joma', 'joma@gmail.com', '84996111176', '', '', '0000-00-00', 0, ''),
(219, 'Maristela Brandão', 'maristela.brandao@hotmail.com', '(11) 98349-1203', 'Rua josé alfredo medeiros, Sept-Rosado RN', 'F', '1944-02-01', 0, ''),
(220, 'Lionel Messi', 'leo.messi@gmail.com', '5559485904', 'Rua Miami 834, EUA', 'M', '1982-06-24', 0, 'lionel-messi.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbtarefas`
--

CREATE TABLE `tbtarefas` (
  `idTarefa` int(11) NOT NULL,
  `tituloTarefa` varchar(255) NOT NULL,
  `descricaoTarefa` text NOT NULL,
  `dataConclusao` date NOT NULL,
  `horaConclusao` time NOT NULL,
  `dataLembrete` date NOT NULL,
  `horaLembrete` time NOT NULL,
  `recorrenciaTarefa` int(11) NOT NULL,
  `statusTarefa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbtarefas`
--

INSERT INTO `tbtarefas` (`idTarefa`, `tituloTarefa`, `descricaoTarefa`, `dataConclusao`, `horaConclusao`, `dataLembrete`, `horaLembrete`, `recorrenciaTarefa`, `statusTarefa`) VALUES
(1, 'Estudar PHP', 'Estudar INSERT, SELECT e UPDATE no MySQL', '2026-08-20', '18:00:00', '2026-08-19', '20:00:00', 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbcontatos`
--
ALTER TABLE `tbcontatos`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices de tabela `tbtarefas`
--
ALTER TABLE `tbtarefas`
  ADD PRIMARY KEY (`idTarefa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcontatos`
--
ALTER TABLE `tbcontatos`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de tabela `tbtarefas`
--
ALTER TABLE `tbtarefas`
  MODIFY `idTarefa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
