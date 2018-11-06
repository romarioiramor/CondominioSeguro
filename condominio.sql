-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Nov-2018 às 20:39
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `condominio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_morador`
--

CREATE TABLE `tbl_morador` (
  `id_morador` int(10) UNSIGNED NOT NULL,
  `nome_morador` varchar(255) DEFAULT NULL,
  `endereco_morador` varchar(255) DEFAULT NULL,
  `telefone_morador` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `pk_id_usuario` int(10) UNSIGNED NOT NULL,
  `usu_login` varchar(45) DEFAULT NULL,
  `usu_senha` varchar(45) DEFAULT NULL,
  `usu_nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`pk_id_usuario`, `usu_login`, `usu_senha`, `usu_nome`) VALUES
(1, 'adm', '123', 'administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_visitante`
--

CREATE TABLE `tbl_visitante` (
  `id_visitante` int(10) UNSIGNED NOT NULL,
  `nome_visitante` varchar(255) DEFAULT NULL,
  `telefone_visitante` float DEFAULT NULL,
  `documento_visitante` varchar(45) DEFAULT NULL,
  `hora_entrada_visitante` time DEFAULT NULL,
  `hora_saida_visitante` time DEFAULT NULL,
  `observacao_visitante` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_morador`
--
ALTER TABLE `tbl_morador`
  ADD PRIMARY KEY (`id_morador`);

--
-- Indexes for table `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`pk_id_usuario`);

--
-- Indexes for table `tbl_visitante`
--
ALTER TABLE `tbl_visitante`
  ADD PRIMARY KEY (`id_visitante`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_morador`
--
ALTER TABLE `tbl_morador`
  MODIFY `id_morador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `pk_id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_visitante`
--
ALTER TABLE `tbl_visitante`
  MODIFY `id_visitante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
