import { api, LightningElement } from 'lwc';
import testLabel from '@salesforce/label/c.testLabel';
// Example :- import greeting from '@salesforce/label/c.greeting';'
import testResource from '@salesforce/resourceUrl/testResource';
// Example :- import TRAILHEAD_LOGO from '@salesforce/resourceUrl/trailhead_logo';
import userId from '@salesforce/user/Id';
import lang from '@salesforce/i18n/lang';
import dir from '@salesforce/i18n/dir';
import locale from '@salesforce/i18n/locale';
import currency from '@salesforce/i18n/currency';
import timeZone from '@salesforce/i18n/timeZone';
/* POSSIBLE_VALUES => lang, dir, locale, currency, firstDayOfWeek, timeZone */
/*MORE: https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.create_i18n*/
export default class DesignLwcDemo extends LightningElement 
{
    @api greeting;
    @api heading;

    @api label ={
        testLabel,
        testResource,
        userId,
        lang,
         dir,
          locale,
           currency, 
           timeZone
    }
}