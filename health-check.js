import { createServer } from 'node:http';

const PORT = process.env.HEALTH_PORT || 8081;

createServer((req, res) => {
  if (req.url === '/health') {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('ok');
  } else {
    res.writeHead(404);
    res.end();
  }
}).listen(PORT, '0.0.0.0', () => {
  console.log(`Health check server listening on port ${PORT}`);
});
