import { api, LightningElement } from 'lwc';

export default class LwcRecordForm extends LightningElement 
{
    // force:hasRecordId - recordId
    // force:hasSobject - objectApiName

    @api recordId;
    @api objectApiName;

}