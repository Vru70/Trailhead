import { LightningElement } from 'lwc';

export default class LifeCycleHooks extends LightningElement 
{
    /* eslint-disable*/
    constructor()
    {
        super();
        alert('This Is Constructor');
    }

    connectedCallback()
    {
        alert('I am in Connected Callback function');
    }

    disconnectedCallback()
    {
        alert('Disconnected Callback function');
    }

    renderedCallback()
    {
        alert('Rendered callback call');
    }

    errorCallback(error, stack) {
        alert('I am in error callback');

    }



    
}