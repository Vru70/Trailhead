/**
 * @description       : 
 * @author            : Vrushabh Uprikar
 * @group             : 
 * @last modified on  : 03-01-2021
 * @last modified by  : Vrushabh Uprikar
 * Modifications Log 
 * Ver   Date         Author             Modification
 * 1.0   03-01-2021   Vrushabh Uprikar   Initial Version
**/
import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub';
export default class Publisher extends LightningElement 
{
    handleClick(){
        window.console.log('Event Firing..... ');
        let message = {
            "message" : 'Hello PubSub'
        }
        pubsub.fire('simplevt', message );
        // fire <- method which help to fire your event on 
        // simplevt -> is name of event that we need to fire and message is payload or data
        window.console.log('Event Fired ');
    }
}