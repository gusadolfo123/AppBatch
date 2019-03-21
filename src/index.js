const {app, BrowserWindow, Menu} = require('electron');
const url = require('url');
const path = require('path');

// if (process.env.NODE_ENV === 'development') {
//   require('electron-reload')(__dirname, {
//     electron: path.join(__dirname, '../node_modules', '.bin', 'electron'),
//   });
// }

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

app.on('ready', () => {
  MainWindow = new BrowserWindow({width: 800, height: 600});
  MainWindow.loadURL(
    url.format({
      protocol: 'file',
      slashes: true,
      hash: '',
      pathname: path.join(__dirname, './views/index.html'),
    }),
  );
  const mainMenu = Menu.buildFromTemplate(templateMenu);
  Menu.setApplicationMenu(mainMenu);

  MainWindow.on('closed', () => {
    app.quit();
  });
});

if (process.env.NODE_ENV !== 'development') {
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
