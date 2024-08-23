// app.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const color = "#" + Math.floor(Math.random()*16777215).toString(16);
  res.send(`
    <body style="background-color: ${color};">
      <h1 style="text-align: center; padding-top: 20%;">Color: ${color}</h1>
    </body>
  `);
});

const port = 3000;
app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
