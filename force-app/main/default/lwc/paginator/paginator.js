import { LightningElement } from 'lwc';

export default class Paginator extends LightningElement 
{
    handlePrevious()
    {
        // Creates custome event
        const prevEvent = new CustomEvent('previous');
        // Fire the event
        this.dispatchEvent(prevEvent);
    }

    handleNext()
    {
        // Creates custome event
        const nextEvent = new CustomEvent('next');
        // Fire the event
        this.dispatchEvent(nextEvent);
    }
}