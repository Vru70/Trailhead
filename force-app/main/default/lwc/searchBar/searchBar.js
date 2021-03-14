import { LightningElement, wire } from 'lwc';
import getAccount from '@salesforce/apex/returnAcc.getAccList';
export default class SearchBar extends LightningElement 
{
    accounts;
    error;
    name = 'a';
    @wire(getAccount, {
        accName : this.name
    } )
    wiredAccounts({ error, data }) {
        if (data) {
            this.accounts = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.accounts = undefined;
        }
    }
}