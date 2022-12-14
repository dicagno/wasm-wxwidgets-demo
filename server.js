const express = require('express')
const open = require('open');

const app = express()
const port = 3000

app.use(express.static('static'))

app.get('/api/server/close', (req, res) => {
  setTimeout(()=> {
    process.exit(0);
  }, 200);
  res.send(null)
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
  open(`http://localhost:${port}/simple.html`);
  open(`http://localhost:${port}/advanced.html`);
})
