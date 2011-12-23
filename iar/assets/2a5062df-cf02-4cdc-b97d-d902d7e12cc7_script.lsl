default
{
   

touch_start( integer total_number)
    {
        if (llDetectedKey(0)!=llGetOwner())return;
           
               llTriggerSound("SND_INTERFACE_BEEP", 1);
               llGiveInventory(llGetOwner(), "Avatar Classroom Scoreboard Admin HUD");
                
     
    }
}
