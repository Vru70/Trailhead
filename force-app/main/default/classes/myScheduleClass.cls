global class myScheduleClass implements Schedulable
{

    global void execute(SchedulableContext cscontex)
    {
        MyFirstBatchClass mybatch = new MyFirstBatchClass();
        ID runid = Database.executeBatch(mybatch);
    }
}

/*

mydailyjobclass reminder = new mydailyjobclass ();
// Seconds Minutes Hours Day_of_month Month Day_of_week optional_year
String sch = '20 30 8 10 2 ?';   //regex 
String jobID = System.schedule('Remind Opp Owners', sch, reminder);


*/