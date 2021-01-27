import { LightningElement, wire,track } from 'lwc';
import getContactList from '@salesforce/apex/ContactAuraService.getContactList';
//import getAccountList from '@salesforce/apex/ContactAuraService.getAccountList';

export default class ContactListDemo extends LightningElement 
{
    @track searchKey = '';
    @track contacts;
    @track error;
    //calling using wire decorator
    // this contacts will containt 2 things 1st Data and 2nd Error
    // contacts.data
    // contacts.error
    searchContact(event)
    {        
        this.searchKey = event.target.value;        
    }


    @wire(getContactList,{name:'$searchKey' })
    wiredContacts({data,error})
    {
        if(data)
        {
            this.contacts = data;
            /* eslint-disable-next-line no-console */
            console.log('data'+this.contacts);
        }
        if(error)
        {
            this.error = error;
            /* eslint-disable-next-line no-console */
            console.log('data'+this.error);
        }
    }
}