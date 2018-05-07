module.exports = {
  config: {
    fontSize: 14,
    fontFamily: 'Source Code Pro, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    cursorShape: 'BEAM',

    termCSS: '',
    showHamburgerMenu: true,
    showWindowControls: true,
    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: true,
    hypercwd: {
      initialWorkingDirectory: '~/'
    },
  },
  plugins: [
    'hypercwd',
    'hyperterm-paste',
    'hyperlinks',
    'hyper-statusline',
    'hyper-chesterish',
    'hyper-tabs-enhanced',
  ]
};
