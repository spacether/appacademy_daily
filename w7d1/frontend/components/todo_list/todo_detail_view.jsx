import React from 'react';

class TodoDetailView extends React.Component{
  render(){
    return (
      <div>
        <br/>
        {this.props.todo.body}
        <button onClick={this.props.removeTodo}>
          Delete ToDo
        </button>

      </div>
    );
  }
}

export default TodoDetailView;
