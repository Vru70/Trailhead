import { LightningElement } from 'lwc';

export default class Loops extends LightningElement 
{
    areDetailsVisible= false;


    chnageFalse(event)
    {
        this.areDetailsVisible = false;
    }
    chnageTrue(event)
    {
        this.areDetailsVisible = true;
    }

    ceoList = 
    [
        {
            Id: 1,
            Name: 'Vrushabh' ,
            Company: 'Salesforce',
            link: 'https://www.salesforce.com/in/',
        },
        {
            Id: 2,
            Name: 'Elon Musk' ,
            Company: 'Tesla',
            link: 'https://www.tesla.com/',
        },
        {
            Id: 3,
            Name: 'Sundar Pichai' ,
            Company: 'Google',
            link: 'https://www.google.com/',
        },
    ];
}