const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

// Configuración de conexión a phpMyAdmin
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',      // Usuario por defecto de XAMPP
    password: '',      // Contraseña por defecto (vacía)
    database: 'sistema_ventas'
});

db.connect(err => {
    if (err) throw err;
    console.log('Conectado a la base de datos MySQL');
});

// RUTA: Registrar producto
app.post('/ventas', (req, res) => {
    const { grupo, producto, precio, fecha, kilos, vendedor } = req.body;
    const sql = `INSERT INTO ventas (nombre_grupo, nombre_producto, precio, fecha_alta, kilos, nombre_vendedor) 
                 VALUES (?, ?, ?, ?, ?, ?)`;
    
    db.query(sql, [grupo, producto, precio, fecha, kilos, vendedor], (err, result) => {
        if (err) return res.status(500).send(err);
        res.send({ mensaje: "Venta registrada con éxito" });
    });
});

// RUTA: Reporte de Monto por Vendedor
app.get('/reporte-vendedores', (req, res) => {
    const sql = "SELECT nombre_vendedor, SUM(precio * kilos) as monto_total FROM ventas GROUP BY nombre_vendedor";
    db.query(sql, (err, results) => {
        if (err) return res.status(500).send(err);
        res.json(results);
    });
});

// RUTA: Registro de ventas (Fechas y Kilos)
app.get('/ventas', (req, res) => {
    const sql = "SELECT * FROM ventas ORDER BY fecha_alta DESC";
    db.query(sql, (err, results) => {
        if (err) return res.status(500).send(err);
        res.json(results);
    });
});

app.listen(3000, () => console.log('Servidor corriendo en http://localhost:3000'));