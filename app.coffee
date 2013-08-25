express = require 'express'
consolidate = require 'consolidate'
app = express()

app.engine 'html', consolidate.hogan
app.set 'view engine', 'html'
app.set 'views', "#{__dirname}/view"
app.use express.static  "#{__dirname}/public"
app.use app.router
app.use express.errorHandler()
app.get '/', (req, res) -> res.render 'index.html'
app.listen 4444, -> console.log "Go to http://localhost:4444"