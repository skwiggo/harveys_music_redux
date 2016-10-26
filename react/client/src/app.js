var React = require('react');
var ReactDOM = require('react-dom');

var StoreIndex = require('./components/StoreIndex.jsx')

window.onload = function(){
  ReactDOM.render(
    <StoreIndex></StoreIndex>,
    document.getElementById('app')
  );
}
