import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement 
{
    isTimon = false;
    isPumba = false;
    
    showTimon()
    {
        this.isPumba = false;
        this.isTimon = true;
        console.log('Timon is showing...');

     }

    showPumba()
    {
        this.isPumba = true;
        this.isTimon = false;
        console.log('Pumba is showing...');
    }
}