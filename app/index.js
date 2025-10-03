const fs = require('fs');
const path = require('path');
const http = require('http');

const port = process.env.PORT;
const message = process.env.MESSAGE;
const outputPath = '/app/volumen/output.txt'; 

// Escribimos un archivo dentro del volumen montado
fs.writeFileSync(outputPath, `Mensaje: ${message}\n`, { flag: 'a' });

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end(`${message}\n(Revisa el archivo en la carpeta volumen)\n`);
});

server.listen(port, () => {
  console.log(`Servidor escuchando en http://localhost:${port}`);
});
