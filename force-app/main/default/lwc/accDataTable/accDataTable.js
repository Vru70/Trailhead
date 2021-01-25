import {  LightningElement, track, wire } from 'lwc';
import accList from '@salesforce/apex/accountList.accList';
const columns = [
    {label: 'Name', fieldName: 'Name', type: 'text'},
    {label: 'Account ID', fieldName: 'Id',  type: 'text'},
    {label: 'Currency', fieldName: 'AnnualRevenue',  type: 'currency'}
];
export default class AccDataTable extends LightningElement 
{
    error;
    columns = columns;

     @wire(accList)
    acc;
}