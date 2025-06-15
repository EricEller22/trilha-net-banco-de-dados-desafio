--Quest�o 1--
SELECT
	Nome,
	Ano
FROM Filmes

--Quest�o 2--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

--Quest�o 3--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

--Quest�o 4--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--Quest�o 5--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--Quest�o 6--
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC

--Quest�o 7--
SELECT
	Ano,
	COUNT(*) Qtd
FROM Filmes
GROUP BY Ano
ORDER BY Qtd DESC

--Quest�o 8--
SELECT
 Id,
 PrimeiroNome,
 UltimoNome,
 Genero
FROM Atores
WHERE Genero = 'M'

--Quest�o 9--
SELECT
 Id,
 PrimeiroNome,
 UltimoNome,
 Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Quest�o 10--
SELECT
 f.Nome,
 g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg 
ON fg.IdFilme = f.id
INNER JOIN Generos g
ON g.Id = fg.IdGenero

--Quest�o 11--
SELECT
 f.Nome,
 g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg 
ON fg.IdFilme = f.id
INNER JOIN Generos g
ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mist�rio'

--Quest�o 12--
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


