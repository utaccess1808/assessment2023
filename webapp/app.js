const express = require('express');
const os = require('os');

const app = express();

app.get('/', (req, res) => {
  const hostname = os.hostname();
  res.send(`Hello from ${hostname}`);
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
