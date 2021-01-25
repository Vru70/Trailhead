import {  LightningElement, track, wire } from 'lwc';
import accList from '@salesforce/apex/accountList.accList';
const columns = [
    {label: 'Name', fieldName: 'Name', type: 'text'},
    {label: 'Id', fieldName: 'Id'}
];
export default class AccDataTable extends LightningElement 
{
    error;
    columns = columns;

     @wire(accList)
    acc;
}