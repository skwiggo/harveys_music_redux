var React = require('react');

var StoreDetail = function(props) {
  // console.log(props.inventory[0])
  if(!props.inventory[0]){return <h4>No stock</h4>}
    return(
        <div>
        {props.inventory.map(function(entry, index) {
          return<ul key={index} value={index}>
          <li>Name: {entry.name}</li>
          <li>Genre: {entry.genre}</li>

          <li>Albums: {entry.albums.map(function(album, index) {
            return<ul key={index} value={index}>
            <li>Name: {album.name}</li>

            <li>Stock: {album.stocks.map(function(stock, index) {
              return<ul key={index} value={index}>
              <li>Price: {stock.price}</li>
              <li>Level: {stock.level}</li>
              </ul>
            })}
            </li>
            </ul>

          })}</li>
          </ul>
        })}
      </div>
    )
      
  }

module.exports = StoreDetail; 

{/*<p>Name: {props.inventory[i].name}</p>
<p>Genre: {props.inventory[i].genre}</p>
<p>Albums: {props.inventory[i].albums[i].name}</p>
<p>Stock Level: {props.inventory[i].albums[i].stocks[i].level}</p>
<p>Stock Price: {props.inventory[i].albums[i].stocks[i].price}</p>*/}