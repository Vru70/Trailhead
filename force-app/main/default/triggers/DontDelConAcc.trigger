trigger DontDelConAcc on Contact (before delete) 
{

    for(Contact cc : Trigger.Old)
    {
        if(cc.AccountId != NULL)
        {
            cc.AddError('You can not Delete Contact if it is associated with Account');
        }
    }
}