import { LightningElement } from 'lwc';
import Id from '@salesforce/user/Id';

export default class PPage extends LightningElement 
{
    userId = Id;
    clist =[
        {
            name:'Salesforce Lightning Administrator',
            duration: '30 Days',
            fees: '4000',
            trainer: 'Vrushbah',
            rating:'4',
            img: 'https://img-a.udemycdn.com/course/240x135/3703496_2953_3.jpg',
            id:1,
        },
        {
            name:'Salesforce Platform Developer I',
            duration: '40 Days',
            fees: '5000',
            trainer: 'Vrushbah',
            rating:'4',
            img: 'https://img-b.udemycdn.com/course/240x135/1102570_ce33_5.jpg',
            id:2,
        },
        {
            name:'Salesforce CPQ Specialist',
            duration: '25 Days',
            fees: '7000',
            trainer: 'Vrushbah',
            rating:'4',
            img: 'https://img-a.udemycdn.com/course/240x135/3699918_1a03.jpg',
            id:3,
        },
        {
            name:'SALESFORCE APPLICATION ARCHITECT',
            duration: '50 Days',
            fees: '10000',
            trainer: 'Vrushbah',
            rating:'4',
            img: 'https://img-b.udemycdn.com/course/240x135/2694712_cbe2_3.jpg',
            id:4,
        },
        {
            name:'MuleSoft and Salesforce Integration',
            duration: '30 Days',
            fees: '14000',
            trainer: 'Vrushbah',
            rating:'4',
            img: 'https://img-a.udemycdn.com/course/240x135/3412390_5537_3.jpg',
            id:5,
        },
        {
            name:'Salesforce Heroku Masterclass',
            duration: '30 Days',
            fees: '10500',
            trainer: 'Vrushbah',
            rating:'4',
            img: 'https://img-a.udemycdn.com/course/240x135/2447630_7a0e_2.jpg',
            id:6,
        },
    ];
}