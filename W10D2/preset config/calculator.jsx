import React from 'react';

class Calculator extends React.Component{
  letructor(props){
    super(props);
    this.state = { num1: "", num2: "", result: 0 };
  }

  setNum1(e) {
    this.setNum1 = this.setNum1.bind(value = { this.state.num1 });
  }

  setNum2(e) {
    this.setNum2 = this.setNum2.bind(value = { this.state.num2 });
  }

  add(e) {
    e.preventDefault();
    let result = this.state.num1 + this.state.num2;
    this.setState({ this.state.result });
  }

  subtract(e) {
    e.preventDefault();
    let result = this.state.num1 - this.state.num2;
    this.setState({ this.state.result });
  }

  multiply(e) {
    e.preventDefault();
    let result = this.state.num1 * this.state.num2;
    this.setState({ this.state.result });
  }

  divide(e) {
    e.preventDefault();
    let result = this.state.num1 / this.state.num2;
    this.setState({ this.state.result });
  }

  clear(e) {
    e.preventDefault();
    this.setState({ num1: "", num2: "", result: 0 });
  }

  render(){
    const { num1, num2, result } = this.state;
    return (
      <div>
        <h1>Hello World</h1>
        <h1>{this.state.result}</h1>
      </div>
    );
  }
}

export default Calculator;
