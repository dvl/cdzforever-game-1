-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 26, 2012 at 09:32 PM
-- Server version: 5.5.13-log
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdzforever`
--

-- --------------------------------------------------------

--
-- Table structure for table `armors`
--

CREATE TABLE IF NOT EXISTS `armors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL,
  `genre` varchar(1) NOT NULL,
  `category_id` varchar(45) NOT NULL,
  `class` varchar(1) NOT NULL,
  `health` int(11) NOT NULL DEFAULT '0',
  `healthmax` int(11) NOT NULL DEFAULT '0',
  `invoked` int(11) NOT NULL DEFAULT '0',
  `strong` int(11) NOT NULL DEFAULT '5',
  `dexterity` int(11) NOT NULL DEFAULT '5',
  `resistence` int(11) NOT NULL DEFAULT '5',
  `vitality` int(11) NOT NULL DEFAULT '5',
  `cosmo` int(11) NOT NULL DEFAULT '5' COMMENT 'Cosmo sem contar os bonus',
  `cost` int(11) NOT NULL DEFAULT '0',
  `technics` longtext NOT NULL,
  `world` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=219 ;

--
-- Dumping data for table `armors`
--

INSERT INTO `armors` (`id`, `user_id`, `name`, `genre`, `category_id`, `class`, `health`, `healthmax`, `invoked`, `strong`, `dexterity`, `resistence`, `vitality`, `cosmo`, `cost`, `technics`, `world`) VALUES
(1, 0, 'Condor', 'M', '1', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Furacão de Aço,Absorção', 'A armadura fora do corpo obtém a forma de uma ''nave'', podendo ser usada para voar.'),
(2, 0, 'Raposa', 'M', '1', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Furacão de Aço,Deslocamento de Terra', 'A armadura fora do corpo obtém a forma de um ''carro'', podendo ser usada como um ''skate''.'),
(3, 0, 'Merlin', 'M', '1', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Furacão de Aço,Anulação de Onda', 'A armadura fora do corpo obtém a forma de uma ''lancha'', podendo ser usada na água.'),
(4, 0, 'Enguia', 'M', '1', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Furacão de Aço,Descarga Elétrica', ''),
(5, 0, 'Pégaso', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Meteoro de Pégaso,Cometa de Pégaso,Turbilhão de Pégaso', ''),
(6, 0, 'Dragão', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Cólera do Dragão,Chute do Dragão,Dragão Nascente,Último Dragão,Cólera dos 100 Dragões', 'Escudo do Dragão.'),
(7, 0, 'Cisne', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Pó de Diamante,Círculo de Gelo,Turbilhão de Gelo,Trovão Aurora,Execução Aurora', 'Escudo do Cisne.'),
(8, 0, 'Andrômeda', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Corrente de Andrômeda,Corrente Nebulosa,Defesa Circular,Onda Relâmpago,Teia de Aranha de Andrômeda,Rede de Andrômeda,Espiral de Andrômeda,Bumerangue de Andrômeda,Armadilha de Andrômeda,Grande Captura de Andrômeda,Tempestade Nebulosa', 'Corrente de Andrômeda.'),
(9, 0, 'Fênix', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Ave Fênix,Golpe Fantasma,Asas de Fênix', ''),
(10, 0, 'Unicórnio', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Chifre de Unicórnio,Galope do Unicórnio', ''),
(11, 0, 'Lobo', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Uivo Mortal do Lobo', ''),
(12, 0, 'Forno', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Chamas Infernais,Barreira de Fogo,Meteoros de Fogo', 'Armadura Imune a Fogo.'),
(13, 0, 'Hidra Macho', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Garras Venenosas', 'Garras Venenosas da Hidra'),
(14, 0, 'Camaleão', 'F', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Chicote de Camaleão', 'Chicote de Camaleão.'),
(15, 0, 'Kaitos', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Corrente Nebulosa Dupla', 'Corrente de Kaitos.'),
(16, 0, 'Cassiopéia', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Corrente Nebulosa Dupla', 'Corrente de Cassiopéia.'),
(17, 0, 'Grou', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Bicada do Grou,Pulo do Grou', 'Punhos em formas de Bicos, altamentes perfurantes.'),
(18, 0, 'Tucano', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Bicada Fatal', 'Foice de Bronze.'),
(19, 0, 'Girafa', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Esta armadura não possui golpes', ''),
(20, 0, 'Dourado', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Corrente Marinha,Água Congelante', ''),
(21, 0, 'Lebre', 'F', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Ilusão do Coelho,Rajada Psíquica', ''),
(22, 0, 'Cão Menor', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Matilha,Flash de Garras', ''),
(23, 0, 'Cavalo', 'M', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Impulso Equino,Chicote divino', 'Chicote das Almas.'),
(24, 0, 'Pomba', 'F', '5', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Mira Maldita', ''),
(25, 0, 'Urso', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Braços de Urso', ''),
(26, 0, 'Leão Menor', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Ataque Explosivo do Leão', ''),
(27, 0, 'Hidra Fêmea', 'M', '5', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Punho de Hércules', ''),
(28, 0, 'Lagarto', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Força Demoníaca', ''),
(29, 0, 'Centauro', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Chama de Babel', ''),
(30, 0, 'Auriga', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Ataque do Disco', 'Discos de Prata que usam a velocidade girátoria para cortar o que está no caminho. Se arremessados, agem como Bumerangues.'),
(31, 0, 'Cérbero', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Bola de Aço', 'Correntes com Bolas de Aço.'),
(32, 0, 'Corvo', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Pluma Negra', ''),
(33, 0, 'Perseus', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Górgona Demoníaca', 'Escudo da Medusa. É capaz de transformar em pedra qualquer um que olhar diretamente para ele ou até mesmo quem manter os olhos na direção do escudo, mesmo fechados, já que o poder do escudo atravessa a retina e atinge diretamente o cérebro do oponente.'),
(34, 0, 'Cães de Caça', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Ataque de um Milhão de Fantasmas', ''),
(35, 0, 'Baleia', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Força Explosiva de Kaitos', ''),
(36, 0, 'Mosca', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Vôo Mortal', ''),
(37, 0, 'Cão Maior', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Golpe do Cão Maior', ''),
(38, 0, 'Hércules', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Poder Supremo de Hércules', ''),
(39, 0, 'Pavão', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Mil Braços', ''),
(40, 0, 'Lótus', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Explosão de Lótus', ''),
(41, 0, 'Cobra', 'F', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Venha Cobra,Garras de Trovão', ''),
(42, 0, 'Águia', 'F', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Meteoros,Lampejo da Águia,Soco Aéreo', ''),
(43, 0, 'Cefeu', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Corrente Lança', 'Corrente de Prata.'),
(44, 0, 'Bússola', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Agilidade Telecinética,Punho dos Quatro Cantos', ''),
(45, 0, 'Flecha', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Flechas Envenenadas,Flecha Suprema', ''),
(46, 0, 'Coroa Boreal', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Pó de Diamante,Círculo de Gelo,Trovão Aurora', ''),
(47, 0, 'Tarântula', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Teia de Tarântula', ''),
(48, 0, 'Lira', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Acorde Noturno,Acorde Perfeito,Serenata da Viagem da Morte', 'Lira Sagrada.'),
(49, 0, 'Altar', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Esta armadura não possui golpes', ''),
(50, 0, 'Taça', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Cura da Taça,Taça das Almas', ''),
(51, 0, 'Escultor', 'M', '17', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Esta armadura não possui golpes', ''),
(52, 0, 'Heimdall', 'M', '11', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Escudo de Odin,Punho Divino', ''),
(53, 0, 'Midgard', 'M', '11', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Pó de Diamante,Círculo de Gelo,Trovão Aurora', ''),
(54, 0, 'Ur', 'M', '11', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Punho Flamejante,Chamas dos Deuses', 'Espada de Fogo de Ur.'),
(55, 0, 'Rung', 'M', '11', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Martelo Bumerangue,Grande Terremoto', 'Dois Bumerangues chamados de Martelo Mjolnir (Nome do Martelo do deus Thor).'),
(56, 0, 'Loki', 'M', '11', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Ataque de Lobos,Tempestade de Odin', ''),
(57, 0, 'Áries', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Telecinese,Rede de Cristal,Teletransporte,Extinção Estrelar,Muralha de Cristal,Revolução Estrelar', ''),
(58, 0, 'Touro', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Punho de Aço,Esquiva Ilusória,Posição de Iai,Grande Chifre,SuperNova Titânica', ''),
(59, 0, 'Gêmeos', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Aniquilação Sensorial,Outra Dimensão,Explosão Galáctica,Erupção Negra Esmagadora', ''),
(60, 0, 'Câncer', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Pinça do Caranguejo,Ondas do Inferno,Chamas Demoníacas Azuis,Hecatombe dos Espíritos,Explosão das Almas', ''),
(61, 0, 'Leão', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Presa Relâmpago,Cápsula do Poder,Plasma Relâmpago,Invocação de Fótons,Aceleração de Fótons,Rugido do Leão,Explosão de Fótons', ''),
(62, 0, 'Virgem', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Telecinese,Privação de Sentidos,Karn,Bênção do Senhor das Trevas,Invocação dos Espíritos,Rendição Divina,Círculo das Seis Existências,Tesouro do Céu', ''),
(63, 0, 'Libra', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Convocação de Armas,Cólera do Dragão,Dragão Nascente,Último Dragão,Cólera dos 100 Dragões', 'Pares de Espadas de Ouro, de Tridentes de Ouro, de Tonfás (Cacetetes) de Ouro, de Barras Triplas de Ouro, de Barras Duplas (Nunchaku) de Ouro e de Escudos de Ouro. O Escudo possui uma corrente que se enrola nele permitindo que o usuário arremesse-o contra o oponente e o ''receba'' na sua mão após o ataque.'),
(64, 0, 'Escorpião', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Agulha Escarlate,Antares,Restrição,Agulha Incandescente,Antares Incandescente', ''),
(65, 0, 'Sagitário', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Flecha de Ouro,Trovão Atômico,Destruição Infinita,Impulso de Luz', 'Arco e Flechas de ouro.'),
(66, 0, 'Capricórnio', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Excalibur,Pedras Saltitantes,X-Calibur,Dança das Espadas,Espada de Luz', ''),
(67, 0, 'Aquário', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Pó de Diamante,Círculo de Gelo,Trovão Aurora,Execução Aurora,Nevasca Congelante', ''),
(68, 0, 'Peixes', 'M', '16', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Vinha de Rosas,Rosas Diabólicas,Rosas Piranhas,Rosa Sangrenta,Espinhos Carmesim', ''),
(69, 0, 'Mantis', 'M', '3', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Punho Mágico de Mantis', 'Garras altamente cortantes e perfurantes.'),
(70, 0, 'Borboleta', 'M', '3', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Fantasia de Moa', ''),
(71, 0, 'Belzebu', 'M', '3', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Asas do Inferno', 'Asas Flamejantes.'),
(72, 0, 'Ashtarote', 'M', '3', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Picada de Cobra', 'Punho Venenoso.'),
(73, 0, 'Dimensões', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto,Secção Espacial,Hecatônquiro Convocado,Fúria de Hecatônquiro,Cem Tiros,Planeta Negro,Espada das Seis Estrelas,Círculo do Caos,Lâmina do Caos,Transferência do Caos', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma Espada de Lâmina Dupla e pode ser usada pelo usuário como arma nas lutas.'),
(74, 0, 'Relâmpago Negro', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto,Rapiera Negra,Rapiera Cintilante,Vendaval Negro,Iluminação Negra,Plasma Negro,Rotação do Trovão Negro', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma grande Rapieira (espada cuja lâmina é longa, fina e flexível) e pode ser usada pelo usuário como arma nas lutas. Possui também embutida duas Rapieiras.'),
(75, 0, 'Galáxia', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto,Lâmina Estelar,Correia Estelar,Círculo Estelar,Escudo Estelar,Batida do Escudo,Espada de Oricalco,Shoushiken', 'Cimitarra: Espécies de "lâmina dupla", onde o cosmo envolve as duas lâminas.'),
(76, 0, 'Ébano', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto,Vórtex Gurthang,Vórtex Negro,Vórtex Solar,Proeminência Solar,Espada Proeminente,Ouroborus Proeminente', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma espada, chamada Gurthang, e pode ser usada pelo usuário como arma nas lutas.'),
(77, 0, 'Febe', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de um punhal, e pode ser usada pelo usuário como arma nas lutas.'),
(78, 0, 'Tempo', 'M', '19', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Dunamis Absoluto,Oráculo Onipotente,Rugido das Trevas,Tempestade do Caos,Domínio de Fenômenos,Areia de Adamantiun', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma foice, chamada de Megas Drepanon, e pode ser usada pelo usuário como arma nas lutas.'),
(79, 0, 'Mnemôsine', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de um machado, e pode ser usada pelo usuário como arma nas lutas.'),
(80, 0, 'Oceano', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto,Margem do Córrego,Impacto da Correnteza,Dilúvio de Thalassa,Corrente D''água Luminescente', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de espadas gêmeas, e pode ser usada pelo usuário como arma nas lutas.'),
(81, 0, 'Réia', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto,Serpente da Terra,Salamandra de Fogo', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma katar (Uma adaga, onde a base forma um H em horizontal e a lâmina acima da base é afiada), e pode ser usada pelo usuário como arma nas lutas.'),
(82, 0, 'Fogo', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma balista (Uma espécie de arco, na qual são atirados projéteis), e pode ser usada pelo usuário como arma nas lutas.'),
(83, 0, 'Julgamento', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto,Lâmina do Julgamento,Balança do Julgamento', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma lança, chamada de Braberus, e pode ser usada pelo usuário como arma nas lutas.'),
(84, 0, 'Mar', 'M', '19', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Dunamis Absoluto', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de um martelo, e pode ser usada pelo usuário como arma nas lutas.'),
(85, 0, 'Pégaso Negro', 'M', '15', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Meteoro Negro', ''),
(86, 0, 'Dragão Negro', 'M', '15', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Tornado Negro', 'Escudo do Dragão Negro.'),
(87, 0, 'Cisne Negro', 'M', '15', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Tempestade Negra de Gelo,Cristal de Gelo', 'Escudo do Cisne Negro. Elmo do Cisne Negro, este é capaz de memorizar tudo que o cavaleiro de Cisne Negro quiser, sendo que este pode enviar para onde quiser quando terminar a memorização.'),
(88, 0, 'Andrômeda Negro', 'M', '15', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Corrente Negra', 'Corrente Negra.'),
(89, 0, 'Fênix Negro', 'M', '15', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Golpe Fantasma das Trevas,Chamas do Inferno', ''),
(90, 0, 'Harpa', 'M', '9', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Requiém de Cordas,Suave Melodia', 'Harpa Fantasma.'),
(91, 0, 'Sagita', 'M', '9', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Flechas Fantasmas', ''),
(92, 0, 'Escudo', 'M', '9', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Escudo Mortal,Escudo Bumerangue', 'Escudo Protetor.'),
(93, 0, 'Cruzeiro do Sul', 'M', '9', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Trovão do Cruzeiro do Sul', ''),
(94, 0, 'Órion', 'M', '9', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Choque Megatômico de Meteoros,Explosão de Meteoros', ''),
(95, 0, 'Esqueleto', 'M', '18', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Pequeno Arbusto,Grande Flato', ''),
(96, 0, 'Deep', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Perfurme Mortal,Fragrância Profunda', ''),
(97, 0, 'Sapo', 'M', '18', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Salto Esmagador', ''),
(98, 0, 'Pappilon', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Fio de Seda,Investida da Larva,Transformação,Defesa de Seda Resistente,Horrível Erupção,Telecinese,Controle de Borboletas,Encantamento Mortal,Retrocedendo', 'Asas de Pappilon que dão a possibilidade ao espectro de Pappilon de voar.'),
(99, 0, 'Harpia', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Devorador de Vidas,Doce Chocolate', 'Asas da sapuris de Harpia, dá ao espectro a possibilidade de voar.'),
(100, 0, 'Ciclope', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Abraço do Gigante,Junta Gigante', ''),
(101, 0, 'Verme', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Tentáculos do Verme,Rugido Sangrento', 'Seis tentáculos resistentes, são capazes de perfurar qualquer coisa e podem se regenerar dependendo do cosmo do espectro.'),
(102, 0, 'Minotauro', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Grandioso Machado Esmagador', ''),
(103, 0, 'Mandrágora', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Grito Dilacerante', 'Uma face no lado direito do peito do espectro, quando comandado pelo espectro, a face começa a gritar emitindo um som, assim como as lendas sobre a mandrágora, os gritos podem imobilizar o oponente.'),
(104, 0, 'Alraune', 'F', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Guilhotina da Flor Sangrenta', ''),
(105, 0, 'Basilisco', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Vôo do Extermínio', 'Asas pertencentes à armadura, dá ao espectro a capacidade de planar. Estas asas possuem também a propriedade de veneno capaz de destruir a natureza quando o espectro assim libera as propriedades venenosas.'),
(106, 0, 'Aqueronte', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Remo Giratório,Redemoinho Esmagador', 'Remo de Aqueronte.'),
(107, 0, 'Esfinge', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Manipulação de Ilusão pela Lira Demoníaca,Balança da Maldição', 'Lira Demoníaca.'),
(108, 0, 'Troll', 'M', '18', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Máxima Perestroika', ''),
(109, 0, 'Balron', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Chicote de Fogo,Reencarnação', 'Chicote de Balron.'),
(110, 0, 'Golem', 'M', '18', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Avalanche Explosiva', ''),
(111, 0, 'Lycaon', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Uivo Infernal', ''),
(112, 0, 'Durahan', 'M', '18', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Spray de Sangue,Mensageiro da Morte', ''),
(113, 0, 'Besouro Mortal', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Grande Parede,Fique Comigo', ''),
(114, 0, 'Górgona', 'M', '18', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Olho da Custódia,Cadeado Mortal', ''),
(115, 0, 'Elfo', 'M', '18', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Contagem Natural,Mistura de Terremoto', ''),
(116, 0, 'Wyvern', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Rugido Deslizante,Dimensão dos Mortos,Máxima Precaução', 'Asas de Wyvern, permite que o espectro a use como impulso para voar. Garras de Wyvern (Não existem)'),
(117, 0, 'Griffon', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Marionete cósmica,Vôo das Plumas Gigantes', 'Asas de Grifo, permite ao espectro a capacidade de planar e também esta possui uma grande resistência a golpes físicos.'),
(118, 0, 'Garuda', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Ilusão Galáctica,Vôo da Garuda,Conquistador de Indra,Resplendor da Morte Galáctica', 'Asas de Garuda, permite ao espectro voar por todo o local, usando suas asas para liberar uma forte ventania para repelir armas do oponente.'),
(119, 0, 'Auriga de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Ataque do Disco', 'Discos de Sapuris que usam a velocidade girátoria para cortar o que está no caminho. Se arremessados, agem como Bumerangues.'),
(120, 0, 'Cérbero de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Bola de Aço', 'Correntes com Bolas de Aço.'),
(121, 0, 'Perseus de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Górgona Demoníaca', 'Escudo da Medusa. É capaz de transformar em pedra qualquer um que olhar diretamente para ele ou até mesmo quem manter os olhos na direção do escudo, mesmo fechados, já que o poder do escudo atravessa a retina e atinge diretamente o cérebro do oponente.'),
(122, 0, 'Hércules de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Poder Supremo de Hércules', ''),
(123, 0, 'Mosca de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Vôo Mortal', ''),
(124, 0, 'Cão Maior de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Golpe do Cão Maior', ''),
(125, 0, 'Lagarto de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Força Demoníaca', ''),
(126, 0, 'Centauro de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Chama de Babel', ''),
(127, 0, 'Baleia de Sapuris', 'M', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Força Explosiva de Kaitos', ''),
(128, 0, 'Áries de Sapuris', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Telecinese,Teletransporte,Extinção Estelar,Muralha de Cristal,Telepatia de Áries,Revolução Estelar', ''),
(129, 0, 'Câncer de Sapuris', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Ondas do Inferno,Telepatia', ''),
(130, 0, 'Peixes de Sapuris', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Rosas Diabólicas Reais,Rosas Piranhas,Rosa Sangrenta,Telepatia', ''),
(131, 0, 'Aquário de Sapuris', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Pó de Diamante,Círculo de Gelo,Trovão Aurora,Esquife de Gelo,Execução Aurora,Telepatia', ''),
(132, 0, 'Capricórnio de Sapuris', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Excalibur,Pedras Saltitantes,Telepatia', ''),
(133, 0, 'Gêmeos de Sapuris', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Aniquilação Sensorial,Outra Dimensão,Satã Imperial,Criar Ilusões,Explosão Galáctica,Telepatia', ''),
(134, 0, 'Serpente', 'M', '8', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Golpe da Serpente', 'Diferente das demais armaduras, a armadura de Serpente é colada no corpo e bastante escorregadia o que dificulta muito um ataque físico do oponente.'),
(135, 0, 'Golfinho', 'M', '8', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Golpe de Golfinho,Cabeçada do Golfinho', 'Diferente das demais armaduras, a armadura de Golfinho é colada no corpo e bastante escorregadia o que dificulta muito um ataque físico do oponente.'),
(136, 0, 'Medusa', 'M', '8', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Força dos Torpedos,Tentáculos', 'Diferente das demais armaduras, a armadura de Medusa é colada no corpo e bastante escorregadia o que dificulta muito um ataque físico do oponente.'),
(137, 0, 'Vampiro', 'F', '8', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Força do Espectro,Garras do Inferno', 'Garras altamente cortantes e perfurantes.'),
(138, 0, 'Dubhe', 'M', '12', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Espada de Odin,Vendaval do Dragão', ''),
(139, 0, 'Phecda', 'M', '12', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Machados de Thor,Machados Mágicos,Hércules Titânico', 'Machados Mágicos de Phecda. Eles se arremessados, agem como Bumerangues.'),
(140, 0, 'Alioth', 'M', '12', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Alcateia de Lobos,Garra Assassina,Golpe do Lobo Imortal', 'Garras de Lobo Retráveis, Máscara do Lobo de Asgard.'),
(141, 0, 'Merak', 'M', '12', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Força Congelante,Raio de Fogo', ''),
(142, 0, 'Benetnasch', 'M', '12', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Acorde Demoníaco,Acorde Perfeito', 'Harpa dos Deuses.'),
(143, 0, 'Megrez', 'M', '12', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Espada de Fogo,Couraça Ametista,Unidade da Natureza', 'Espada de Fogo.'),
(144, 0, 'Mizar', 'M', '12', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Garras do Tigre Negro,Impulso Azul', ''),
(145, 0, 'Arkor', 'M', '12', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Garras do Tigre da Sombra,Punho do Tigre da Sombra', ''),
(146, 0, 'Cavalo Marinho', 'M', '14', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Ventos de Tempestade,Sopro Divino', ''),
(147, 0, 'Sirene', 'M', '14', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Sinfonia Final da Morte,Climax Final da Morte', 'Flauta Doce de Sirene'),
(148, 0, 'Chrysaor', 'M', '14', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Lança Relâmpago,Maha Roshini', 'Tridente de Oriucalcum. É capaz de produzir rajadas de ar altamente cortantes a grandes distâncias, somente com golpes do tridente no ar.'),
(149, 0, 'Scylla', 'M', '14', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Tornado Violento,Ferrão da Abelha Rainha,Águia Poderosa,Serpente Assassina,Fúria do Lobo,Ataque Vampiro,Urso Infernal', ''),
(150, 0, 'Lymnades', 'M', '14', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Salamandra Satânica', 'A armadura de Lymnades dá ao seu usuário a capacidade de penetrar na mente do oponente e se transformar na pessoa que quiser e até imitar seu golpe, porém a força desse golpe não alcança nem 01% da força do original.'),
(151, 0, 'Kraken', 'M', '14', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Aurora Boreal', ''),
(152, 0, 'Dragão Marinho', 'M', '14', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Triângulo Dourado', ''),
(153, 0, 'Sereia', 'F', '14', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Cilada de Coral', ''),
(154, 0, 'Susako', 'M', '4', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Explosão Final,Submissão', ''),
(155, 0, 'Seiryu', 'M', '4', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Tentáculos Mortais,Medo Assassino', ''),
(156, 0, 'Genbu', 'M', '4', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Terror Supremo,Demônio Fatal', ''),
(157, 0, 'Biakko', 'M', '4', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Tigre Branco,Fogo Infernal', ''),
(158, 0, 'Abelha', 'F', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Última Picada', ''),
(159, 0, 'Galo', 'F', '4', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Asas da Destruição', ''),
(160, 0, 'Coruja', 'M', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Vôo Noturno', ''),
(161, 0, 'Tartarigame', 'M', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Poder Terrestre,Tempestade da Tartaruga', ''),
(162, 0, 'Morcego', 'F', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Sonar do Pesadelo', 'O espectro assim que entra na arena, convoca, através de ondas supersônicas, morcegos de todos os lugares.'),
(163, 0, 'Planta Carnívora', 'F', '4', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Planta Devoradora de Almas', ''),
(164, 0, 'Piranha', 'M', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Mandíbulas Arrasadoras', ''),
(165, 0, 'Viúva Negra', 'F', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Teia Venenosa', ''),
(166, 0, 'Javali', 'M', '4', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Javali Furioso', ''),
(167, 0, 'Búfalo', 'M', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Chifre de Búfalo', ''),
(168, 0, 'Hiena', 'M', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Risada Maléfica,Mordida da Hiena', ''),
(169, 0, 'Elefante', 'M', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Tromba Brutal', ''),
(170, 0, 'Rinoceronte', 'M', '4', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Chifrada,Fúria do Rinoceronte,Chifre Perfurador', ''),
(171, 0, 'Varan', 'F', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Soco Relâmpago', ''),
(172, 0, 'Pantera', 'M', '4', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Rugido da Pantera,Mordida Fatal', ''),
(173, 0, 'Tigre', 'M', '4', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Grande Furacão do Tigre', ''),
(174, 0, 'Jaguar', 'M', '4', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'garras do Trovão,Fúria do Vento,Garras Supremas', 'Possui garras afiadíssimas em seus punhos.'),
(175, 0, 'Gato', 'F', '4', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Ondas Mentais', ''),
(176, 0, 'Equidna', 'F', '4', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Ataque Predador', ''),
(177, 0, 'Lince', 'M', '6', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Hércules Reluzente', 'Armadura imune ao Fogo.'),
(178, 0, 'Carina', 'M', '6', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Coroa de Fogo', 'Armadura imune ao Fogo.'),
(179, 0, 'Coma Berenices', 'M', '6', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Cabelo Dourado da Morte', 'Armadura imune ao Fogo.'),
(180, 0, 'Ikarus', 'M', '2', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Esta armadura não possui golpes', ''),
(181, 0, 'Theseus', 'M', '2', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Esta armadura não possui golpes', ''),
(182, 0, 'Odysseus', 'M', '2', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Esta armadura não possui golpes', ''),
(183, 0, 'Atena', 'F', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(184, 0, 'Poseidon', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(185, 0, 'Hera', 'F', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(186, 0, 'Zeus', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(187, 0, 'Artemis', 'F', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(188, 0, 'Hades', 'M', '7', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(189, 0, 'Lúcifer', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(190, 1, 'Ares', 'M', '13', 'S', 0, 1000, 0, 5, 5, 5, 5, 33, 140000, 'Esta armadura não possui golpes', ''),
(191, 0, 'Odin', 'M', '11', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(192, 0, 'Hermes', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(193, 0, 'Dionísio', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(194, 0, 'Abel', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(195, 0, 'Afrodite', 'F', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(196, 0, 'Apollo', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(197, 0, 'Polares', 'F', '11', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(198, 0, 'Éris', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(199, 0, 'Hefesto', 'M', '13', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(200, 0, 'Hypnos', 'M', '7', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(201, 0, 'Thanatos', 'M', '7', 'S', 1000, 1000, 0, 5, 5, 5, 5, 2, 140000, 'Esta armadura não possui golpes', ''),
(202, 0, 'Poinx', 'M', '10', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Esta armadura não possui golpes', ''),
(203, 0, 'Cianos', 'M', '10', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Chicote de Unhas de Fogo,Pedras em Fusão', ''),
(204, 0, 'Leucotes', 'M', '10', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Esta armadura não possui golpes', ''),
(205, 0, 'Melas', 'M', '10', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Esta armadura não possui golpes', ''),
(206, 0, 'Paios', 'M', '10', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Formação de Combate de Oito Garras', 'Possui duas lâminas acima das luvas da armadura.'),
(207, 0, 'Anthrakma', 'M', '10', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Esta armadura não possui golpes', 'Possui uma maça gigante.'),
(208, 0, 'Nasu', 'F', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Ilusões de Espectro,Controle das Moscas,Chamado dos Zumbis,Sepulcro dos Amaldiçoados,Regeneração do Corpo e Alma', ''),
(209, 0, 'Behemoth', 'F', '18', 'B', 500, 500, 0, 5, 5, 5, 5, 2, 0, 'Esconderijo das Sombras,Realidade Brutal,Selo das Sombras', ''),
(210, 0, 'Benu', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Explosão da Coroa Solar,Impacto da Coroa Solar,Coroa do Sol Negra,Escudo da Coroa Solar,Crucificação Ankh,Elevação das Trevas', 'Asas que dão à possibilidade do espectro voar por todo o local desejado. Também envolvida por cosmo pode liberar uma rajada de vento contra o oponente.'),
(211, 0, 'Hanuman', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Telecinese,Controle das Almas,Teletransporte,Desejo das Almas do Submundo,Telepatia de Hanuman,Materialização do Desejo das Almas do Submundo', 'A sapuris de Hanuman dá ao espectro a capacidade de planar sem nem mesmo precisar de asas.'),
(212, 0, 'Mefisóteles', 'M', '18', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Domínio Temporal,Outro Mundo,Rebobinar Biológico', 'Relógio de bolso prateado, para utilizá-lo é necessário que se abra a "tampa".'),
(213, 0, 'Dryads', 'M', '18', 'D', 200, 200, 0, 5, 5, 5, 5, 2, 0, 'Vale dos Lírios,Cura dos Lírios', ''),
(214, 0, 'Phantasos', 'F', '20', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Em Sono', ''),
(215, 0, 'Icelos', 'M', '20', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Fenda Dimensional,Em Sono,Devolução Dimensional', 'Garra de Ikelus, capaz de abrir fendas dimensionais quando usadas pelo espectro.'),
(216, 0, 'Oneiros', 'M', '20', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Oráculo do Guardião,Em Sono,Fusão dos Sonhos', ''),
(217, 0, 'Morpheus', 'M', '20', 'A', 750, 750, 0, 5, 5, 5, 5, 2, 100000, 'Em Sono,Mundo de Morphia,Sonho Real,Papoulas do Mundo dos Sonhos', ''),
(218, 0, 'Sylph', 'M', '18', 'C', 350, 350, 0, 5, 5, 5, 5, 2, 0, 'Ventos do Norte', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='    [0] => Aço\n    [1] => Anjos Celestes\n    [2] => Anjos da' AUTO_INCREMENT=21 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Aço'),
(2, 'Anjos Celestes'),
(3, 'Anjos da Morte'),
(4, 'Berserkers'),
(5, 'Bronze'),
(6, 'Coroa do Sol'),
(7, 'Elísios'),
(8, 'Fantasmas I'),
(9, 'Fantasmas II'),
(10, 'Gigas'),
(11, 'Guerreiros Deuses I'),
(12, 'Guerreiros Deuses II'),
(13, 'Kamuis'),
(14, 'Marinas'),
(15, 'Negras'),
(16, 'Ouro'),
(17, 'Prata'),
(18, 'Sapuris'),
(19, 'Titãs'),
(20, 'Yumekai');

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE IF NOT EXISTS `codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(62) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='codigos de ativação' AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `fights`
--

CREATE TABLE IF NOT EXISTS `fights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_1` int(11) NOT NULL,
  `user_id_2` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `winner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_migrations`
--
-- in use(#1146 - Table 'cdzforever.laravel_migrations' doesn't exist)
-- Error reading data: (#1146 - Table 'cdzforever.laravel_migrations' doesn't exist)

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Browser Game', 'Como podem observar estamos portando o bot para um browser game, algumas caracteristicas serão mantidas outras sofrarão mudanças um tanto quanto drasticas, sugestões podem ser feitas no canal. ', 1, '2012-06-26 00:16:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` varchar(10) NOT NULL,
  `title` varchar(45) NOT NULL,
  `body` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `body`, `updated_at`, `created_at`) VALUES
('rules', 'Regras', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('terms', 'Termos de Uso', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(90) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '500',
  `merits` int(11) NOT NULL DEFAULT '200',
  `level` int(1) NOT NULL DEFAULT '0' COMMENT '0 = user, 1 = mod, 2 = admin',
  `sex` varchar(1) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `cosmo` int(13) NOT NULL DEFAULT '200',
  `cosmo_base` int(11) NOT NULL DEFAULT '200',
  `armor_id` int(11) NOT NULL DEFAULT '0',
  `stamina` int(3) NOT NULL DEFAULT '100',
  `strong` int(4) NOT NULL DEFAULT '10',
  `dexterity` int(4) NOT NULL DEFAULT '8',
  `resistence` int(4) NOT NULL DEFAULT '8',
  `vitality` int(4) NOT NULL DEFAULT '9',
  `wins` int(11) NOT NULL DEFAULT '0',
  `loses` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `money`, `merits`, `level`, `sex`, `state`, `cosmo`, `cosmo_base`, `armor_id`, `stamina`, `strong`, `dexterity`, `resistence`, `vitality`, `wins`, `loses`, `created_at`, `updated_at`) VALUES
(1, 'dvl', '$2a$08$bHZDUWNuZ0hORURNaGNzTOoqFuG8dF2KpUuRCsAYpPmBA61LAlDiS', 'contato@xdvl.info', 500, 200, 1, 'M', 'RJ', 200, 200, 190, 100, 148, 146, 146, 147, 29, 6, '2012-06-20 03:00:01', '2012-06-27 01:15:05'),
(12, 'Saber', '$2a$08$ampiNDljY1dDbkZleGtKV.BPsABrKWVX2kVpdxPucNcz1.Fyj6gr.', 'contato@xdvl.net', 500, 200, 0, 'F', 'PR', 200, 200, 0, 100, 3, 1, 1, 2, 0, 0, '2012-06-24 06:06:54', '2012-06-26 07:17:11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
