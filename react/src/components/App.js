import React, { Component } from 'react';

class App extends Component {

  constructor(props){
    super(props);
    this.state = {
      articleArray: []
    };
  }

  componentDidMount() {
    $.ajax({
      url: "https://newsapi.org/v1/articles?source=cnn&apiKey=16d2253d3eb74a2fa3f90f6acdc20e03"
    })
    .done(data => {
      this.setState({ articleArray: data.articles });
    });
  }

  render() {
    let articles = this.state.articleArray.map(article => {
      return(
        <div>
          <li>
            <h3><a href={article.url}>{article.title}</a></h3>
            Author: {article.author}<br />
            Description: {article.description}<br />
          </li>
        </div>
      )
    })
    return (
      <div>
        <ul>
          {articles}
        </ul>
      </div>
    )
  }

}

export default App;
