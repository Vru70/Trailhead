import { LightningElement, track, wire } from 'lwc';
import dataList from '@salesforce/apex/accountList.allAccList';

export default class AccDataTable extends LightningElement 
{
    @track columns = [{
        label: 'Account name',
        fieldName: 'Name',
        type: 'text',
        sortable: true
    },
    {
        label: 'Account Number',
        fieldName: 'AccountNumber',
        type: 'text',
        sortable: true
    },
    {
        label: 'Billing Address',
        fieldName: 'BillingAddress',
        type: 'text',
        
    },
    ];
    @track error;
    @track accList;
    @wire (dataList)
    wiredAccounts({error,data})
    {
        if(data)
        {
            this.accList = data; 
        } else if(error)
        {
            this.error = error;
        }
    }
}