import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class ShowTostEx extends LightningElement 
{
    showtost()
    {
        const event = new ShowToastEvent(
            {
                title: 'Get Help',
                variant: 'success',
                message: 'salesforc documentation available in this app  ',
            }
        );
        this.dispatchEvent(event);
    }

    showtosterr()
    {
        const eventerr = new ShowToastEvent(
            {
                title: 'Error XXX',
                variant: 'error',
                message: 'This tost for error message',
            }
        );
        this.dispatchEvent(eventerr);
    }
}