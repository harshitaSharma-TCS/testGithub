trigger contactTrigger on Contact (before insert,before update) 
{
    Set<String> conList = new set<String>();

    for(Contact con: [select email from Contact])
    {
        conList.add(con.email);
    }
    
    for(Contact con: Trigger.new)
    {
        if(conlist.contains(con.email))
            con.adderror('Duplicate Record');
    }

    
}