--Questão 1--
SELECT
	Nome,
	Ano
FROM Filmes

--Questão 2--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

--Questão 3--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--Questão 4--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--Questão 5--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--Questão 6--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC

--Questão 7--
SELECT
	Ano,
	COUNT(*) Qtd
FROM Filmes
GROUP BY Ano
ORDER BY Qtd DESC

--Questão 8--
SELECT
 Id,
 PrimeiroNome,
 UltimoNome,
 Genero
FROM Atores
WHERE Genero = 'M'

--Questão 9--
SELECT
 Id,
 PrimeiroNome,
 UltimoNome,
 Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Questão 10--
SELECT
 f.Nome,
 g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg 
ON fg.IdFilme = f.id
INNER JOIN Generos g
ON g.Id = fg.IdGenero

--Questão 11--
SELECT
 f.Nome,
 g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg 
ON fg.IdFilme = f.id
INNER JOIN Generos g
ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'

--Questão 12--
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
From Filmes f
INNER JOIN ElencoFilme ef 
ON ef.IdFilme = f.Id
INNER JOIN Atores a 
ON a.Id = ef.IdAtor


