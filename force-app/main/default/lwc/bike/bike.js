import { LightningElement , api, track} from 'lwc';

export default class Bike extends LightningElement 
{
    @track firstname;
    @track lastname;
    @track email;
    ready = false;
    handleChange(event)
    {
        this.firstname = event.target.value;
        console.log('First Name is : '+this.firstname);
    }
    handleChange1(event)
    {
        this.lastname = event.target.value;
        console.log('Last Name is : '+this.lastname);
    }
    handleChange2(event)
    {
        this.email = event.target.value;
        console.log('Email Name is : '+this.email);
    }
    
    handleClick() 
    {
        
            this.ready=true;
           
    }

}