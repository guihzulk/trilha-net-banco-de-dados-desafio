USE [Filmes]


--1 - Buscar o nome e ano dos filmes


SELECT
  nome
 ,ano
FROM Filmes


--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano


SELECT
  nome
 ,ano
FROM Filmes
ORDER BY Ano


--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT
  nome
 ,ano
 ,Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'


--4 - Buscar os filmes lançados em 1997

SELECT
  nome
 ,ano
 ,Duracao
FROM Filmes
WHERE ano = 1997


--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT
  nome
 ,ano
 ,Duracao
FROM Filmes
WHERE ano >= 2000


--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT
  nome
 ,ano
 ,Duracao
FROM Filmes
WHERE Duracao > 100
AND Duracao < 150
ORDER BY Duracao ASC


--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente


SELECT
  Ano
 ,COUNT(*) AS quantidade_filmes
 ,SUM(Duracao) AS Duracao
FROM filmes
GROUP BY Ano
ORDER BY Duracao DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT
  PrimeiroNome
 ,UltimoNome
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT
  PrimeiroNome
 ,UltimoNome
FROM Atores
WHERE Genero = 'M'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero

SELECT
  F.nome
 ,G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
  ON (F.Id = FG.IdFilme)
INNER JOIN Generos AS G
  ON (FG.IdGenero = G.Id)

SELECT
  *
FROM Generos
--11 - Buscar o nome do filme e o gênero do tipo "Mistério"


SELECT
  F.nome
 ,G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
  ON (F.Id = FG.IdFilme)
INNER JOIN Generos AS G
  ON (FG.IdGenero = G.Id)
WHERE G.Genero = 'Mistério'


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel


SELECT
  F.nome
 ,PrimeiroNome
 ,UltimoNome
 ,E.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme E
  ON (E.IdFilme = F.Id)
INNER JOIN Atores A
  ON (A.Id = E.IdAtor)


