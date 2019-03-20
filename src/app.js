const {app, BrowserWindow, Menu} = require('electron');
const url = require('url');
const path = require('path');

if (process.env.NODE_ENV !== 'Production') {
  require('electron-reload')(__dirname, {
    electron: path.join(__dirname, '../node_modules', '.bin', 'electron'),
  });
}

let MainWindow;

const templateMenu = [
  {
    label: 'File',
    submenu: [
      {
        label: 'Add Server',
        accelerator: 'Ctrl+A',
        click() {},
      },
    ],
  },
];

app.on('ready', function() {
  MainWindow = new BrowserWindow({});
  MainWindow.loadURL(
    url.format({
      pathname: path.join(__dirname, 'views/index.html'),
      protocol: 'file',
      slashes: true,
    }),
  );
  const mainMenu = Menu.buildFromTemplate(templateMenu);
  Menu.setApplicationMenu(mainMenu);

  MainWindow.on('closed', () => {
    app.quit();
  });
});

if (process.env.NODE_ENV !== 'Production') {
  templateMenu.push({
    label: 'DevTools',
    submenu: [
      {
        label: 'Show/Hide Dev Tools',
        click(item, focusedWindow) {
          focusedWindow.toggleDevTools();
        },
      },
      {
        role: 'Reload',
      },
    ],
  });
}
