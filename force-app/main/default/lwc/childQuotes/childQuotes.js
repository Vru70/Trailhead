import { LightningElement , api} from 'lwc';

export default class ChildQuotes extends LightningElement 
{
    @api childQuote=
        {
            id:1,
            quote:'Good Monringg ',
        };
}