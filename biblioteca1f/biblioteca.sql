create database biblioteca;
use biblioteca;
CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL
);
INSERT INTO libros (titulo, autor) VALUES
('El Quijote', 'Miguel de Cervantes'),
('Cien años de soledad', 'Gabriel García Márquez'),
('Don Juan Tenorio', 'José Zorrilla'),
('La casa de Bernarda Alba', 'Federico García Lorca');

SELECT * FROM libros;

insert into libros (titulo, autor)values
('Los Miserables', 'Victor Hugo');

INSERT INTO libros (titulo, autor) VALUES
('La Odisea', 'Homero'),
('La Cabaña del Tío Tom', 'Harriet Beecher Stowe'),
('Frankenstein', 'Mary Shelley'),
('1984', 'George Orwell, 1949'),
('Todo Se Derrumba', 'Chinua Achebe'),
('Las Mil y Una Noches', 'Varios autores'),
('El Quijote', 'Miguel de Cervantes Saavedra'),
('Hamlet', 'William Shakespeare'),
('Cien Años de Soledad', 'Gabriel García Márquez'),
('La Ilíada', 'Homero'),
('Beloved', 'Toni Morrison'),
('La Divina Comedia', 'Dante Alighieri'),
('Romeo y Julieta', 'William Shakespeare'),
('Poema de Gilgamesh', 'Autor desconocido'),
('Harry Potter', 'JK Rowling'),
('El Cuento de la Criada', 'Margaret Atwood'),
('Ulises', 'James Joyce'),
('Rebelión en la Granja', 'George Orwell'),
('Jane Eyre', 'Charlotte Brontë'),
('Madame Bovary', 'Gustave Flaubert'),
('Romance de los Tres Reinos', 'Luo Guanzhon'),
('Viaje al Oeste', 'Wu Cheng'),
('Crimen y Castigo', 'Fiodor Dostoievski'),
('Orgullo y Prejuicio', 'Jane Austen'),
('A la orilla del agua', 'Atribuida a Nai'),
('Guerra y Paz', 'León Tolstói'),
('Matar un Ruiseñor', 'Harper Lee'),
('Ancho Mar de los Sargazos', 'Jean Rhys'),
('Fábulas de Esopo', 'Esopo alrededor del 620 al 560 a.C.'),
('Cándido', 'Voltaire'),
('Medea', 'Eurípides'),
('Mahabharata', 'Atribuido a Vyasa'),
('El Rey Lear', 'William Shakespeare'),
('La novela de Genji', 'Genji Monogatari, Murasaki Shikibu, antes de 1021'),
('Las Penas del Joven Werther', 'Johann Wolfgang von Goethe'),
('El Proceso', 'Franz Kafka'),
('En Busca del Tiempo Perdido', 'Marcel Proust'),
('Cumbres Borrascosas', 'Emily Brontë'),
('El Hombre Invisible', 'Ralph Ellison'),
('Moby Dick', 'Herman Melville'),
('Sus ojos miraban a Dios', 'Zora Neale Hurst'),
('Al Faro', 'Virginia Woolf'),
('La Verdadera Historia de Ah Q', 'Lu Xun'),
('Alicia en el País de las Maravillas', 'Lewis Carroll'),
('Anna Karenina', 'León Tolstói'),
('El corazón de las tinieblas', 'Joseph Conrad'),
('Monkey Grip', 'Helen Garner'),
('La señora Dalloway', 'Virginia Woolf'),
('Edipo Rey', 'Sófocles'),
('La Metamorfosis', 'Franz Kafka'),
('La Orestíada', 'Esquilo siglo V a.C.'),
('Cenicienta', 'Autor y fecha desconocidos'),
('Aullido', 'Allen Ginsberg'),
('Middlemarch', 'George Eliot'),
('Toba Tek Singh', 'Saadat Hasan Manto');

INSERT INTO libros (titulo, autor) VALUES
('Panchatantra', 'Atribuido a Vishnu Sharma'),
('Memorias póstumas de Blas Cubas', 'Joaquim Machado de Assis'),
('La plenitud de la señorita Brodie', 'Muriel Spark'),
('Los filántropos en harapos', 'Robert Tressell'),
('La canción de Lawino', 'Okot p\'Bitek'),
('El cuaderno dorado', 'Doris Lessing'),
('Hijos de la Medianoche', 'Salman Rushdie'),
('Condiciones nerviosas', 'Tsitsi Dangarembga'),
('El Principito', 'Antoine de Saint-Exupéry'),
('El maestro y Margarita', 'Mikhail Bulgakov'),
('Ramayana', 'Atribuido a Valmiki'),
('Antígona', 'Sófocles'),
('Drácula', 'Bram Stoker'),
('La mano izquierda de la oscuridad','Ursula K. Le Guin'),
('Cuento de Navidad', 'Charles Dickens'),
('América', 'Raúl Otero Reiche'),
('Ante la Ley', 'Franz Kafka'),
('Chicos de Gebelawi', 'Naguib Mahfuz'),
('Cancionero', 'Petrarca'),
('Kebra Nagast', 'Varios autores'),
('Mujercitas', 'Louisa May Alcott'),
('Las Metamorfosis', 'Ovidio'),
('Omeros', 'Derek Walcott, 1990'),
('Un día en la vida de Iván Denísovich', 'Aleksandr Solzhenitsyn'),
('Orlando', 'Virginia Woolf'),
('The Rainbow Serpent', 'Historia aboriginal australiana'),
('Vía revolucionaria', 'Richard Yates'),
('Robinson Crusoe', 'Daniel Defoe'),
('Canto a mí mismo', 'Walt Whitman'),
('Las aventuras de Huckleberry Finn', 'Mark Twain'),
('Las Aventuras de Tom Sawyer', 'Mark Twain'),
('El Aleph', 'Jorge Luis Borges'),
('Historia del Campesino Elocuente', 'Cuento tradicional egipcio'),
('El traje nuevo del emperador', 'Hans Christian Andersen'),
('La Jungla', 'Upton Sinclair'),
('Khamriyyat', 'Abu Nuwas'),
('La marcha Radetzky', 'Joseph Roth'),
('El Cuervo', 'Edgar Allan Poe'),
('Los versos satánicos', 'Salman Rushdie'),
('El secreto', 'Donna Tartt'),
('Un día de nieve', 'Ezra Jack Keats'),
('Toba Tek Singh', 'Saadat Hasan Manto');

SELECT * FROM libros WHERE id IN (105, 106);
SELECT * FROM libros WHERE id IN (104,105,106);