CREATE TABLE peliculas (
    id SERIAL PRIMARY KEY,
    pelicula VARCHAR(255) NOT NULL,
    "Año estreno" INTEGER NOT NULL,
    director VARCHAR(255) NOT NULL
);

CREATE TABLE reparto (
	pelicula_id int,
	actores varchar(255),
	foreign key (pelicula_id) references peliculas(id)
);

select * from peliculas
select * from reparto

COPY peliculas
FROM 'C:/Users/samud/OneDrive/Escritorio/peliculas.csv' 
delimiter ','
csv header;

copy reparto
from 'C:/Users/samud/OneDrive/Escritorio/reparto.csv'
delimiter ','
csv header;

SELECT id FROM peliculas WHERE pelicula = 'Titanic';
2

SELECT actores FROM reparto
WHERE pelicula_id = (SELECT id FROM peliculas WHERE pelicula = 'Titanic');

"Leonardo DiCaprio"
"Kate Winslet"
"Billy Zane"
"Kathy Bates"
"Frances Fisher"
"Bernard Hill"

SELECT COUNT(DISTINCT pelicula_id) AS num_peliculas
FROM reparto
WHERE actores = 'Harrison Ford';
 8

SELECT * FROM peliculas
WHERE "Año estreno" BETWEEN 1990 AND 1999
ORDER BY pelicula;

76	"American Beauty"	1999	"Sam Mendes"
20	"American History X"	1998	"Tony Kaye"
9	"Braveheart"	1995	"Mel Gibson"
7	"Cadena perpetua"	1994	"Frank Darabont"
12	"Eduardo Manostijeras"	1990	"Tim Burton"
27	"El club de la pelea"	1999	"David Fincher"
68	"El Padrino. Parte III"	1990	"Francis Ford Coppola"
75	"El profesional"	1994	"Luc Besson"
22	"El sexto sentido"	1999	"M. Night Shyamalan"
45	"El show de Truman"	1998	"Peter Weir"
25	"El silencio de los corderos"	1991	"Jonathan Demme"
61	"Entrevista con el vampiro"	1994	"Neil Jordan"
1	"Forest Gump"	1994	"Robert Zemeckis"
42	"Hombres de negro"	1997	"Barry Sonnenfeld"
10	"La lista de Schindler"	1993	"Steven Spielberg"
31	"La milla verde"	1999	"Frank Darabont"
30	"Matrix"	1999	"Andy y Lana Wachowski"
89	"Mejor... imposible"	1997	"James L. Brooks"
29	"Parque Jurásico"	1993	"Steven Spielberg"
47	"Pesadilla antes de navidad"	1993	"Henry Selick"
23	"Pulp Fiction"	1994	"Quentin Tarantino"
14	"Salvar al soldado Ryan"	1998	"Steven Spielberg"
39	"Seven"	1995	"David Fincher"
86	"Star Wars. Episodio I: La amenaza fantasma"	1999	"George Lucas"
40	"Terminator 2: el juicio final"	1991	"James Cameron"
2	"Titanic"	1997	"James Cameron"
11	"Toy Story"	1995	"John Lasseter"
46	"Toy Story 2"	1999	"John Lasseter"
79	"Trainspotting"	1996	"Danny Boyle"
98	"Uno de los nuestros"	1990	"Martin Scorsese"


SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas;

"Forest Gump"	11
"Titanic"	7
"El Padrino"	10
"Gladiator"	9
"El Señor de los anillos: El retorno del rey"	43
"El caballero oscuro"	19
"Cadena perpetua"	15
"Piratas del Caribe: La maldición de la Perla Negra"	50
"Braveheart"	10
"La lista de Schindler"	21
"Toy Story"	9
"Eduardo Manostijeras"	20
"El Señor de los anillos: La comunidad del anillo"	48
"Salvar al soldado Ryan"	22
"Regreso al futuro"	17
"Monstruos S.A."	14
"Buscando a Nemo"	15
"El Señor de los anillos: Las dos torres"	39
"Harry Potter y el Prisionero de Azkaban"	39
"American History X"	18
"300"	3
"El sexto sentido"	16
"Pulp Fiction"	12
"V de Vendetta"	13
"El silencio de los corderos"	27
"Rocky"	5
"El club de la pelea"	19
"E.T"	3
"Parque Jurásico"	15
"Matrix"	6
"La milla verde"	14
"Ratatouille"	11
"Grease"	6
"El Padrino. Parte II"	20
"Wall-E"	6
"Iron Man"	8
"El exorcista"	12
"Piratas del Caribe: El cofre del hombre muerto"	46
"Seven"	5
"Terminator 2: el juicio final"	29
"El resplandor"	13
"Hombres de negro"	16
"Spider-Man"	10
"Regreso al futuro II"	20
"El show de Truman"	17
"Toy Story 2"	11
"Pesadilla antes de navidad"	26
"Star Wars. Episodio IV: Una nueva esperanza"	43
"Saw"	3
"Terminator"	10
"Kill Bill Vol. 1"	16
"Lo que el viento se llevó"	25
"El Laberinto del Fauno"	22
"Los increíbles"	14
"El viaje de Chihiro"	19
"El precio del poder"	19
"King Kong"	9
"Ben-Hur"	7
"Indiana Jones y la última cruzada"	33
"Infiltrados"	11
"Entrevista con el vampiro"	25
"Batman Begins"	13
"En busca del arca perdida"	25
"Star Wars. Episodio III: La venganza de los Sith"	48
"Alien"	5
"El bueno el feo y el malo"	25
"Star Wars. Episodio V: El imperio contraataca"	45
"El Padrino. Parte III"	21
"Star Wars. Episodio VI: El retorno del Jedi"	43
"Escuela de Rock"	15
"El planeta de los simios"	24
"Rambo"	5
"Full Metal Jacket"	17
"Tiburón"	7
"El profesional"	14
"American Beauty"	15
"Casablanca"	10
"Amélie"	6
"Trainspotting"	13
"axi driver"	10
"Alguien voló sobre el nido del cuco"	35
"Kill Bill Vol. 2"	16
"Spider-Man 2"	12
"X-Men 2"	7
"Transformers"	12
"Star Wars. Episodio I: La amenaza fantasma"	42
"Blade Runner"	12
"Apocalypse Now"	14
"Mejor... imposible"	18
"La vida de Brian"	16
"El libro de la selva"	20
"Los cazafantasmas"	17
"Sweeney Todd: El barbero diabólico de la calle Fleet"	52
"Ocean's Eleven"	14
"Blancanieves y los siete enanitos"	33
"Predator"	8
"Indiana Jones y el templo maldito"	33
"Uno de los nuestros"	19
"Mouling Rouge"	13
"Psicosis"	8


SELECT MAX(LENGTH(pelicula)) AS longitud_maxima FROM peliculas;
54