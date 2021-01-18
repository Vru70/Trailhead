import { LightningElement,api } from 'lwc';

export default class LMSChild extends LightningElement 
{
    @api cource =
    {
        name:'Salesforce Lightning Administrator',
        duration: '30 Days',
        fees: '5000',
        trainer: 'Vrushbah',
        rating:'4',
        img: 'https://img-a.udemycdn.com/course/240x135/3703496_2953_3.jpg',
        id: 1,
    };

    @api test={
        id:1,
        result:'resuk set',
    };

}