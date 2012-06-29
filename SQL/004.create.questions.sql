-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 29, 2012 at 01:32 AM
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
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(1) NOT NULL,
  `name` varchar(23) CHARACTER SET utf8 NOT NULL,
  `genre` varchar(1) CHARACTER SET utf8 NOT NULL,
  `category_id` int(2) NOT NULL,
  `class` varchar(1) CHARACTER SET utf8 NOT NULL,
  `health` int(4) NOT NULL,
  `healthmax` int(4) NOT NULL,
  `invoked` int(1) NOT NULL,
  `strong` int(3) NOT NULL,
  `dexterity` int(3) NOT NULL,
  `resistence` int(3) NOT NULL,
  `vitality` int(3) NOT NULL,
  `cosmo` int(2) NOT NULL,
  `aura` int(2) NOT NULL,
  `cost` int(6) NOT NULL,
  `technics` text CHARACTER SET utf8,
  `extras` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=219 ;

--
-- Dumping data for table `armors`
--

INSERT INTO `armors` (`id`, `user_id`, `name`, `genre`, `category_id`, `class`, `health`, `healthmax`, `invoked`, `strong`, `dexterity`, `resistence`, `vitality`, `cosmo`, `aura`, `cost`, `technics`, `extras`) VALUES
(1, 0, 'Condor', 'M', 1, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Furacão de Aço,Absorção', 'A armadura fora do corpo obtém a forma de uma ''nave'', podendo ser usada para voar.'),
(2, 0, 'Raposa', 'M', 1, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Furacão de Aço,Deslocamento de Terra', 'A armadura fora do corpo obtém a forma de um ''carro'', podendo ser usada como um ''skate''.'),
(3, 0, 'Merlin', 'M', 1, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Furacão de Aço,Anulação de Onda', 'A armadura fora do corpo obtém a forma de uma ''lancha'', podendo ser usada na água.'),
(4, 0, 'Enguia', 'M', 1, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Furacão de Aço,Descarga Elétrica', ''),
(5, 0, 'Pégaso', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Meteoro de Pégaso,Cometa de Pégaso,Turbilhão de Pégaso', ''),
(6, 0, 'Dragão', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Cólera do Dragão,Chute do Dragão,Dragão Nascente,Último Dragão,Cólera dos 100 Dragões', 'Escudo do Dragão.'),
(7, 0, 'Cisne', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Pó de Diamante,Círculo de Gelo,Turbilhão de Gelo,Trovão Aurora,Execução Aurora', 'Escudo do Cisne.'),
(8, 0, 'Andrômeda', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Corrente de Andrômeda,Corrente Nebulosa,Defesa Circular,Onda Relâmpago,Teia de Aranha de Andrômeda,Rede de Andrômeda,Espiral de Andrômeda,Bumerangue de Andrômeda,Armadilha de Andrômeda,Grande Captura de Andrômeda,Tempestade Nebulosa', 'Corrente de Andrômeda.'),
(9, 0, 'Fênix', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Ave Fênix,Golpe Fantasma,Asas de Fênix', ''),
(10, 0, 'Unicórnio', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Chifre de Unicórnio,Galope do Unicórnio', ''),
(11, 0, 'Lobo', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Uivo Mortal do Lobo', ''),
(12, 0, 'Forno', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Chamas Infernais,Barreira de Fogo,Meteoros de Fogo', 'Armadura Imune a Fogo.'),
(13, 0, 'Hidra Macho', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Garras Venenosas', 'Garras Venenosas da Hidra'),
(14, 0, 'Camaleão', 'F', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Chicote de Camaleão', 'Chicote de Camaleão.'),
(15, 0, 'Kaitos', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Corrente Nebulosa Dupla', 'Corrente de Kaitos.'),
(16, 0, 'Cassiopéia', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Corrente Nebulosa Dupla', 'Corrente de Cassiopéia.'),
(17, 0, 'Grou', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Bicada do Grou,Pulo do Grou', 'Punhos em formas de Bicos, altamentes perfurantes.'),
(18, 0, 'Tucano', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Bicada Fatal', 'Foice de Bronze.'),
(19, 0, 'Girafa', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Esta armadura não possui golpes', ''),
(20, 0, 'Dourado', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Corrente Marinha,Água Congelante', ''),
(21, 0, 'Lebre', 'F', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Ilusão do Coelho,Rajada Psíquica', ''),
(22, 0, 'Cão Menor', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Matilha,Flash de Garras', ''),
(23, 0, 'Cavalo', 'M', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Impulso Equino,Chicote divino', 'Chicote das Almas.'),
(24, 0, 'Pomba', 'F', 5, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Mira Maldita', ''),
(25, 0, 'Urso', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Braços de Urso', ''),
(26, 0, 'Leão Menor', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Ataque Explosivo do Leão', ''),
(27, 0, 'Hidra Fêmea', 'M', 5, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Punho de Hércules', ''),
(28, 0, 'Lagarto', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Força Demoníaca', ''),
(29, 0, 'Centauro', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Chama de Babel', ''),
(30, 0, 'Auriga', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Ataque do Disco', 'Discos de Prata que usam a velocidade girátoria para cortar o que está no caminho. Se arremessados, agem como Bumerangues.'),
(31, 0, 'Cérbero', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Bola de Aço', 'Correntes com Bolas de Aço.'),
(32, 0, 'Corvo', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Pluma Negra', ''),
(33, 0, 'Perseus', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Górgona Demoníaca', 'Escudo da Medusa. É capaz de transformar em pedra qualquer um que olhar diretamente para ele ou até mesmo quem manter os olhos na direção do escudo, mesmo fechados, já que o poder do escudo atravessa a retina e atinge diretamente o cérebro do oponente.'),
(34, 0, 'Cães de Caça', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Ataque de um Milhão de Fantasmas', ''),
(35, 0, 'Baleia', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Força Explosiva de Kaitos', ''),
(36, 0, 'Mosca', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Vôo Mortal', ''),
(37, 0, 'Cão Maior', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Golpe do Cão Maior', ''),
(38, 0, 'Hércules', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Poder Supremo de Hércules', ''),
(39, 0, 'Pavão', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Mil Braços', ''),
(40, 0, 'Lótus', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Explosão de Lótus', ''),
(41, 0, 'Cobra', 'F', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Venha Cobra,Garras de Trovão', ''),
(42, 0, 'Águia', 'F', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Meteoros,Lampejo da Águia,Soco Aéreo', ''),
(43, 0, 'Cefeu', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Corrente Lança', 'Corrente de Prata.'),
(44, 0, 'Bússola', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Agilidade Telecinética,Punho dos Quatro Cantos', ''),
(45, 0, 'Flecha', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Flechas Envenenadas,Flecha Suprema', ''),
(46, 0, 'Coroa Boreal', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Pó de Diamante,Círculo de Gelo,Trovão Aurora', ''),
(47, 0, 'Tarântula', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Teia de Tarântula', ''),
(48, 0, 'Lira', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Acorde Noturno,Acorde Perfeito,Serenata da Viagem da Morte', 'Lira Sagrada.'),
(49, 0, 'Altar', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Esta armadura não possui golpes', ''),
(50, 0, 'Taça', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Cura da Taça,Taça das Almas', ''),
(51, 0, 'Escultor', 'M', 17, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Esta armadura não possui golpes', ''),
(52, 0, 'Heimdall', 'M', 11, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Escudo de Odin,Punho Divino', ''),
(53, 0, 'Midgard', 'M', 11, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Pó de Diamante,Círculo de Gelo,Trovão Aurora', ''),
(54, 0, 'Ur', 'M', 11, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Punho Flamejante,Chamas dos Deuses', 'Espada de Fogo de Ur.'),
(55, 0, 'Rung', 'M', 11, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Martelo Bumerangue,Grande Terremoto', 'Dois Bumerangues chamados de Martelo Mjolnir (Nome do Martelo do deus Thor).'),
(56, 0, 'Loki', 'M', 11, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Ataque de Lobos,Tempestade de Odin', ''),
(57, 0, 'Áries', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Telecinese,Rede de Cristal,Teletransporte,Extinção Estrelar,Muralha de Cristal,Revolução Estrelar', ''),
(58, 0, 'Touro', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Punho de Aço,Esquiva Ilusória,Posição de Iai,Grande Chifre,SuperNova Titânica', ''),
(59, 0, 'Gêmeos', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Aniquilação Sensorial,Outra Dimensão,Explosão Galáctica,Erupção Negra Esmagadora', ''),
(60, 0, 'Câncer', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Pinça do Caranguejo,Ondas do Inferno,Chamas Demoníacas Azuis,Hecatombe dos Espíritos,Explosão das Almas', ''),
(61, 0, 'Leão', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Presa Relâmpago,Cápsula do Poder,Plasma Relâmpago,Invocação de Fótons,Aceleração de Fótons,Rugido do Leão,Explosão de Fótons', ''),
(62, 0, 'Virgem', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Telecinese,Privação de Sentidos,Karn,Bênção do Senhor das Trevas,Invocação dos Espíritos,Rendição Divina,Círculo das Seis Existências,Tesouro do Céu', ''),
(63, 0, 'Libra', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Convocação de Armas,Cólera do Dragão,Dragão Nascente,Último Dragão,Cólera dos 100 Dragões', 'Pares de Espadas de Ouro, de Tridentes de Ouro, de Tonfás (Cacetetes) de Ouro, de Barras Triplas de Ouro, de Barras Duplas (Nunchaku) de Ouro e de Escudos de Ouro. O Escudo possui uma corrente que se enrola nele permitindo que o usuário arremesse-o contra o oponente e o ''receba'' na sua mão após o ataque.'),
(64, 0, 'Escorpião', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Agulha Escarlate,Antares,Restrição,Agulha Incandescente,Antares Incandescente', ''),
(65, 0, 'Sagitário', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Flecha de Ouro,Trovão Atômico,Destruição Infinita,Impulso de Luz', 'Arco e Flechas de ouro.'),
(66, 0, 'Capricórnio', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Excalibur,Pedras Saltitantes,X-Calibur,Dança das Espadas,Espada de Luz', ''),
(67, 0, 'Aquário', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Pó de Diamante,Círculo de Gelo,Trovão Aurora,Execução Aurora,Nevasca Congelante', ''),
(68, 0, 'Peixes', 'M', 16, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Vinha de Rosas,Rosas Diabólicas,Rosas Piranhas,Rosa Sangrenta,Espinhos Carmesim', ''),
(69, 0, 'Mantis', 'M', 3, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Punho Mágico de Mantis', 'Garras altamente cortantes e perfurantes.'),
(70, 0, 'Borboleta', 'M', 3, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Fantasia de Moa', ''),
(71, 0, 'Belzebu', 'M', 3, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Asas do Inferno', 'Asas Flamejantes.'),
(72, 0, 'Ashtarote', 'M', 3, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Picada de Cobra', 'Punho Venenoso.'),
(73, 0, 'Dimensões', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto,Secção Espacial,Hecatônquiro Convocado,Fúria de Hecatônquiro,Cem Tiros,Planeta Negro,Espada das Seis Estrelas,Círculo do Caos,Lâmina do Caos,Transferência do Caos', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma Espada de Lâmina Dupla e pode ser usada pelo usuário como arma nas lutas.'),
(74, 0, 'Relâmpago Negro', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto,Rapiera Negra,Rapiera Cintilante,Vendaval Negro,Iluminação Negra,Plasma Negro,Rotação do Trovão Negro', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma grande Rapieira (espada cuja lâmina é longa, fina e flexível) e pode ser usada pelo usuário como arma nas lutas. Possui também embutida duas Rapieiras.'),
(75, 0, 'Galáxia', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto,Lâmina Estelar,Correia Estelar,Círculo Estelar,Escudo Estelar,Batida do Escudo,Espada de Oricalco,Shoushiken', 'Cimitarra: Espécies de "lâmina dupla", onde o cosmo envolve as duas lâminas.'),
(76, 0, 'Ébano', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto,Vórtex Gurthang,Vórtex Negro,Vórtex Solar,Proeminência Solar,Espada Proeminente,Ouroborus Proeminente', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma espada, chamada Gurthang, e pode ser usada pelo usuário como arma nas lutas.'),
(77, 0, 'Febe', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de um punhal, e pode ser usada pelo usuário como arma nas lutas.'),
(78, 0, 'Tempo', 'M', 19, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Dunamis Absoluto,Oráculo Onipotente,Rugido das Trevas,Tempestade do Caos,Domínio de Fenômenos,Areia de Adamantiun', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma foice, chamada de Megas Drepanon, e pode ser usada pelo usuário como arma nas lutas.'),
(79, 0, 'Mnemôsine', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de um machado, e pode ser usada pelo usuário como arma nas lutas.'),
(80, 0, 'Oceano', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto,Margem do Córrego,Impacto da Correnteza,Dilúvio de Thalassa,Corrente D''água Luminescente', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de espadas gêmeas, e pode ser usada pelo usuário como arma nas lutas.'),
(81, 0, 'Réia', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto,Serpente da Terra,Salamandra de Fogo', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma katar (Uma adaga, onde a base forma um H em horizontal e a lâmina acima da base é afiada), e pode ser usada pelo usuário como arma nas lutas.'),
(82, 0, 'Fogo', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma balista (Uma espécie de arco, na qual são atirados projéteis), e pode ser usada pelo usuário como arma nas lutas.'),
(83, 0, 'Julgamento', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto,Lâmina do Julgamento,Balança do Julgamento', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de uma lança, chamada de Braberus, e pode ser usada pelo usuário como arma nas lutas.'),
(84, 0, 'Mar', 'M', 19, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Dunamis Absoluto', 'Sua Sohma (Armadura dos Titãs) fora do corpo toma a forma de um martelo, e pode ser usada pelo usuário como arma nas lutas.'),
(85, 0, 'Pégaso Negro', 'M', 15, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Meteoro Negro', ''),
(86, 0, 'Dragão Negro', 'M', 15, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Tornado Negro', 'Escudo do Dragão Negro.'),
(87, 0, 'Cisne Negro', 'M', 15, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Tempestade Negra de Gelo,Cristal de Gelo', 'Escudo do Cisne Negro. Elmo do Cisne Negro, este é capaz de memorizar tudo que o cavaleiro de Cisne Negro quiser, sendo que este pode enviar para onde quiser quando terminar a memorização.'),
(88, 0, 'Andrômeda Negro', 'M', 15, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Corrente Negra', 'Corrente Negra.'),
(89, 0, 'Fênix Negro', 'M', 15, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Golpe Fantasma das Trevas,Chamas do Inferno', ''),
(90, 0, 'Harpa', 'M', 9, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Requiém de Cordas,Suave Melodia', 'Harpa Fantasma.'),
(91, 0, 'Sagita', 'M', 9, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Flechas Fantasmas', ''),
(92, 0, 'Escudo', 'M', 9, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Escudo Mortal,Escudo Bumerangue', 'Escudo Protetor.'),
(93, 0, 'Cruzeiro do Sul', 'M', 9, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Trovão do Cruzeiro do Sul', ''),
(94, 0, 'Órion', 'M', 9, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Choque Megatômico de Meteoros,Explosão de Meteoros', ''),
(95, 0, 'Esqueleto', 'M', 18, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Pequeno Arbusto,Grande Flato', ''),
(96, 0, 'Deep', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Perfurme Mortal,Fragrância Profunda', ''),
(97, 0, 'Sapo', 'M', 18, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Salto Esmagador', ''),
(98, 0, 'Pappilon', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Fio de Seda,Investida da Larva,Transformação,Defesa de Seda Resistente,Horrível Erupção,Telecinese,Controle de Borboletas,Encantamento Mortal,Retrocedendo', 'Asas de Pappilon que dão a possibilidade ao espectro de Pappilon de voar.'),
(99, 0, 'Harpia', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Devorador de Vidas,Doce Chocolate', 'Asas da sapuris de Harpia, dá ao espectro a possibilidade de voar.'),
(100, 0, 'Ciclope', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Abraço do Gigante,Junta Gigante', ''),
(101, 0, 'Verme', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Tentáculos do Verme,Rugido Sangrento', 'Seis tentáculos resistentes, são capazes de perfurar qualquer coisa e podem se regenerar dependendo do cosmo do espectro.'),
(102, 0, 'Minotauro', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Grandioso Machado Esmagador', ''),
(103, 0, 'Mandrágora', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Grito Dilacerante', 'Uma face no lado direito do peito do espectro, quando comandado pelo espectro, a face começa a gritar emitindo um som, assim como as lendas sobre a mandrágora, os gritos podem imobilizar o oponente.'),
(104, 0, 'Alraune', 'F', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Guilhotina da Flor Sangrenta', ''),
(105, 0, 'Basilisco', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Vôo do Extermínio', 'Asas pertencentes à armadura, dá ao espectro a capacidade de planar. Estas asas possuem também a propriedade de veneno capaz de destruir a natureza quando o espectro assim libera as propriedades venenosas.'),
(106, 0, 'Aqueronte', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Remo Giratório,Redemoinho Esmagador', 'Remo de Aqueronte.'),
(107, 0, 'Esfinge', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Manipulação de Ilusão pela Lira Demoníaca,Balança da Maldição', 'Lira Demoníaca.'),
(108, 0, 'Troll', 'M', 18, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Máxima Perestroika', ''),
(109, 0, 'Balron', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Chicote de Fogo,Reencarnação', 'Chicote de Balron.'),
(110, 0, 'Golem', 'M', 18, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Avalanche Explosiva', ''),
(111, 0, 'Lycaon', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Uivo Infernal', ''),
(112, 0, 'Durahan', 'M', 18, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Spray de Sangue,Mensageiro da Morte', ''),
(113, 0, 'Besouro Mortal', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Grande Parede,Fique Comigo', ''),
(114, 0, 'Górgona', 'M', 18, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Olho da Custódia,Cadeado Mortal', ''),
(115, 0, 'Elfo', 'M', 18, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Contagem Natural,Mistura de Terremoto', ''),
(116, 0, 'Wyvern', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Rugido Deslizante,Dimensão dos Mortos,Máxima Precaução', 'Asas de Wyvern, permite que o espectro a use como impulso para voar. Garras de Wyvern (Não existem)'),
(117, 0, 'Griffon', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Marionete cósmica,Vôo das Plumas Gigantes', 'Asas de Grifo, permite ao espectro a capacidade de planar e também esta possui uma grande resistência a golpes físicos.'),
(118, 0, 'Garuda', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Ilusão Galáctica,Vôo da Garuda,Conquistador de Indra,Resplendor da Morte Galáctica', 'Asas de Garuda, permite ao espectro voar por todo o local, usando suas asas para liberar uma forte ventania para repelir armas do oponente.'),
(119, 0, 'Auriga de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Ataque do Disco', 'Discos de Sapuris que usam a velocidade girátoria para cortar o que está no caminho. Se arremessados, agem como Bumerangues.'),
(120, 0, 'Cérbero de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Bola de Aço', 'Correntes com Bolas de Aço.'),
(121, 0, 'Perseus de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Górgona Demoníaca', 'Escudo da Medusa. É capaz de transformar em pedra qualquer um que olhar diretamente para ele ou até mesmo quem manter os olhos na direção do escudo, mesmo fechados, já que o poder do escudo atravessa a retina e atinge diretamente o cérebro do oponente.'),
(122, 0, 'Hércules de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Poder Supremo de Hércules', ''),
(123, 0, 'Mosca de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Vôo Mortal', ''),
(124, 0, 'Cão Maior de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Golpe do Cão Maior', ''),
(125, 0, 'Lagarto de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Força Demoníaca', ''),
(126, 0, 'Centauro de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Chama de Babel', ''),
(127, 0, 'Baleia de Sapuris', 'M', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Força Explosiva de Kaitos', ''),
(128, 0, 'Áries de Sapuris', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Telecinese,Teletransporte,Extinção Estelar,Muralha de Cristal,Telepatia de Áries,Revolução Estelar', ''),
(129, 0, 'Câncer de Sapuris', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Ondas do Inferno,Telepatia', ''),
(130, 0, 'Peixes de Sapuris', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Rosas Diabólicas Reais,Rosas Piranhas,Rosa Sangrenta,Telepatia', ''),
(131, 0, 'Aquário de Sapuris', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Pó de Diamante,Círculo de Gelo,Trovão Aurora,Esquife de Gelo,Execução Aurora,Telepatia', ''),
(132, 0, 'Capricórnio de Sapuris', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Excalibur,Pedras Saltitantes,Telepatia', ''),
(133, 0, 'Gêmeos de Sapuris', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Aniquilação Sensorial,Outra Dimensão,Satã Imperial,Criar Ilusões,Explosão Galáctica,Telepatia', ''),
(134, 0, 'Serpente', 'M', 8, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Golpe da Serpente', 'Diferente das demais armaduras, a armadura de Serpente é colada no corpo e bastante escorregadia o que dificulta muito um ataque físico do oponente.'),
(135, 0, 'Golfinho', 'M', 8, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Golpe de Golfinho,Cabeçada do Golfinho', 'Diferente das demais armaduras, a armadura de Golfinho é colada no corpo e bastante escorregadia o que dificulta muito um ataque físico do oponente.'),
(136, 0, 'Medusa', 'M', 8, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Força dos Torpedos,Tentáculos', 'Diferente das demais armaduras, a armadura de Medusa é colada no corpo e bastante escorregadia o que dificulta muito um ataque físico do oponente.'),
(137, 0, 'Vampiro', 'F', 8, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Força do Espectro,Garras do Inferno', 'Garras altamente cortantes e perfurantes.'),
(138, 0, 'Dubhe', 'M', 12, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Espada de Odin,Vendaval do Dragão', ''),
(139, 0, 'Phecda', 'M', 12, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Machados de Thor,Machados Mágicos,Hércules Titânico', 'Machados Mágicos de Phecda. Eles se arremessados, agem como Bumerangues.'),
(140, 0, 'Alioth', 'M', 12, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Alcateia de Lobos,Garra Assassina,Golpe do Lobo Imortal', 'Garras de Lobo Retráveis, Máscara do Lobo de Asgard.'),
(141, 0, 'Merak', 'M', 12, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Força Congelante,Raio de Fogo', ''),
(142, 0, 'Benetnasch', 'M', 12, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Acorde Demoníaco,Acorde Perfeito', 'Harpa dos Deuses.'),
(143, 0, 'Megrez', 'M', 12, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Espada de Fogo,Couraça Ametista,Unidade da Natureza', 'Espada de Fogo.'),
(144, 0, 'Mizar', 'M', 12, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Garras do Tigre Negro,Impulso Azul', ''),
(145, 0, 'Arkor', 'M', 12, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Garras do Tigre da Sombra,Punho do Tigre da Sombra', ''),
(146, 0, 'Cavalo Marinho', 'M', 14, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Ventos de Tempestade,Sopro Divino', ''),
(147, 0, 'Sirene', 'M', 14, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Sinfonia Final da Morte,Climax Final da Morte', 'Flauta Doce de Sirene'),
(148, 0, 'Chrysaor', 'M', 14, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Lança Relâmpago,Maha Roshini', 'Tridente de Oriucalcum. É capaz de produzir rajadas de ar altamente cortantes a grandes distâncias, somente com golpes do tridente no ar.'),
(149, 0, 'Scylla', 'M', 14, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Tornado Violento,Ferrão da Abelha Rainha,Águia Poderosa,Serpente Assassina,Fúria do Lobo,Ataque Vampiro,Urso Infernal', ''),
(150, 0, 'Lymnades', 'M', 14, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Salamandra Satânica', 'A armadura de Lymnades dá ao seu usuário a capacidade de penetrar na mente do oponente e se transformar na pessoa que quiser e até imitar seu golpe, porém a força desse golpe não alcança nem 01% da força do original.'),
(151, 0, 'Kraken', 'M', 14, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Aurora Boreal', ''),
(152, 0, 'Dragão Marinho', 'M', 14, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Triângulo Dourado', ''),
(153, 0, 'Sereia', 'F', 14, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Cilada de Coral', ''),
(154, 0, 'Susako', 'M', 4, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Explosão Final,Submissão', ''),
(155, 0, 'Seiryu', 'M', 4, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Tentáculos Mortais,Medo Assassino', ''),
(156, 0, 'Genbu', 'M', 4, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Terror Supremo,Demônio Fatal', ''),
(157, 0, 'Biakko', 'M', 4, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Tigre Branco,Fogo Infernal', ''),
(158, 0, 'Abelha', 'F', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Última Picada', ''),
(159, 0, 'Galo', 'F', 4, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Asas da Destruição', ''),
(160, 0, 'Coruja', 'M', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Vôo Noturno', ''),
(161, 0, 'Tartarigame', 'M', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Poder Terrestre,Tempestade da Tartaruga', ''),
(162, 0, 'Morcego', 'F', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Sonar do Pesadelo', 'O espectro assim que entra na arena, convoca, através de ondas supersônicas, morcegos de todos os lugares.'),
(163, 0, 'Planta Carnívora', 'F', 4, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Planta Devoradora de Almas', ''),
(164, 0, 'Piranha', 'M', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Mandíbulas Arrasadoras', ''),
(165, 0, 'Viúva Negra', 'F', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Teia Venenosa', ''),
(166, 0, 'Javali', 'M', 4, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Javali Furioso', ''),
(167, 0, 'Búfalo', 'M', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Chifre de Búfalo', ''),
(168, 0, 'Hiena', 'M', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Risada Maléfica,Mordida da Hiena', ''),
(169, 0, 'Elefante', 'M', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Tromba Brutal', ''),
(170, 0, 'Rinoceronte', 'M', 4, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Chifrada,Fúria do Rinoceronte,Chifre Perfurador', ''),
(171, 0, 'Varan', 'F', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Soco Relâmpago', ''),
(172, 0, 'Pantera', 'M', 4, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Rugido da Pantera,Mordida Fatal', ''),
(173, 0, 'Tigre', 'M', 4, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Grande Furacão do Tigre', ''),
(174, 0, 'Jaguar', 'M', 4, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'garras do Trovão,Fúria do Vento,Garras Supremas', 'Possui garras afiadíssimas em seus punhos.'),
(175, 0, 'Gato', 'F', 4, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Ondas Mentais', ''),
(176, 0, 'Equidna', 'F', 4, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Ataque Predador', ''),
(177, 0, 'Lince', 'M', 6, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Hércules Reluzente', 'Armadura imune ao Fogo.'),
(178, 0, 'Carina', 'M', 6, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Coroa de Fogo', 'Armadura imune ao Fogo.'),
(179, 0, 'Coma Berenices', 'M', 6, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Cabelo Dourado da Morte', 'Armadura imune ao Fogo.'),
(180, 0, 'Ikarus', 'M', 2, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Esta armadura não possui golpes', ''),
(181, 0, 'Theseus', 'M', 2, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Esta armadura não possui golpes', ''),
(182, 0, 'Odysseus', 'M', 2, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Esta armadura não possui golpes', ''),
(183, 0, 'Atena', 'F', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(184, 0, 'Poseidon', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(185, 0, 'Hera', 'F', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(186, 0, 'Zeus', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(187, 0, 'Artemis', 'F', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(188, 0, 'Hades', 'M', 7, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(189, 0, 'Lúcifer', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(190, 1, 'Ares', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(191, 0, 'Odin', 'M', 11, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(192, 0, 'Hermes', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(193, 0, 'Dionísio', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(194, 0, 'Abel', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(195, 0, 'Afrodite', 'F', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(196, 0, 'Apollo', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(197, 0, 'Polares', 'F', 11, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(198, 0, 'Éris', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(199, 0, 'Hefesto', 'M', 13, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(200, 0, 'Hypnos', 'M', 7, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(201, 0, 'Thanatos', 'M', 7, 'S', 1000, 1000, 0, 300, 200, 200, 250, 30, 99, 140000, 'Esta armadura não possui golpes', ''),
(202, 0, 'Poinx', 'M', 10, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Esta armadura não possui golpes', ''),
(203, 0, 'Cianos', 'M', 10, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Chicote de Unhas de Fogo,Pedras em Fusão', ''),
(204, 0, 'Leucotes', 'M', 10, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Esta armadura não possui golpes', ''),
(205, 0, 'Melas', 'M', 10, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Esta armadura não possui golpes', ''),
(206, 0, 'Paios', 'M', 10, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Formação de Combate de Oito Garras', 'Possui duas lâminas acima das luvas da armadura.'),
(207, 0, 'Anthrakma', 'M', 10, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Esta armadura não possui golpes', 'Possui uma maça gigante.'),
(208, 0, 'Nasu', 'F', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Ilusões de Espectro,Controle das Moscas,Chamado dos Zumbis,Sepulcro dos Amaldiçoados,Regeneração do Corpo e Alma', ''),
(209, 0, 'Behemoth', 'F', 18, 'B', 500, 500, 0, 200, 100, 100, 150, 20, 37, 0, 'Esconderijo das Sombras,Realidade Brutal,Selo das Sombras', ''),
(210, 0, 'Benu', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Explosão da Coroa Solar,Impacto da Coroa Solar,Coroa do Sol Negra,Escudo da Coroa Solar,Crucificação Ankh,Elevação das Trevas', 'Asas que dão à possibilidade do espectro voar por todo o local desejado. Também envolvida por cosmo pode liberar uma rajada de vento contra o oponente.'),
(211, 0, 'Hanuman', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Telecinese,Controle das Almas,Teletransporte,Desejo das Almas do Submundo,Telepatia de Hanuman,Materialização do Desejo das Almas do Submundo', 'A sapuris de Hanuman dá ao espectro a capacidade de planar sem nem mesmo precisar de asas.'),
(212, 0, 'Mefisóteles', 'M', 18, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Domínio Temporal,Outro Mundo,Rebobinar Biológico', 'Relógio de bolso prateado, para utilizá-lo é necessário que se abra a "tampa".'),
(213, 0, 'Dryads', 'M', 18, 'D', 200, 200, 0, 100, 33, 33, 66, 10, 2, 0, 'Vale dos Lírios,Cura dos Lírios', ''),
(214, 0, 'Phantasos', 'F', 20, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Em Sono', ''),
(215, 0, 'Icelos', 'M', 20, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Fenda Dimensional,Em Sono,Devolução Dimensional', 'Garra de Ikelus, capaz de abrir fendas dimensionais quando usadas pelo espectro.'),
(216, 0, 'Oneiros', 'M', 20, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Oráculo do Guardião,Em Sono,Fusão dos Sonhos', ''),
(217, 0, 'Morpheus', 'M', 20, 'A', 750, 750, 0, 250, 150, 150, 200, 25, 54, 100000, 'Em Sono,Mundo de Morphia,Sonho Real,Papoulas do Mundo dos Sonhos', ''),
(218, 0, 'Sylph', 'M', 18, 'C', 350, 350, 0, 150, 50, 50, 100, 15, 15, 0, 'Ventos do Norte', '');

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
  `user_id` int(13) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__codes__users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='codigos de ativação' AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `awnsers` text NOT NULL,
  `correct` varchar(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=230 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `awnsers`, `correct`) VALUES
(1, 'O que é o ''Star Hill''?', '{"a":"Essencia do Cosmo","b":"Local onde somente um Grande Mestre tem acesso","c":"Golpe do Mu de \\u00c1ries","d":"Mat\\u00e9ria Prima das Armaduras Sagradas"}', 'b'),
(2, 'Hyoga tinha Nacionalidade...', '{"a":"Ant\\u00e1rtica","b":"Russa","c":"Inglesa","d":"Japonesa"}', 'b'),
(3, 'O que é uma Glória?', '{"a":"Nome da irm\\u00e3 do Seiya","b":"Nome da m\\u00e3e de Shun e Ikki","c":"Um tipo de Armadura","d":"Um golpe de um Deus"}', 'c'),
(4, 'O zero Absoluto é a temperatura:', '{"a":"273K","b":"273\\u00b0C","c":"0\\u00b0C","d":"0K"}', 'd'),
(5, 'Por quanto Guilty comprou Esmeralda?', '{"a":"Tr\\u00eas sacos de Farinha","b":"Um prato de Comida","c":"Sete sacos de Arroz","d":"Uma moeda de Ouro"}', 'a'),
(6, 'O que é o ''Yomotsu Hirasaka''?', '{"a":"Passagem que liga o Mundo dos Vivos e o dos Mortos","b":"Nome verdadeiro do Av\\u00f4 de Saori","c":"Golpe de Shaka de Virgem","d":"Golpe de Krishna de Chrysaor"}', 'a'),
(7, 'Quem domina a Técnica do Satori?', '{"a":"Asterion de C\\u00e3es de Ca\\u00e7a","b":"Lune de Balron","c":"Krishna de Chrysaor","d":"Poseidon"}', 'a'),
(8, 'Quem recebe de Atena a técnica ''Misopetha-Menos''?', '{"a":"Shion de \\u00c1ries","b":"Hades","c":"Shun de Andr\\u00f4meda","d":"Dohko de Libra"}', 'd'),
(9, 'Maha Rosini é um golpe secreto de um...', '{"a":"Cavaleiro de Ouro","b":"Espectro de Hades","c":"Marina","d":"Cavaleiro Celestial"}', 'c'),
(10, 'O que é Nike?', '{"a":"Patrocinadora da Sele\\u00e7\\u00e3o Brasileira","b":"Deusa da Vit\\u00f3ria","c":"Deusa do T\\u00eanis","d":"Deusa da Onda"}', 'b'),
(11, 'Oricalco é...', '{"a":"Mat\\u00e9ria Prima das Armaduras Sagradas","b":"Material usado para curar a vis\\u00e3o de Shiryu","c":"Uma constela\\u00e7\\u00e3o","d":"Uma Arma"}', 'a'),
(12, '''Onda Relâmpago'' é um golpe de...', '{"a":"Aiolia de Le\\u00e3o","b":"Poseidon","c":"Shun de Andr\\u00f4meda","d":"Sh\\u00f4 de Condor"}', 'c'),
(13, 'O que Seiya fez para derrotar Markito?', '{"a":"Usou o Meteoro de P\\u00e9gaso","b":"Peidou","c":"Pediu ajuda a Atena","d":"Deu uma banda nele"}', 'b'),
(14, 'Qual desses é um golpe de Milo de Escorpião:', '{"a":"Agulha Sangrenta","b":"Prego Escarlate","c":"Resson\\u00e2ncia","d":"Restri\\u00e7\\u00e3o"}', 'd'),
(15, 'Qual desses é um golpe de Io de Scylla:', '{"a":"Picada da Abelha Real","b":"Abra\\u00e7o do Urso","c":"F\\u00faria do Lobo","d":"Presas do Morcego"}', 'c'),
(16, 'Kamui é...', '{"a":"Camus em Japon\\u00eas","b":"Um tipo de Armadura Sagrada","c":"Local onde Dohko descansa","d":"Local de Nascimento de Gigars"}', 'b'),
(17, 'Guidecca é...', '{"a":"Uma biblioteca","b":"Local de audi\\u00eancia de Hades","c":"Um estilo de mang\\u00e1","d":"Local de Treinamento de Ban de Lionet"}', 'b'),
(18, 'Ilusão Galáctica é...', '{"a":"Um golpe de Kanon","b":"Um golpe de Saga de G\\u00eameos","c":"Um golpe de Aiacos de Garuda","d":"Um golpe de Ikki utilizado na Saga G"}', 'c'),
(19, 'Kaan é um golpe de...', '{"a":"Shaka de Virgem","b":"Krishna de Chrysaor","c":"Hypnos","d":"Thanatos"}', 'a'),
(20, 'Qual desses cavaleiros aparecem no mangá?', '{"a":"Mestre Crystal","b":"D\\u00f3crates","c":"Spika","d":"Jango"}', 'd'),
(21, 'No mangá, o Dragão Negro recebe ajuda de quem?', '{"a":"Ikki de F\\u00eanix","b":"De um primo","c":"De Um irm\\u00e3o cego","d":"Andr\\u00f4meda Negro"}', 'c'),
(22, 'A Saga de Hades foi espelhada em que Obra Literária?', '{"a":"os Lus\\u00edadas","b":"B\\u00edblia","c":"Odiss\\u00e9ia","d":"Divina Com\\u00e9dia"}', 'd'),
(23, 'Quem é Toru Furuya?', '{"a":"Antigo Cavaleiro de Prata","b":"Desenhista da S\\u00e9rie","c":"Um dos Dubladores da S\\u00e9rie","d":"Presidente da Toei"}', 'c'),
(24, 'Quem matou Albion de Cefeu?', '{"a":"Leda e Spika","b":"Afrodite de Peixes","c":"Milo de Escorpi\\u00e3o","d":"June"}', 'b'),
(25, 'No mangá, os cavaleiros de Bronze são todos?', '{"a":"Irm\\u00e3os","b":"Japoneses","c":"Primos","d":"Netos de Mitsumasa Kido"}', 'a'),
(26, 'Qual a relação de Kiki com o termo ''Appendex''?', '{"a":"\\u00c9 a constela\\u00e7\\u00e3o dele","b":"\\u00c9 o nome dele","c":"Local onde ele nasceu","d":"Local de treinamento dele"}', 'b'),
(27, 'Thanatos e Hypnos são o que?', '{"a":"Cavaleiros de Atena","b":"Espectros de Hades","c":"Ju\\u00edzes da Morte","d":"Deuses"}', 'd'),
(28, 'Tokumaru é o nome de quem?', '{"a":"Mestre Cristal","b":"D\\u00f3crates","c":"Gigars","d":"Tatsumi"}', 'd'),
(29, 'Marin é a irmã de quem?', '{"a":"Shina de Cobra","b":"Seiya de P\\u00e9gaso","c":"Toma de Ikarus","d":"Odysseus"}', 'c'),
(30, 'Qual desses golpes não são de Shun?', '{"a":"Bumerangue de Andr\\u00f4meda","b":"Rede de Andr\\u00f4meda","c":"Espiral de Andr\\u00f4meda","d":"Correnteza de Andr\\u00f4meda"}', 'd'),
(31, '''Avalanche Explosiva'' é um golpe de quem?', '{"a":"Rock de Golem","b":"Odysseus","c":"Isaak de Kraken","d":"Mestre Cristal"}', 'a'),
(32, 'O que é o ''Aglomerado de Presépio''?', '{"a":"Sekishiki","b":"Est\\u00e1tua do Santu\\u00e1rio","c":"Um golpe","d":"Uma cidade"}', 'a'),
(33, '''Heinstein'' é o nome de que(m)?', '{"a":"M\\u00e9dico da Funda\\u00e7\\u00e3o Graad","b":"Cientista da Funda\\u00e7\\u00e3o Graad","c":"Castelo de Hades","d":"Templo de Poseidon"}', 'c'),
(34, 'O que é ''Kali''?', '{"a":"Deusa Hindu","b":"Deusa Grega","c":"Deusa Romana","d":"Deusa N\\u00f3rdica"}', 'a'),
(35, 'Kundalini é a versão hindu de...?', '{"a":"Armadura","b":"For\\u00e7a F\\u00edsica","c":"Cosmo","d":"Pontos Vitais"}', 'c'),
(36, 'Quem é o filho(a) preferido(a) de Zeus?', '{"a":"Hefesto","b":"Afrodite","c":"Atena","d":"Pers\\u00e9fone"}', 'c'),
(37, 'Qual o nome da guerra dos Deuses contra os Titãs?', '{"a":"Guerra Santa","b":"Guerra Divina","c":"Guerra Mortal","d":"Guerra de mil dias"}', 'b'),
(38, 'Quem sãos os pais de Minos e Radamanthys?', '{"a":"Zeus e a Rainha Europa de Fen\\u00edcia","b":"Hades e R\\u00e9ia","c":"Gaia e Urano","d":"Hebe e H\\u00e9rcules"}', 'a'),
(39, 'Que animal Zeus virou para seduzir a rainha de Esparta?', '{"a":"Drag\\u00e3o","b":"Touro","c":"Cavalo","d":"Cisne"}', 'd'),
(40, 'Cocytos(Cocitos) é a prisão de número...', '{"a":"4","b":"8","c":"7","d":"2"}', 'b'),
(41, '''Tenjou Tenga Yuiga Dokuson'', significa?', '{"a":"Morra como um verme que voc\\u00ea \\u00e9.","b":"Pra voc\\u00ea tudo termina aqui.","c":"Esse mundo \\u00e9 todo meu.","d":"Ficar\\u00e1 para sempre nessa casa."}', 'c'),
(42, 'Qual o nome da vila de treinamento de Hyoga?', '{"a":"Vila Kohoutek","b":"Vila Graad Azul","c":"Vila de Rodorio","d":"Vila da Noruega"}', 'a'),
(43, 'Quem é o primeiro Espectro que aparece para Mu?', '{"a":"Shion de \\u00c1ries","b":"M\\u00e1scara da Morte de C\\u00e2ncer","c":"Afrodite de Peixes","d":"Niobe de Verme"}', 'a'),
(44, 'O que quer dizer Mesopetha Menos em português?', '{"a":"Envelhecimento Retardado","b":"Preserva\\u00e7\\u00e3o do Esp\\u00edrito","c":"Lentid\\u00e3o do Cora\\u00e7\\u00e3o","d":"Menos Velho"}', 'b'),
(45, 'O que quer dizer Elysios?', '{"a":"Inferno","b":"Olimpo","c":"C\\u00e9u","d":"Para\\u00edso"}', 'd'),
(46, 'Quantas prisões existem no Mundo de Hades?', '{"a":"Oito Pris\\u00f5es","b":"Sete Pris\\u00f5es","c":"Seis Pris\\u00f5es","d":"Quatro Pris\\u00f5es"}', 'a'),
(47, 'Quantos vales existem no Mundo de Hades?', '{"a":"Dois Vales","b":"Tr\\u00eas Vales","c":"Quatro Vales","d":"Cinco Vales"}', 'b'),
(48, 'Quantos Malbolges existem no Mundo de Hades?', '{"a":"Oito Malboges","b":"Seis Malboges","c":"Dez malboges","d":"Quinze Malbolges"}', 'c'),
(49, 'Em que edifício Seiya peida?', '{"a":"Edif\\u00edcio dos Pecados","b":"Edif\\u00edcio dos Julgamentos","c":"Edif\\u00edcio do Perd\\u00e3o","d":"Edif\\u00edcio de Hades"}', 'b'),
(50, 'Os Espectros de Hades também são chamados de...', '{"a":"Cavaleiros Sapuris","b":"Guerreiros Mortos","c":"Zumbis de Hades","d":"Estrelas mal\\u00e9ficas"}', 'd'),
(51, 'Quantas horas Hades deu de vida aos cavaleiros ressucitados?', '{"a":"8 Horas","b":"10 Horas","c":"12 Horas","d":"20 Horas"}', 'c'),
(52, 'Quem acendeu o Relogio de fogo do santuário?', '{"a":"Seiya de P\\u00e9gaso","b":"Dohko de Libra","c":"Kanon","d":"Atena"}', 'b'),
(53, 'Em que país fica o Castelo de Hades na terra?', '{"a":"Gr\\u00e9cia","b":"Jap\\u00e3o","c":"Alemanha","d":"Fran\\u00e7a"}', 'c'),
(54, 'Quem foi o 1º Cavaleiro de Ouro a morrer na saga de Hades?', '{"a":"Mu de \\u00c1ries","b":"Aldebaran de Touro","c":"Saga de G\\u00eameos","d":"Afrodite de Peixes"}', 'b'),
(55, 'Que Cavaleiro protege a Casa de Câncer na saga de Hades?', '{"a":"Mu de \\u00c1ries","b":"Dohko de Libra","c":"Milo de Escorpi\\u00e3o","d":"Shaka de Virgem"}', 'd'),
(56, 'Que animal Dohko tem tatuado em suas costas?', '{"a":"Drag\\u00e3o","b":"Tigre","c":"Le\\u00e3o","d":"On\\u00e7a"}', 'b'),
(57, 'Quanto vezes batia o coraçao do Dohko por ano?', '{"a":"Oitenta mil vezes","b":"Cem mil vezes","c":"Duzentas mil vezes","d":"Quinhentas mil vezes"}', 'b'),
(58, 'Quantas formas tem Myu de Pappilon?', '{"a":"1 forma","b":"2 formas","c":"3 formas","d":"4 formas"}', 'c'),
(59, 'Quantos Espectros Aiolia mata na sua Casa?', '{"a":"1 Espectro","b":"3 Espectros","c":"4 Espectros","d":"6 Espectros"}', 'd'),
(60, 'Shaka morre entre as...', '{"a":"As pilastras da Casa de Virgem","b":"A Casa de Virgem e a de Libra","c":"\\u00c1rvores G\\u00eameas","d":"Atena e Kanon"}', 'c'),
(61, 'Qual o nome do golpe que Shaka usa contra os Cavaleiros de Ouro conrrompidos?', '{"a":"Rikudo Rinne","b":"Tenma Koufuku","c":"Kahn","d":"Tembu Horin"}', 'd'),
(62, 'Qual o nome da técnica proibida por Atena?', '{"a":"Exclama\\u00e7\\u00e3o Divina","b":"Sopro Divino","c":"Exclama\\u00e7\\u00e3o dos Deuses","d":"Exclama\\u00e7\\u00e3o de Atena"}', 'd'),
(63, 'O poder do Sopro de Atena é comparado ao...', '{"a":"Poder de Zeus","b":"Big Bang","c":"Poder de Buda","d":"Sopro Divino"}', 'b'),
(64, 'Qual o único sentido que Saga fica após a luta com shaka?', '{"a":"Vis\\u00e3o","b":"Audi\\u00e7\\u00e3o","c":"Paladar","d":"Tato"}', 'a'),
(65, 'Qual o único sentido que Camus fica após a luta com shaka?', '{"a":"Vis\\u00e3o","b":"Audi\\u00e7\\u00e3o","c":"Paladar","d":"Tato"}', 'b'),
(66, 'Qual o único sentido que Shura fica após a luta com shaka?', '{"a":"Vis\\u00e3o","b":"Audi\\u00e7\\u00e3o","c":"Paladar","d":"Tato"}', 'c'),
(67, 'Quanto cada inimigo que entrar no Castelo de Hades perde de poder?', '{"a":"50%","b":"9\\/10","c":"1\\/3","d":"80%"}', 'b'),
(68, 'Quem mata Zelos de Sapo?', '{"a":"Camus de Aqu\\u00e1rio","b":"Lune de Balron","c":"Seiya de P\\u00e9gaso","d":"Hyoga de Cisne"}', 'd'),
(69, 'Existem no total quantos Sentidos?', '{"a":"Oito Sentidos","b":"Nove Sentidos","c":"Dez Sentidos","d":"Cem Sentidos"}', 'b'),
(70, 'Quem libertou Hypnos e Thanatos?', '{"a":"Orfeu de Lira","b":"Hades","c":"Kanon de Drag\\u00e3o Marinho","d":"Pandora"}', 'd'),
(71, 'Como são chamadas as caixas onde são', '{"a":"Ba\\u00fa das Armaduras","b":"Caixa de Atena","c":"Ba\\u00fa Sagrado","d":"Caixa de Pandora"}', 'd'),
(72, 'Como é também chamado o Rio Aqueronte?', '{"a":"Rio Styx","b":"Rio da Morte","c":"Rio dos Mortos","d":"Rio do Inferno"}', 'a'),
(73, 'O que é dado a Caronte em troca dele levar Shun e Seiya a outra margem do rio Aqueronte?', '{"a":"Duas moedas de Ouro","b":"Duas moedas de Prata","c":"Pingente de Shun","d":"Armadura de Atena"}', 'c'),
(74, 'O que está escrito no pingente do Shun?', '{"a":"Esp\\u00edrito Divino","b":"Esp\\u00edrito Demon\\u00edaco","c":"Irm\\u00e3os pra Sempre","d":"Seu pra Sempre"}', 'd'),
(75, 'Por que Seiya e Shun não estão nos arquivos de Lune?', '{"a":"Porque eles ainda est\\u00e3o vivos","b":"Porque s\\u00e3o Cavaleiros de Atena","c":"Porque Seiya peidou","d":"Porque eles n\\u00e3o t\\u00eam pecados"}', 'a'),
(76, 'Qual é a ultima parte do inferno?', '{"a":"Sala de Hades","b":"Cocito","c":"Muro das Lamenta\\u00e7\\u00f5es","d":"7\\u00aa Pris\\u00e3o"}', 'c'),
(77, 'No Muro das Lamentações, Mu recebe que arma?', '{"a":"Tonf\\u00e1","b":"Tridente","c":"Barra Dupla","d":"Espada"}', 'd'),
(78, 'No Muro das Lamentações, Shaka recebe que arma?', '{"a":"Tonf\\u00e1","b":"Tridente","c":"Barra Dupla","d":"Espada"}', 'a'),
(79, 'No Muro das Lamentações, Aiolia recebe que arma?', '{"a":"Tonf\\u00e1","b":"Tridente","c":"Barra Dupla","d":"Espada"}', 'b'),
(80, 'No Muro das Lamentações, Milo recebe que arma?', '{"a":"Tonf\\u00e1","b":"Tridente","c":"Barra Dupla","d":"Espada"}', 'c'),
(81, 'No Muro das Lamentações, Dohko fica com que arma?', '{"a":"Tonf\\u00e1","b":"Escudo","c":"Barra Dupla","d":"Espada"}', 'b'),
(82, 'Quem mata Radamanthys de Wyvern?', '{"a":"Saga","b":"Kanon","c":"Ikki","d":"Mu"}', 'b'),
(83, 'Em quantas partes é divida a saga de Hades?', '{"a":"Duas partes","b":"Tr\\u00eas partes","c":"Quatro partes","d":"Cinco partes"}', 'b'),
(84, 'Hypnos é o deus do(a)...', '{"a":"Inferno","b":"Sono","c":"Morte","d":"Makai"}', 'b'),
(85, 'Thanatos é o deus do(a)...', '{"a":"Inferno","b":"Sono","c":"Morte","d":"Makai"}', 'c'),
(86, 'Quem mata os 6 últimos espectros?', '{"a":"Dohko de Libra","b":"Seiya de P\\u00e9gaso","c":"Milo de Escorpi\\u00e3o","d":"Ikki de F\\u00eanix"}', 'd'),
(87, 'Ikki só pode ir ao Elysios por que ele possui...', '{"a":"Parentesco com Shun","b":"Armadura das Trevas","c":"Colar de Pandora","d":"Esp\\u00edrito Demon\\u00edaco"}', 'c'),
(88, 'Quem matou Pandora?', '{"a":"Shun de Andr\\u00f4meda","b":"Ikki de F\\u00eanix","c":"Seiya de P\\u00e9gaso","d":"Thanatos"}', 'd'),
(89, 'Quem destrói o colar de Pandora?', '{"a":"Thanatos","b":"Ikki de F\\u00eanix","c":"Hyoga de Cisne","d":"Shun de Andr\\u00f4meda"}', 'a'),
(90, 'Quem manda as Armaduras de Ouro pros Cavaleiros de Bronze no Elysios?', '{"a":"Poseidon","b":"Dohko de Libra","c":"Shina de Cobra","d":"Marin de \\u00c1guia"}', 'a'),
(91, 'Além de Kanon que outro General Marina aparece na Saga de Hades?', '{"a":"Sorento de Sirene","b":"Verdadeiro Drag\\u00e3o Marinho","c":"Io de Scylla","d":"Krishna de Chrysaor"}', 'a'),
(92, 'Qual o nome da mãe de Hyoga De Cisne?', '{"a":"Nast\\u00e1ssia","b":"Anast\\u00e1ssia","c":"Nat\\u00e1lia","d":"Nat\\u00e1ssia"}', 'd'),
(93, 'Nome da amada de Ikki, morta na Ilha da Rainha da Morte?', '{"a":"Safira","b":"Esmeralda","c":"Rubi","d":"P\\u00e9rola"}', 'b'),
(94, 'Nome da irmã de Seiya?', '{"a":"Marin","b":"Seiyola","c":"Seika","d":"Sheila"}', 'c'),
(95, 'Qual armadura foi usada por Hyoga na batalha contra Durval?', '{"a":"Midgard","b":"Aqu\\u00e1rio","c":"Kamui","d":"Cisne Negro"}', 'a'),
(96, 'Nome da Única amazona que protege Poseidon?', '{"a":"Tephys","b":"Thelis","c":"Thetas","d":"Thetis"}', 'd'),
(97, 'Contra qual Cavaleiro Marina, Shiryu perdeu a visão?', '{"a":"Krishna de Chrysaour","b":"Isaak de Kraken","c":"Kasa de Lymnades","d":"Sorento de Sirene"}', 'a'),
(98, 'Qual o cavaleiro da constelação do Cruzeiro do Sul?', '{"a":"Kraisto","b":"Jaga","c":"Maya","d":"Yan"}', 'a'),
(99, 'Quem é o representante de Odin na Terra?', '{"a":"Freya","b":"Durval","c":"Siegfried","d":"Midgard"}', 'b'),
(100, 'Em Lost Canvas: quem é o dono da técnica Ondas dos Espiritos?', '{"a":"Shion de \\u00c1ries","b":"Manigold de C\\u00e2ncer","c":"Hakurei de Jamir","d":"Tenma de P\\u00e9gaso"}', 'c'),
(101, 'Qual deus ''utilizado'' em um dos filmes não pertence à Mitologia Grega?', '{"a":"Abel","b":"Arthemis","c":"L\\u00facifer","d":"\\u00c9ris"}', 'a'),
(102, 'O Mestre Ancião foi inspirado em que personagem?', '{"a":"Mickey","b":"Yoda","c":"Grinch","d":"Gremilins"}', 'b'),
(103, 'De qual dessas produções, os Cavaleiros do Zodíaco influenciaram o diretor?', '{"a":"Duelo de Tit\\u00e3s","b":"Avatar","c":"Deuses Gregos","d":"F\\u00faria de Tit\\u00e3s"}', 'd'),
(104, 'Cavaleiros do Zodíaco tem seu retorno marcado pra TV aberta em 2010. Qual emissora vai exibí-lo?', '{"a":"Globo","b":"Redetv","c":"Band","d":"Sbt"}', 'c'),
(105, 'Dos cavaleiros de gelo, qual não existe no mangá?', '{"a":"Hyoga de Cisne","b":"Mestre Crystal","c":"Camus de Aqu\\u00e1rio","d":"Isaak de Kraken"}', 'b'),
(106, 'Qual cavaleiro derrotou um dragão e com seu sangue, se tornou imortal?', '{"a":"Seiya de P\\u00e9gaso","b":"Ohko de Tigre","c":"Siegfried de Doube","d":"Vegeta"}', 'c'),
(107, 'Qual Cavaleiro Marina é o unico capaz de se transformar em qualquer outro Cavaleiro imitando a aparência, armadura e até seu poder?', '{"a":"Kasa de Ryumunades","b":"Bian de Cavalo Marinho","c":"Isaak de Kraken","d":"Io de Scylla"}', 'a'),
(108, 'Qual o nome da técnica usada por Athena em Dohko de Libra?', '{"a":"Athena Asamiya","b":"Athena Exclamation","c":"Sonic Boom","d":"Mesopetha Menos"}', 'd'),
(109, 'Quem destruiu a Ilha de Andrômeda?', '{"a":"Milo de Escorpi\\u00e3o","b":"Saga de G\\u00eameos","c":"Hades","d":"Furac\\u00e3o Katrina"}', 'a'),
(110, 'Quem salvou a Athena, quando bebe, das mãos do mestre do santuário?', '{"a":"Saga de G\\u00eameos","b":"Aiolos de Sagit\\u00e1rio","c":"Pastor Pil\\u00e3o","d":"Seiya de P\\u00e9gaso"}', 'b'),
(111, 'Qual cavaleiro de Bronze foi treinado na Algeria?', '{"a":"Ban de Le\\u00e3o Menor","b":"Ichi de Hidra","c":"Jabu de Unic\\u00f3rnio","d":"June de Camale\\u00e3o"}', 'c'),
(112, 'Qual cavaleiro cuja familia foi morta por ursos e ele foi salvo por lobos?', '{"a":"Hyoga de Cisne","b":"Nachi de Lobo","c":"Fenrir de Arioto","d":"Mogli"}', 'c'),
(113, 'Contra quem, os cavaleiros de Bronze lutavam quando os cavaleiros de aço apareceram a primeira vez?', '{"a":"Mouses de Baleia","b":"Dio de Mosca","c":"Sirius de C\\u00e3o Menor","d":"Babel de Centauro"}', 'd'),
(114, 'Qual o nome do cavaleiros que tem o poder de transformar o oponente em pedra?', '{"a":"Algol","b":"Perseu","c":"Medusa","d":"Golem"}', 'a'),
(115, 'Qual cavaleiro de Prata ajuda os de bronze na batalha contra os espectros de Hades?', '{"a":"Nicol de Altar","b":"Orfeu de Lira","c":"Daidalos de Cefeu","d":"Algethi de H\\u00e9rcules"}', 'b'),
(116, 'O nome do local onde aconteceu a Guerra Galática:', '{"a":"Star Hill","b":"Coliseu","c":"Campos El\\u00edsios","d":"Gibraltar"}', 'b'),
(117, 'Onde os cavaleiros de Athena foram lutar contra os Guerreiros Deuses?', '{"a":"Pindamonhangaba","b":"Asgard","c":"Midgard","d":"Valinor"}', 'b'),
(118, 'Qual fruta foi utilizada por Eris para Absorver os poderes de Athena?', '{"a":"Tomate Dourado","b":"Laranja Dourada","c":"Acerola Dourada","d":"Ma\\u00e7a Dourada"}', 'd'),
(119, 'Nome da Empresa Herdada por Saori de seu Avô?', '{"a":"Microsoft","b":"Funda\\u00e7\\u00e3o Akira","c":"Funda\\u00e7\\u00e3o de Explora\\u00e7\\u00e3o Infantil Kido","d":"Funda\\u00e7\\u00e3o Kido"}', 'd'),
(120, 'Qual o prêmio da Guerra Galatica?', '{"a":"Paz Mundial","b":"A m\\u00e3o de Saori","c":"Armadura de Sagit\\u00e1rio","d":"Um milh\\u00e3o em barras de ouro!"}', 'c'),
(121, 'Qual emissora transmitiu Cavaleiros do Zodiaco pela primeira vez?', '{"a":"Band","b":"Globo","c":"Manchete","d":"NatGeo"}', 'c'),
(122, 'Nome do mestre de Ikki:', '{"a":"dvl","b":"Guilty","c":"Geisty","d":"D\\u00f3crates"}', 'b'),
(123, 'Qual estúdio redublou os Cavaleiros do Zodiaco?', '{"a":"Est\\u00fadio \\u00c1lamo","b":"Herbert Richards","c":"Audio News","d":"Mastersound"}', 'a'),
(124, 'Qual arma usava Poseidon?', '{"a":"AK47","b":"Tridente","c":"Bast\\u00e3o","d":"Harpa"}', 'b'),
(125, 'Qual a constelação protetora do cavaleiro de prata, Asterion?', '{"a":"C\\u00e3es de Ca\\u00e7a","b":"Auriga","c":"C\\u00e9rbero","d":"Cetus"}', 'a'),
(126, 'Quem matou Shion?', '{"a":"Dohko de Libra","b":"Tenma de P\\u00e9gasus","c":"Aiolos de Sagit\\u00e1rio","d":"Saga de G\\u00eameos"}', 'd'),
(127, 'Qual o cavaleiro mais próximo de Deus?', '{"a":"Aiolos de Sagit\\u00e1rio","b":"Saga de G\\u00eameos","c":"Shaka de Virgem","d":"Seiya de P\\u00e9gaso"}', 'c'),
(128, 'Quem treinou Shiryu?', '{"a":"O Godinez","b":"Mestre Anci\\u00e3o","c":"Seijurou Hiko","d":"A vida"}', 'b'),
(129, 'Quem treinou Seiya?', '{"a":"Shura de Capric\\u00f3rnio","b":"Aiolos de Sagit\\u00e1rio","c":"Marin de \\u00c1guia","d":"Cassius"}', 'c'),
(130, 'Quem treinou Hyoga no Anime?', '{"a":"Mestre Cristal","b":"Camus de Aqu\\u00e1rio","c":"Midgard","d":"Um urso polar"}', 'a'),
(131, 'Qual foi o primeiro cavaleiro de bronze que vestiu a aramadura de Sagitario?', '{"a":"Sagita","b":"Ikki de F\\u00eanix","c":"Seiya de P\\u00e9gaso","d":"Jabu de Unic\\u00f3rnio"}', 'b'),
(132, 'Qual cavaleiro de Bronze vestiu a armadura de ouro de aquário?', '{"a":"Shiryu de Drag\\u00e3o","b":"Mestre Cristal","c":"Hyoga de Cisne","d":"Shun de Andr\\u00f4meda"}', 'c'),
(133, 'Quem matou o mestre do Shun?', '{"a":"Milo de Escorpi\\u00e3o","b":"Afrodite de Peixes","c":"Ohko de Tigre","d":"Marcelo Dourado"}', 'b'),
(134, 'Quem é a reencarnação de Hades na terra?', '{"a":"Tenma","b":"Ikki","c":"Pandora","d":"Shun"}', 'd'),
(135, 'Qual golpe Shiryu herdou de Shura de Capricornio?', '{"a":"Pedras Saltitantes","b":"Excalibur","c":"C\\u00f3lera dos 100 Drag\\u00f5es","d":"Shoryuken"}', 'b'),
(136, 'Jamian, cavaleiro de Prata, treina que ave?', '{"a":"Corvo","b":"\\u00c1guia","c":"Falc\\u00e3o","d":"Pomba Gira"}', 'a'),
(137, 'Quem canta a música de abertura Pégasus Fantasy?', '{"a":"Madonna","b":"Edu Falashi","c":"Youtaka Osaki","d":"Eric Clapton"}', 'b'),
(138, 'Edu Falashi, cantor da musica Pegasus Fantasy e Blue Forever, é atualmente vocalista de qual banda nacional?', '{"a":"Angra","b":"Shaman","c":"Almah","d":"Symbols"}', 'c'),
(139, 'Qual o primeiro cavaleiro de Prata a ser morto pelos de bronze?', '{"a":"Guilty","b":"\\u00c1gora de L\\u00f3tus","c":"Jamian de Corvo","d":"Misty de Lagarto"}', 'd'),
(140, 'Qual o nome da armadura usada por Shion, Kamus, Shura,..., quando revividos por Hades?', '{"a":"Kamuis","b":"Sapuris","c":"Douradas","d":"Mal\\u00edgnas"}', 'b'),
(141, 'Contra que cavaleiro de ouro, Shiryu recuperou a visão?', '{"a":"M\\u00e1scara da Morte de C\\u00e2ncer","b":"Dohko de Libra","c":"Saga de G\\u00eameos","d":"M\\u00fa de \\u00c1ries"}', 'a'),
(142, 'Qual cavaleiro de Prata tentou matar Seiya, quando ele foi buscar a água da vida para Shiryu?', '{"a":"Aracne de Tar\\u00e2ntula","b":"Tremy de Sagita","c":"Shina de Cobra","d":"Babel de Centauro"}', 'a'),
(143, 'Athena junto com quem, mandou Lúcifer para o inferno?', '{"a":"Seiya de P\\u00e9gaso","b":"Arcanjo Gabriel","c":"Padre Marcelo Rossi","d":"Zeus"}', 'b'),
(144, 'Qual o unico cavaleiro a possuir uma "saga" solo no mangá?', '{"a":"Ikki de P\\u00e9gaso","b":"Hyoga de Cisne","c":"Shun de Andr\\u00f4meda","d":"Seiya de P\\u00e9gaso"}', 'b'),
(145, 'Onde Seiya foi treinado?', '{"a":"R\\u00fassia","b":"It\\u00e1lia","c":"Fran\\u00e7a","d":"Gr\\u00e9cia"}', 'd'),
(146, 'Onde Geki de Urso foi treinado?', '{"a":"R\\u00fassia","b":"Irlanda","c":"Canad\\u00e1","d":"Brasil"}', 'c'),
(147, 'Como são chamadas as caixas que guardam as armaduras dos cavaleiros?', '{"a":"Caixa de Freya","b":"Caixa de Armadura","c":"Caix\\u00e3o","d":"Caixa de Pandora"}', 'd'),
(148, 'Os guerreiros que Atena manda para tomar conta da ânfora de Poseidon depois de algum tempo se tornam?', '{"a":"Cavaleiros de Bronze","b":"Power Rangers","c":"Blue Warriors","d":"Cavaleiros de Ouro"}', 'c'),
(149, 'Aonde saga prende seu irmão kanon?', '{"a":"Cabo Sounion","b":"Pris\\u00e3o Gal\\u00e1tica","c":"Esquife de Gelo","d":"Carandir\\u00fa"}', 'a'),
(150, 'Com que arma o pilar do Pacífico Norte foi destruído?', '{"a":"Espada","b":"Escudo","c":"Tonf\\u00e1","d":"Tridente"}', 'b'),
(151, 'O que é Oricalco?', '{"a":"Min\\u00e9rio presente nas armaduras","b":"Um cavaleiro","c":"Um soldado do Santu\\u00e1rio","d":"Um golpe de um personagem"}', 'a'),
(152, 'O que é Hatishiki?', '{"a":"S\\u00e9timo Sentido","b":"Oitavo Sentido","c":"Nono Sentido","d":"Golpe do M\\u00e1scara da Morte"}', 'b'),
(153, 'Em que lugar de Libéria o Nachi de Lobo foi treinado?', '{"a":"Boni Hills","b":"Bomi Hills","c":"Bonin Hills","d":"Bomim Hills"}', 'b'),
(154, 'Quem vence Io de Scylla?', '{"a":"Hyoga","b":"Shiryu","c":"Seiya","d":"Shun"}', 'd'),
(155, 'Qual o nome da fundação que Saori herdou do Mitsumasa Kido?', '{"a":"Galard","b":"Gallar","c":"Graad Azul","d":"Graad"}', 'd'),
(156, 'Qual das orelhas de Cássios foi cortada por Seiya na luta pela armadura de Pégaso?', '{"a":"Esquerda","b":"Ambas","c":"Direita","d":"Nenhuma"}', 'a'),
(157, 'O que é Cabo Sunion?', '{"a":"Praia onde Seiya luta contra Misty","b":"Nome do Orfanato que a Minu cuida","c":"Local onde Kanon \\u00e9 preso","d":"N\\u00e3o existe isso na s\\u00e9rie"}', 'c'),
(158, 'Qual a estrela do guerreiro Haguen?', '{"a":"Eta","b":"Beta","c":"Delta","d":"Eps\\u00edlon"}', 'b'),
(159, 'Qual a constelação do Ichi?', '{"a":"Serpente","b":"Hidra","c":"Lobo","d":"Basilisco"}', 'b'),
(160, 'Qual o nome do anel enfeitiçado que Poseidon colocou em Hilda?', '{"a":"Niberungo","b":"Nebilungo","c":"Nibelungo","d":"Nebelungo"}', 'c'),
(161, 'O que é Misopetha-Menos?', '{"a":"Um golpe","b":"Um local de batalha entre os Cavaleiros","c":"T\\u00e9cnica de envelhecimento simulado","d":"Um profeta anci\\u00e3o"}', 'c'),
(162, 'O que é Giudecca?', '{"a":"Local onde o templo de Hades est\\u00e1","b":"Oitava Pris\\u00e3o","c":"Pilar onde Atena \\u00e9 presa","d":"Local onde Kanon \\u00e9 preso"}', 'a'),
(163, 'Em que lugar da Índia Shaka treinou?', '{"a":"Gangis","b":"Ganges","c":"Gangues","d":"Nos peitinhos"}', 'b'),
(164, 'Qual o nome da irmã de Hilda de Polaris?', '{"a":"Flear","b":"Freya","c":"Fler","d":"Freia"}', 'b'),
(165, 'Quem é a sereia?', '{"a":"Thetis","b":"Tetis","c":"Hilda","d":"o xYs"}', 'a'),
(166, 'Quantos anos o Shaka tinha quando ele descobriu que a morte não é o fim da vida?', '{"a":"10 anos de idade","b":"5 anos de idade","c":"6 anos de idade","d":"9 anos de idade"}', 'c'),
(167, 'Qual a constelação do Cavaleiro de Bronze Retsu?', '{"a":"Lince","b":"Drag\\u00e3o Menor","c":"Leopardo","d":"Lobo"}', 'a'),
(168, 'Qual dos espectros abaixo é belga?', '{"a":"Gordon","b":"Caronte","c":"Syphid","d":"Queen"}', 'c'),
(169, 'O que são Kyotos?', '{"a":"Cidades do Jap\\u00e3o","b":"Mestres dos Cavaleiros","c":"Chefe dos Marinas","d":"Ju\\u00edzes do mundo dos Mortos"}', 'd'),
(170, 'Qual o nome da família que domina o comércio marítimo?', '{"a":"Solon","b":"Solyu","c":"Solo","d":"Sollo"}', 'c'),
(171, 'Quem guarda o pilar do Índico?', '{"a":"Krishna","b":"Bian","c":"Kanon","d":"Kasa"}', 'a'),
(172, 'Qual a constelação do Nachi?', '{"a":"Lobo","b":"Gavi\\u00e3o","c":"Tar\\u00e2ntula","d":"Coiote"}', 'a'),
(173, 'O que é Balança da Maldição?', '{"a":"Golpe do Kraisto de Cruzeiro do Sul","b":"Golpe do Fara\\u00f3 de Esfinge","c":"Golpe da Armadura de Libra","d":"Golpe do Laime de Verme"}', 'b'),
(174, 'Qual o nome do novo golpe do Aiolos de Sagitário, que ele utiliza no Episódio G?', '{"a":"Destrui\\u00e7\\u00e3o M\\u00e1xima","b":"Destrui\\u00e7\\u00e3o Infinita","c":"Destrui\\u00e7\\u00e3o Fuderosa","d":"Flecha da Justi\\u00e7a"}', 'b'),
(175, 'Qual arma Shiryu usa para destruir o pilar do Oceano Índico?', '{"a":"Barra Tripla","b":"Tridente","c":"Espada","d":"Tonf\\u00e1"}', 'c'),
(176, 'Saga matou qual espectro para se esconder?', '{"a":"Miles","b":"Stand","c":"Kiew","d":"Ox"}', 'c'),
(177, 'Quem é Algernon nos Cavaleiros do Zodíaco?', '{"a":"Cavaleiro de Prata","b":"Ginecologista da Saori","c":"Cavaleiro de Ouro","d":"Cavaleiro Negro"}', 'a'),
(178, 'Qual dos kyotos foi vencido pelo Hyoga?', '{"a":"Radamanthys","b":"Minos","c":"Aiacos","d":"Nenhum dos acima"}', 'd'),
(179, 'Qual a estrela do espectro Zelos de Sapo?', '{"a":"Terrestre Estranha","b":"Celeste Estranha","c":"Celeste da Escurid\\u00e3o","d":"Terrestre da Escurid\\u00e3o"}', 'a'),
(180, 'Qual o nome do Doutor que criou as armaduras de aço?', '{"a":"Asamori Hakase","b":"Osomori Hakase","c":"Mach Gero","d":"Mamori Hakase"}', 'a'),
(181, 'No mangá, qual é o primeiro cavaleiro de Prata a aparecer?', '{"a":"Misty de Lagarto","b":"Algol de Perseus","c":"Shina de Cobra","d":"Marin de \\u00c1guia"}', 'd'),
(182, 'No Mangá, qual foi o primeiro cavaleiro de Ouro a aparecer?', '{"a":"Aiolos de Sagit\\u00e1rio","b":"Mu de \\u00c1ries","c":"Aiolia de Le\\u00e3o","d":"Saga de G\\u00eameos"}', 'c'),
(183, 'Segundo o Mangá, em que dia Seiya nasceu e qual a sua idade?', '{"a":"21 de Novembro , 15 anos","b":"1 de Dezembro, 13 anos","c":"25 de Novembro, 15 anos","d":"10 de Dezembro, 13 anos"}', 'b'),
(184, 'Segundo o Mangá, qual a altura de Cassios?', '{"a":"1,95","b":"1,99","c":"2,01","d":"2,10"}', 'c'),
(185, 'O cavaleiro Dócrates que aparece no anime, é irmão de quem e qual a sua armadura?', '{"a":"Jabu de Unic\\u00f3rnio, Hidra F\\u00eamea","b":"Cassios, Hidra Macho","c":"Cassios, Hidra F\\u00eamea","d":"Jabu de Unic\\u00f3rnio, Hidra Macho"}', 'b'),
(186, 'Qual o nome do orfanato em que Seiya morava antes de ir para a Fundação Graad?', '{"a":"Os Filhos das Estrelas","b":"As Estrelas da Noite","c":"A Luz do Sol","d":"As Luas da noite"}', 'a'),
(187, 'Quando iriam começar o torneio intergaláctico, faltavam 2 cavaleiros. Quem são eles?', '{"a":"Ikki de F\\u00eanix e Geki de Urso","b":"Ikki de F\\u00eanix e Shun de Andr\\u00f4meda","c":"Ikki de F\\u00eanix e Nachi de Lobo","d":"Ikki de F\\u00eanix e Hyoga de Cisne"}', 'd'),
(188, 'Como haviam 10 cavaleiros no torneio, e o torneio foi dividido em 2 chaves de 5 cavaleiros, 2 deles passaram de fase sem lutar, quem foram eles?', '{"a":"Shiryu e Ban","b":"Shun e Jabu","c":"Shyriu e Shun","d":"Shun e Ikki"}', 'c'),
(189, 'Porque o Santuário mandou Hyoga até o Torneio Intergaláctico?', '{"a":"Para ficar com a armadura de Ouro","b":"Para matar Seiya","c":"Para conseguir tirar sua m\\u00e3e do navio afundado","d":"Para n\\u00e3o ter que lutar mais"}', 'b'),
(190, 'Na luta contra Jabu, a corrente de Andrômeda escreveu uma mensagem no chão, que mensagem foi essa?', '{"a":"Axia","b":"Noxo","c":"Tema","d":"Aita"}', 'a'),
(191, 'Sobre a ficha técnica do Ichi de Hidra, qual seu nascimento e seu local de treinamento?', '{"a":"4 de outubro, Lago Ness","b":"1 de setembro, Lago Holtsu","c":"3 de setembro, Lago Hotz","d":"2 de outubro, Lago Holtsu"}', 'd'),
(192, 'Sobre a ficha técnica de Ikki e Shun, qual o tipo sanguíneo deles, na ordem?', '{"a":"AB e A","b":"O e B","c":"B e O","d":"AB e B"}', 'a'),
(193, 'Na batalha contra os cavaleiros negros de Fênix, qual é o primeiro cavaleiro de Bronze a lutar?', '{"a":"Seiya","b":"Shun","c":"Shyriu","d":"Hyoga"}', 'd'),
(194, 'Depois de derrotar o primeiro cavaleiro negro de Fênix, Hyoga fica com qual parte da armadura de Ouro?', '{"a":"Elmo","b":"Bra\\u00e7o Esquerdo","c":"Bra\\u00e7o Direito","d":"Perna Direita"}', 'b'),
(195, 'Seiya é o segundo a lutar contra os cavaleiros Negros de Fênix, com qual parte da armadura de Ouro ele fica?', '{"a":"Perna Esquerda. ","b":"Bra\\u00e7o Esquerdo","c":"Elmo","d":"Bra\\u00e7o Direito"}', 'd'),
(196, 'Quem é o último cavaleiro a lutar e com qual parte da armadura ele fica?', '{"a":"Shiryu, bra\\u00e7o esquerdo","b":"Shun, bra\\u00e7o direito","c":"Shun, bra\\u00e7o esquerdo","d":"Shiryu, bra\\u00e7o direito"}', 'd'),
(197, 'Qual o primeiro cavaleiro Negro a aparecer no Mangá?', '{"a":"Cisne Negro","b":"Andr\\u00f4meda Negro","c":"P\\u00e9gaso Negro","d":"Drag\\u00e3o Negro"}', 'a'),
(198, 'Quando Shyriu chegou em Jamiel, ele destruiu um andar inteiro da torre de Mu para ser atendido. Quantos andares tinham a torre?', '{"a":"6","b":"7","c":"5","d":"4"}', 'c'),
(199, 'Quem é o primeiro cavaleiro de Bronze a lutar contra os cavaleiros negros?', '{"a":"Seiya","b":"Hyoga","c":"Shun","d":"Shyriu"}', 'a'),
(200, 'O que Kiki trazia consigo quando se encontrou com os cavaleiros de Bronze, na luta contra os cavaleiros Negros?', '{"a":"Sinos para os cavaleiros n\\u00e3o se perderem","b":"A Armadura de Drag\\u00e3o","c":"A armadura de Libra","d":"Seu poder para lutar com os cavaleiros de bronze"}', 'a'),
(201, 'Quem é o primeiro cavaleiro de Bronze a lutar contra Ikki de Fênix, depois da luta contra os cavaleiros negros?', '{"a":"Hyoga","b":"Shun","c":"Shyriu","d":"Kiki"}', 'a'),
(202, 'Quantas estrelas compreendem a constelação de Pégaso?', '{"a":"11","b":"14","c":"15","d":"13"}', 'd'),
(203, 'Como Seiya foi recuperado depois da luta contra o Pégaso Negro?', '{"a":"Shun deu rem\\u00e9dio para ele","b":"Shiryu levou Seiya at\\u00e9 Shunrei para cur\\u00e1-lo","c":"Shiryu atingiu seus pontos vitais","d":"Shun chamou a Saori para cur\\u00e1-lo"}', 'c'),
(204, 'Pelo o que os pais de Esmeralda a trocaram?', '{"a":"3 sacos de farinha","b":"4 litros de leite","c":"6 ovos","d":"1 pote de mel"}', 'a'),
(205, 'Contra quem Ikki estava lutando quando sua armadura renasce pela primeira vez?', '{"a":"Shun","b":"Shaka","c":"Mu","d":"Seiya"}', 'd'),
(206, 'Qual a outra habilidade de Asterion de Cães de Caça?', '{"a":"Ele pode se desmaterializar","b":"Ele pode voar","c":"Ele pode ler mentes","d":"c"}', 'E'),
(207, 'Quem aparece na luta de Seiya contra Jamian de Corvo?', '{"a":"Marin","b":"Shina","c":"Saori","d":"Seika"}', 'b'),
(208, 'Quando Seiya fica encurralado por Jamian e Shina, o que ele faz?', '{"a":"Luta contra os dois","b":"Luta contra Shina e foge","c":"Luta contra Jamian e foge","d":"Pula do precip\\u00edcio"}', 'd'),
(209, 'Qual objeto Seiya usa para retirar a flecha de Atena?', '{"a":"O B\\u00e1culo","b":"A Deusa Nike","c":"O Escudo de Atena","d":"As proprias maos"}', 'c'),
(210, 'Quem vence Dante de Cérbero?', '{"a":"Shun de Andr\\u00f4meda","b":"Shiryu de Drag\\u00e3o","c":"Ikki de F\\u00eanix","d":"Hyoga de Cisne"}', 'a'),
(211, 'Contra quem Aiolia luta no Salão do Grande Mestre depois de lutar contra Seiya?', '{"a":"Milo de Escorpi\\u00e3o","b":"Shura de Capric\\u0097rnio","c":"Afrodite de Peixes","d":"Shaka de Virgem"}', 'd'),
(212, 'Qual o nome do Tatsumi, mordomo da Saori?', '{"a":"Tokumaru","b":"Tokimari","c":"Tokamari","d":"Tokumari"}', 'a'),
(213, 'Quando os cavaleiros de Bronze estavam se reunindo para irem ao Santu‡rio, qual foi o ultimo cavaleiro a chegar?', '{"a":"Seiya","b":"Ikki","c":"Shun","d":"Hyoga"}', 'c'),
(214, 'Quando chegaram na casa de Gêmeos, quem foi com Shyriu que estava cego?', '{"a":"Seiya","b":"Shun","c":"Hyoga","d":"Ikki"}', 'a'),
(215, 'Porque Ikki nao foi junto com os outros cavaleiros de bronze ao santuario?', '{"a":"Ele nao queria lutar por Atena","b":"Ele preferiu chegar na luta mais legal. ","c":"Ele estava com o braco congelado por Hyoga","d":"Porque ele nao queria lutar junto dos outros cavaleiros"}', 'c'),
(216, 'Quais formas geomŽtricas tem as duas pontas da corrente de andromeda?', '{"a":"Circulo e Quadrado","b":"X e Quadrado","c":"Circulo e Triangulo","d":"Circulo e X"}', 'c'),
(217, 'Quem Shiryu encontra ao cair no Mundo dos Mortos pelo ataque do Mascara da Morte?', '{"a":"Hyoga","b":"Shunrei","c":"Seiya","d":"Tremy de Sagita"}', 'a'),
(218, 'Que arma de Libra Shiryu utiliza para libertar Hyoga do Esquife de Gelo feita por Camus?', '{"a":"Lanca","b":"Nunchaku","c":"Barra Tripla","d":"Espada"}', 'd'),
(219, 'Qual o primeiro sentido que Shaka tira de Ikki?', '{"a":"Olfato","b":"Paladar","c":"Tato","d":"Audi\\u00e7\\u00e3o"}', 'c'),
(220, 'Quando os cavaleiros passavam pela casa de Sagitário, a armadura atirou sua flecha e acertou a parede propositalmente revelando uma mensagem, escrita por Aiolos. Que mensagem era?', '{"a":"Eu lhes confio Atena","b":"Protejam Atena","c":"Avante Cavaleiros!","d":"Sigam em frente"}', 'a'),
(221, 'Segundo Camus de Aquário, em que temperatura as armaduras de bronze congelam?', '{"a":"0","b":"- 100 graus","c":"- 150 graus","d":"- 200 graus"}', 'c'),
(222, 'Com que golpe Shiryu vence Shura de Capricórnio na batalha das Doze Casas?', '{"a":"C\\u00f3lera do Drag\\u00e3o","b":"C\\u00f3lera dos Cem Drag\\u00f5es","c":"\\u00daltimo Drag\\u00e3o","d":"Drag\\u00e3o Voador"}', 'c'),
(223, 'Shun se vinga de Afrodite quando luta com ele. De quem Shun vinga a morte? ', '{"a":"De June que o cuidou na Ilha de Andr\\u00f4meda","b":"De seu irmao que morreu na casa de Virgem","c":"De Shiryu que havia acabado de lutar","d":"De seu Mestre Daidaros"}', 'd'),
(224, 'Com que golpe Afrodite derruba Shun na casa de Peixes?', '{"a":"Rosas Diabolicas Reais","b":"Rosas Piranhas","c":"Rosa Sangrenta","d":"Vinha de Rosas"}', 'c'),
(225, 'Com a ajuda de quem Seiya consegue chegar até a Sala do Grande Mestre?', '{"a":"Shina de Cobra","b":"Marin de \\u00c1guia","c":"Shun de Andromeda","d":"Kiki"}', 'b'),
(226, 'Quem fala para Seiya o que ele deve fazer para retirar a flecha do peito de Saori?', '{"a":"Tatsumi","b":"Jabu","c":"Hyoga","d":"Grande Mestre"}', 'd'),
(227, 'Na saga do santuário, o que acontece com o Grande Mestre depois que ele fala com Seiya?', '{"a":"Ele vai embora","b":"Ele vai salvar a Athena retirando a flecha de seu peito","c":"Ele volta a meditar","d":"Ele se transforma e ataca Seiya"}', 'd'),
(228, 'Qual foi o primeiro sentido que o Saga tira de Seiya na batalha na Sala do Grande Mestre?', '{"a":"Paladar","b":"Tato","c":"Olfato","d":"Visao"}', 'a'),
(229, 'Onde Saga mata o Grande Mestre?', '{"a":"Na sala do grande mestre","b":"Na casa de Peixes","c":"Na Sala de Athena","d":"Em Starhill"}', 'd');

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
  `vitality` int(4) NOT NULL DEFAULT '9',
  `wins` int(11) NOT NULL DEFAULT '0',
  `quiz` text NOT NULL,
  `quiz_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `corrects` int(11) NOT NULL DEFAULT '0',
  `wrongs` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loses` int(11) NOT NULL DEFAULT '0',
  `resistence` int(4) NOT NULL DEFAULT '8',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `money`, `merits`, `level`, `sex`, `state`, `cosmo`, `cosmo_base`, `armor_id`, `stamina`, `strong`, `dexterity`, `vitality`, `wins`, `quiz`, `quiz_date`, `corrects`, `wrongs`, `created_at`, `updated_at`, `loses`, `resistence`) VALUES
(1, 'dvl', '$2a$08$bHZDUWNuZ0hORURNaGNzTOoqFuG8dF2KpUuRCsAYpPmBA61LAlDiS', 'contato@xdvl.info', 5444, 240, 1, 'M', 'RJ', 4654454, 4654454, 190, 100, 148, 146, 147, 29, '[1,2,3,4,5,123,61,29,115]', '2012-06-29 04:22:42', 0, 0, '2012-06-20 03:00:01', '2012-06-29 07:11:03', 6, 146),
(12, 'Saber', '$2a$08$ampiNDljY1dDbkZleGtKV.BPsABrKWVX2kVpdxPucNcz1.Fyj6gr.', 'contato@xdvl.net', 500, 200, 0, 'F', 'PR', 200, 200, 0, 100, 3, 1, 2, 0, '', '0000-00-00 00:00:00', 0, 0, '2012-06-24 06:06:54', '2012-06-26 07:17:11', 0, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `codes`
--
ALTER TABLE `codes`
  ADD CONSTRAINT `fk__codes__users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
