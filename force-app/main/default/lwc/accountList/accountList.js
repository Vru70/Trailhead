import { LightningElement, wire } from 'lwc';
import getAccList from '@salesforce/apex/accountList.getAccList';
export default class AccountList extends LightningElement 
{
    @wire(getAccList) accounts;
}