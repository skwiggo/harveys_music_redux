var React = require('react');
var StoreDetail = require('./StoreDetail.jsx');

var StoreIndex = React.createClass({
  getInitialState:function(){
    return { inventory: [] }
  },

  componentDidMount:function(){
    var url = "http://localhost:5000/artists";
    var request = new XMLHttpRequest();
    request.open("GET", url);
    request.onload = function(){
      if(request.status === 200){
        var data = JSON.parse(request.responseText);
        this.setState({ inventory: data });
      }
    }.bind(this)
    request.send();
  },

    render:function(){
      return(
        <div>
          <h2>Harvey's Music</h2>
          <img src="http://www.premierguitar.com/ext/resources/images/content/2015-08/Blogs/Oct15-Vintage-Vault/DGS-Vault-1972-Lake-Placid-Blue-Fender-Jaguar-C_WEB.jpg" width="300px" height="300px"></img>
          <h3>Current Inventory:</h3>
          <StoreDetail inventory={this.state.inventory}></StoreDetail>
        </div>
      )
    }
  })



  module.exports = StoreIndex;