import { LightningElement } from 'lwc';

export default class SimpleEvent extends LightningElement 
{
    page=1;

    handleNext()
    {
        this.page=this.page + 1;
        /* eslint    */
    }

    handlePrevious()
    {
        if(this.page > 1)
        {
            this.page=this.page - 1;
        }
        
    }
}