integer toggle;
default
{
    state_entry() {
        llSetTexture("hidehud", ALL_SIDES);
        toggle=-1;
    }
    touch_start(integer total_number)
    {
        if (toggle==-1){
            llMessageLinked(LINK_SET,0,"hide",NULL_KEY);
            
            llSetTexture("showhud", ALL_SIDES);
            llSetObjectName("show");
        }else
        if (toggle==1){
            llMessageLinked(LINK_SET,0,"show",NULL_KEY);
            llSetTexture("hidehud", ALL_SIDES);
            llSetObjectName("hide");
        }
        toggle*=-1;
    }
}