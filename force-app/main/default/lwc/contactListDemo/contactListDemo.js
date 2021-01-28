import { LightningElement, wire,track, api } from 'lwc';
import getContactList from '@salesforce/apex/ContactAuraService.getContactList';
import getAccountList from '@salesforce/apex/ContactAuraService.getAccountList';

export default class ContactListDemo extends LightningElement 
{
    @track searchKey = '';
            accountError;
            accounts;
            result;
            searchKeyA='';
        
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
    searchAcc(event)
    {        
        this.searchKeyA = event.target.value;        
    }

    @wire(getContactList,{name:'$searchKey' })
    wiredContacts({data,error})
    {
        if(data)
        {
            this.contacts = data;            
            /* eslint-disable-next-line no-console */
            console.log('Contact data'+ JSON.stringify(this.contacts));
                     
        }
        if(error)
        {
            this.error = error;
            /* eslint-disable-next-line no-console */
            console.log('Contact data'+this.error);
        }
    }

    getAccOnBtn()
    {
        // imperative method in lwc
        getAccountList(
            {
                name : this.searchKeyA
            }
        )
        .then(result =>{
                this.accounts = result;
                /* eslint-disable-next-line no-console */
                console.log('Account Result '+ JSON.stringify(result) );
        })
        .catch(error =>{
                this.accountError  = error;
                /* eslint-disable-next-line no-console */
                console.log('Account Error'+  this.accountError);
        });
    }
    
}