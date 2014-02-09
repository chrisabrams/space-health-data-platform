# - Dependencies
express = require("express")
fs      = require 'fs'
hbs     = require("hbs")
path    = require("path")
util    = require("util")
server  = express()
port    = 4040

# - Server Settings
server.set "views", path.join(__dirname, "/public")
server.set "view engine", "hbs"
server.engine "hbs", hbs.__express
server.use express.static(__dirname + "/public")
server.use express.favicon()
server.use express.logger("dev")
server.use express.query()
server.use express.bodyParser()
server.use express.cookieParser("putwhateveryouwanthere")
server.use express.methodOverride()
server.use express.session()
server.use server.router

server.post '/transactions', (req, res) ->

  transactions = JSON.stringify(req.body)

  fs.writeFile __dirname + '/transactions/transaction.json', transactions, (err) ->
    console.log err if err
    res.send 200

server.get "*", (req, res) ->

  res.render "index",
    layout: false

# - Start Up Server
server.listen port

util.log "Express server instance listening on port " + port
