var React = require('react');

var StoreEditor = React.createClass({
  
  handleChange: function() {

  }

  render: function(){
    return(
    <form>
      <input
        type="text"
        placeholder="Your name"
        value = {this.state.author}
        onChange = {this.handleAuthorChange}/>

    </form>
        )
      }
})


module.exports = StoreEditor;