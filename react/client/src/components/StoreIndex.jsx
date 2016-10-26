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
          <h2>Store</h2>
          <StoreDetail inventory={this.state.inventory}></StoreDetail>
        </div>
      )
    }
  })



  module.exports = StoreIndex;