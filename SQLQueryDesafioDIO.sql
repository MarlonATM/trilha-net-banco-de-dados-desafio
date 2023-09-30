SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano LIKE 1997

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao

SELECT Ano, Count(Ano)
AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

SELECT * FROM Atores
WHERE Genero = 'M'

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor