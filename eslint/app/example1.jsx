import ReactDOM from 'react-dom';
import React from 'react';

var title = 'Title';
const text = 'Description';

ReactDOM.render(
  <Jumbotron title={title} text={text} />,
  document.getElementById('container'),
);
