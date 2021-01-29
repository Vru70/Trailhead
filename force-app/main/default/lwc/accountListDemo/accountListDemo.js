import { LightningElement , track, wire} from 'lwc';
import accList from '@salesforce/apex/accountList.accList'
export default class AccountListDemo extends LightningElement 
{

    @track searchKey= '';
    @track accountList;
    @track error;
    result;
    error;
    accountError;
    selectAccount;
    
    handleChnage(event)
    {
        event.preventDefault();
        this.searchKey = event.target.value;
    }


    handleSelectRec(event)
    {
        const recordId = event.detail;
        /* eslint-disable-next-line no-console */
        console.log('recordId'+ this.recordId );
        this.selectAccount = this.accountList.find( account => account.Id === recordId);
    }


    getAccOnBtn()
    {
        // imperative method in lwc
        accList(
            {
                k : this.searchKey
            }
        )
        .then(result =>{
                this.accountList = result;
                /* eslint-disable-next-line no-console */
                console.log('Account Result '+ JSON.stringify(this.accountList) );
        })
        .catch(error =>{
                this.accountError  = error;
                /* eslint-disable-next-line no-console */
                console.log('Account Error'+  this.accountError);
        });
    }

}