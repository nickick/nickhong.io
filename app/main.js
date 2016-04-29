var React    = require('react'),
    ReactDOM = require('react-dom'),
    ReactApp = React.createElement(require('./components/react_app'), {currentPath: window.location.pathname});

var mountNode = document.getElementById("react-main-mount");

ReactDOM.render(ReactApp, mountNode);
