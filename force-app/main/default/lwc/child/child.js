import { LightningElement, api } from 'lwc';

export default class Child extends LightningElement 
{
    @api msgFromChild = 'This is Message from CHILD';
}