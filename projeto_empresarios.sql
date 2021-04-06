-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Abr-2021 às 03:36
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_empresarios`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresarios`
--

CREATE TABLE `empresarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_completo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pai_empresarial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `empresarios`
--

INSERT INTO `empresarios` (`id`, `nome_completo`, `celular`, `estado`, `cidade`, `pai_empresarial`, `created_at`, `updated_at`) VALUES
(14, 'Fulano de Tal 5', '(49) 98541-4569', 'SC', 'Chapecó', 'teste', '2021-04-04 16:34:44', '2021-04-04 16:34:44'),
(22, 'Pedro Pederneiras', '(21) 98541-4123', 'AL', 'Anadia', NULL, '2021-04-04 23:28:37', '2021-04-04 23:28:37'),
(27, 'Pedro Pederneiras', '(21) 98541-4124', 'RJ', 'Cardoso Moreira', NULL, '2021-04-05 03:25:02', '2021-04-05 03:25:02'),
(28, 'Pedro Pederneiras', '(21) 98541-4121', 'PI', 'Barras', NULL, '2021-04-05 03:33:03', '2021-04-05 03:33:03'),
(29, 'Fulano de Tal 5', '(21) 98541-4127', 'PI', 'Barras', NULL, '2021-04-05 03:33:43', '2021-04-05 03:33:43'),
(30, 'Pedro Pederneiras', '(21) 98541-4129', 'RJ', 'Carmo', 'teste', '2021-04-05 03:37:02', '2021-04-05 03:37:02'),
(31, 'Pedro Pederneiras', '(21) 98541-4125', 'RN', 'Bodó', NULL, '2021-04-05 03:38:35', '2021-04-05 03:38:35'),
(34, 'Teste', '(61) 98541-4123', 'AC', 'Brasiléia', NULL, '2021-04-05 03:41:24', '2021-04-05 03:41:24'),
(35, 'Teste', '(81) 98541-4123', 'AC', 'Acrelândia', NULL, '2021-04-05 03:42:21', '2021-04-05 03:42:21'),
(37, 'Teste 4', '(21) 98541-4188', 'AC', 'Assis Brasil', NULL, '2021-04-05 03:42:56', '2021-04-05 03:42:56'),
(39, 'Teste 6', '(21) 98541-4110', 'AC', 'Acrelândia', 'teste', '2021-04-05 03:44:27', '2021-04-05 03:44:27'),
(40, 'Teste 7', '(21) 98541-4100', 'AL', 'Anadia', NULL, '2021-04-05 03:44:48', '2021-04-05 03:44:48'),
(41, 'Teste 8', '(21) 98541-0000', 'PI', 'Baixa Grande do Ribeiro', 'teste', '2021-04-05 03:56:28', '2021-04-05 03:56:28'),
(42, 'Teste 9', '(21) 98540-0000', 'AC', 'Acrelândia', NULL, '2021-04-05 03:56:49', '2021-04-05 03:56:49'),
(43, 'Teste 10', '(21) 00000-0000', 'RN', 'Brejinho', NULL, '2021-04-05 04:20:45', '2021-04-05 04:20:45'),
(44, 'teste 11', '(00) 00000-0000', 'AC', 'Assis Brasil', NULL, '2021-04-05 04:21:09', '2021-04-05 04:21:09'),
(45, 'Teste 4', '(21) 90000-0000', 'AC', 'Brasiléia', NULL, '2021-04-06 02:50:07', '2021-04-06 02:50:07'),
(47, 'Pedro Pederneiras', '(22) 90000-0000', 'AC', 'Acrelândia', NULL, '2021-04-06 02:51:28', '2021-04-06 02:51:28'),
(49, 'Pedro Pederneiras', '(25) 90000-0000', 'AC', 'Acrelândia', 'Fulano de Tal 5', '2021-04-06 02:58:25', '2021-04-06 02:58:25'),
(50, 'Pedro Pederneiras', '(11) 00000-0000', 'AC', 'Assis Brasil', 'Fulano de Tal 5', '2021-04-06 03:04:21', '2021-04-06 03:04:21'),
(51, 'Pedro Pederneiras', '(66) 66666-6666', 'BA', 'Adustina', 'Teste 6', '2021-04-06 03:25:08', '2021-04-06 03:25:08'),
(52, 'Pedro Pederneiras', '(22) 22222-2222', 'AC', 'Assis Brasil', 'Fulano de Tal 5', '2021-04-06 03:25:41', '2021-04-06 03:25:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_02_185434_create_empresarios_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `empresarios`
--
ALTER TABLE `empresarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `celular_3` (`celular`);
ALTER TABLE `empresarios` ADD FULLTEXT KEY `celular_2` (`celular`);
ALTER TABLE `empresarios` ADD FULLTEXT KEY `celular` (`celular`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `empresarios`
--
ALTER TABLE `empresarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
