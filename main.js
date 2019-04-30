const electron = require('electron')

const express = require('express')
const server = express()

server.get('/Saludo', function (req, res) {
  changeWindow();
  res.send('Saludo Amistoso');
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
  // Creamos ventana y asignamos tamaño
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
app.on('redis', changeWindow)
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

function changeWindow () {
  // Para cambiar a la otra pagina al tener URL Saludo
  mainWindow.loadURL(url.format({
    pathname: path.join(__dirname, 'pagina.html'),
    protocol: 'file:',
    slashes: true
  }))
  mainWindow.setFullScreen(true)
	mainWindow.setMenu(null)
}
