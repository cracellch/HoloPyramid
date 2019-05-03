const electron = require('electron')

const express = require('express')
const server = express()

server.get('/Saludo', function (req, res) {
  Saludo();
})

server.get('/Descansa', function (req,res){
  Saludo();
  app.quit();
})

server.get('/Comandos', function (req,res){
  Comandos();
})

server.get('/EncenderLuz', function (req,res){
  EncenderLuz();
})

server.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})

const app = electron.app
// Crear variable de ventana
const BrowserWindow = electron.BrowserWindow

const path = require('path')
const url = require('url')

let mainWindow

function createWindow () {
  // Creamos ventana y asignamos tama�o
  mainWindow = new BrowserWindow({width: 800, height: 600})

  // Carga de pagina HTML
  mainWindow.loadURL(url.format({
    pathname: path.join(__dirname, 'index.html'),
    protocol: 'file:',
    slashes: true
  }))
  mainWindow.setFullScreen(true)
	mainWindow.setMenu(null)
  // Se emite al cerrar ventana
  mainWindow.on('closed', function () {
    mainWindow = null
  })
}

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.on('ready', createWindow)
app.on('redis', Saludo)
// Quit when all windows are closed.
app.on('window-all-closed', function () {
  // On OS X it is common for applications and their menu bar
  // to stay active until the user quits explicitly with Cmd + Q
  if (process.platform !== 'darwin') {
    app.quit()
  }
})

app.on('activate', function () {
  // On OS X it's common to re-create a window in the app when the
  // dock icon is clicked and there are no other windows open.
  if (mainWindow === null) {
    createWindow()
  }
})

function Saludo() {
  // Para cambiar a la otra pagina al tener URL Saludo
  mainWindow.loadURL(url.format({
    pathname: path.join(__dirname, 'saludo.html'),
    protocol: 'file:',
    slashes: true
  }))
  mainWindow.setFullScreen(true)
	mainWindow.setMenu(null)
}

function Comandos() {
  // Para cambiar a la otra pagina al tener URL Saludo
  mainWindow.loadURL(url.format({
    pathname: path.join(__dirname, 'comandos.html'),
    protocol: 'file:',
    slashes: true
  }))
  mainWindow.setFullScreen(true)
	mainWindow.setMenu(null)
}
function EncenderLuz() {
  // Para cambiar a la otra pagina al tener URL Saludo
  mainWindow.loadURL(url.format({
    pathname: path.join(__dirname, 'encenderluz.html'),
    protocol: 'file:',
    slashes: true
  }))
  mainWindow.setFullScreen(true)
	mainWindow.setMenu(null)
}
function ApagarLuz() {
  // Para cambiar a la otra pagina al tener URL Saludo
  mainWindow.loadURL(url.format({
    pathname: path.join(__dirname, 'apagarluz.html'),
    protocol: 'file:',
    slashes: true
  }))
  mainWindow.setFullScreen(true)
	mainWindow.setMenu(null)
}
