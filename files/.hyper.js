module.exports = {
  config: {
    fontSize: 14,
    fontFamily: 'Source Code Pro, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    cursorShape: 'BEAM',
    showWindowControls: true,
    shellArgs: ['--login'],
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
