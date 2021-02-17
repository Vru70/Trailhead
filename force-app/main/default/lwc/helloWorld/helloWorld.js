import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  val1 = null;
  val2 = null;
  val3 = null;
  changeHandler(event) 
  {
    this.val1 = event.target.value;
    
  }
  changeHandler1(event) 
  {
    this.val2 = event.target.value;
    
  }
  onAdd()
  {
    this.val3= parseInt(this.val1) + parseInt(this.val2);
  }
  onSub()
  {
    this.val3= parseInt(this.val1) - parseInt(this.val2);
  }
  onMulti()
  {
    this.val3= parseInt(this.val1) * parseInt(this.val2);
  }
  onDivd()
  {
    this.val3= parseInt(this.val1) / parseInt(this.val2);
  }
}