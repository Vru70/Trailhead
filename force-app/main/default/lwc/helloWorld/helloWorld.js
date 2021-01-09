import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement 
{
    name='Vrushabh Uprikar';
    age=23;
    role='Developer';
    email='vrushabhuprikar02@gmail.com';
    company='Vru70Studio';
    picUrl='https://www.salesforcetroop.com/static/header_icon-d392379112f23593cf4ff795d22035aa.png';
    ready=false;
    connectedCallback()
    {
        setTimeout(()=>{
            this.ready=true;
        },3000);
    }
    bike1 = {
        name: 'Electra X4',
        picture: 'https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg'
    };
}