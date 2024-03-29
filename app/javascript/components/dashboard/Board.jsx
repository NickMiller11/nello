import React from 'react';
import { Route, Switch } from 'react-router-dom';
import CardsContainer from './CardsContainer';
import ListContainer from './ListContainer';
import CreateListTileContainer from './CreateListTileContainer';

const Board = props => {
  return (<div>
    <header>
      <ul>
        <li id="title">{props.board.title}</li>
        <li className="star-icon icon"></li>
        <li className="private private-icon icon">Private</li>
      </ul>
      <div className="menu">
        <i className="more-icon sm-icon"></i>Show Menu</div>
      <div className="subscribed">
        <i className="sub-icon sm-icon"></i>Subscribed</div>
    </header>
    <main>
      <div id="list-container" className="list-container">
        <div id="existing-lists" className="existing-lists">
          {props.lists}
        </div>
        <CreateListTileContainer boardId={props.board.id}/>
      </div>

    </main>
  </div>);
}

export default Board;
