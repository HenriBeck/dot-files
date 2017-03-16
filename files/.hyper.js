module.exports = {
  config: {
    fontSize: 16,
    fontFamily: 'Source Code Pro, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    cursorColor: '#2196F3',
    cursorShape: 'BEAM',
    cursorBlink: false,
    foregroundColor: '#fafafa',
    backgroundColor: '#303030',
    borderColor: '',
    css: '.header_windowHeader { background-color: #212121; }',
    termCSS: '',
    showHamburgerMenu: true,
    showWindowControls: true,
    padding: '16px 16px',
    colors: {
      black: '#000000',
      red: '#F44336',
      green: '#4CAF50',
      yellow: '#FFEB3B',
      blue: '#2196F3',
      magenta: '#E91E63',
      cyan: '#00BCD4',
      white: '#FAFAFA',
      lightBlack: '#212121',
      lightRed: '#E57373',
      lightGreen: '#81C784',
      lightYellow: '#FFF176',
      lightBlue: '#4FC3F7',
      lightMagenta: '#F06292',
      lightCyan: '#4DD0E1',
      lightWhite: '#EEEEEE'
    },
    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: true,
    hyperline: {
      background: '#212121',
      plugins: [{
        name: 'hostname',
        options: { color: 'lightBlue' }
      }, {
        name: 'memory',
        options: { color: 'lightBlue' }
      }, {
        name: 'uptime',
        options: { color: 'lightBlue' }
      }, {
        name: 'cpu',
        options: {
          colors: {
            high: 'red',
            moderate: 'yellow',
            low: 'green'
          }
        }
      }, {
        name: 'network',
        options: { color: 'lightBlue' }
      }, {
        name: 'battery',
        options: {
          colors: {
            fine: 'green',
            critical: 'red'
          }
        }
      }]
    }
  },
  plugins: [
    'hyper-keymap',
    'hyperline-magus',
    'hyperlinks'
  ],
  localPlugins: []
};
