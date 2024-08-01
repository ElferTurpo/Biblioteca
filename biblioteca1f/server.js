const express = require('express');
const mysql = require('mysql2');
const ejs = require('ejs');
const bodyParser = require('body-parser');

const app = express();
const port = 3006;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'biblioteca'
});

connection.connect((err) => {
    if (err) {
        console.error('Error connecting to database: ' + err.stack);
        return;
    }
    console.log('Connected to database as id ' + connection.threadId);
});

// Establecer el motor de vistas y la carpeta de vistas
app.set('view engine', 'ejs');
app.set('views', './views');

// Ruta para mostrar todos los libros
app.get('/libros', (req, res) => {
    const SELECT_ALL_BOOKS_QUERY = 'SELECT * FROM libros';
    connection.query(SELECT_ALL_BOOKS_QUERY, (err, results) => {
        if (err) {
            console.error('Error fetching books: ' + err.stack);
            res.status(500).send('Error fetching books');
            return;
        }
        res.render('libros', { libros: results });
    });
});

// Ruta para buscar un libro por ID
app.get('/buscar/:id', (req, res) => {
    const id = req.params.id;
    const SELECT_BOOK_BY_ID_QUERY = 'SELECT * FROM libros WHERE id = ?';
    connection.query(SELECT_BOOK_BY_ID_QUERY, [id], (err, results) => {
        if (err) {
            console.error('Error fetching book by ID: ' + err.stack);
            res.status(500).send('Error fetching book by ID');
            return;
        }
        //res.json(results);
        res.render('libros', { libros: results }); // Renderiza la vista 'libros.ejs' con los resultados
    });
});
app.post('/insertar', (req, res) => {
    const { titulo, autor } = req.body;
    const INSERT_BOOK_QUERY = 'INSERT INTO libros (titulo, autor) VALUES (?, ?)';
    connection.query(INSERT_BOOK_QUERY, [titulo, autor], (err, results) => {
        if (err) {
            console.error('Error inserting book: ' + err.stack);
            res.status(500).send('Error inserting book');
            return;
        }
        res.send(`Libro "${titulo}" insertado correctamente.`);
    });
});
app.delete('/eliminar/:id', (req, res) => {
    const id = req.params.id;
    const DELETE_BOOK_BY_ID_QUERY = 'DELETE FROM libros WHERE id = ?';
    connection.query(DELETE_BOOK_BY_ID_QUERY, [id], (err, results) => {
        if (err) {
            console.error('Error deleting book by ID: ' + err.stack);
            res.status(500).send('Error deleting book by ID');
            return;
        }
        res.send(`Libro con ID ${id} eliminado correctamente.`);
    });
});

// Iniciar el servidor
app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});
