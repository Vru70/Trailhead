import { LightningElement,wire,track } from 'lwc';
import {    getRecord } from 'lightning/uiRecordApi';

import userId from '@salesforce/user/Id';
import NAME_FIELD from '@salesforce/schema/User.Name';
import EMAIL_FIELD from '@salesforce/schema/User.Email';

export default class Selector extends LightningElement {
    @ track selectedProductId;
    @ track userID;
    @ track name;
    @ track email;

    @wire(getRecord,{
        recordID: userId,
        fields: [NAME_FIELD, EMAIL_FIELD]
    }) wireuser({
        error,
        data
    }) {
        if(error)
        {
            this.error = error;
        }else if(data)
        {
            this.email = data.fields.Email.value;
            this.name = data.fields.Name.value;
        }
    }

    handleProductSelected(evt) {
        this.selectedProductId = evt.detail;

    }
}