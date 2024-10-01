/*
               COD: THIRD PERSON MODE V1.0
               MADE BY SADMAN
               REQUIRES VCODLIB/LIBCOD1
               
               DISCORD ID: .sadman_
               DISCORD: https://cod1.rf.gd/discord/
               WEBSITE: https://cod1.rf.gd/

               BUGS: GUNS AUTOMATICALLY MELEES WHEN YOU'RE AT THIRD PERSON AND TRYING TO ADS.
*/

precache()
{
    tpe = makeLocalizedString("THIRD PERSON ENABLED");
    tpd = makeLocalizedString("THIRD PERSON DISABLED");
}

main()
{
    self.enablethirdperson = false;


    while(1){
        if(self meleeButtonPressed()){
            self.enablethirdperson = !self.enablethirdperson;
            
            if (self.enablethirdperson){
                self setClientCvar("cg_thirdperson", "1");
            } else {
                self setClientCvar("cg_thirdperson", "0");
            }
            wait 0.5;
        }
        if(self.enablethirdperson && self aimButtonPressed()){
            self setClientCvar("cg_thirdperson", "0");  
        } else if (self.enablethirdperson && !self aimButtonPressed()){
            self setClientCvar("cg_thirdperson", "1");
        }
        wait .1;
    }
    precache();
    hud();
}

hud()
{
    if(!isDefined(self.hud_bomb)){
        self.hud_bomb = newClientHudElem(self);
        self.hud_bomb.sort = -1;
        self.hud_bomb.x = 540;
        self.hud_bomb.y = 25;
        self.hud_bomb.fontScale = 0.8;
        self.hud_bomb.color = (1, 1, 0);
    }
    
    if (self.enablethirdperson){
        self.hud_bomb.label = tpe;
    } else {
        self.hud_bomb.label = tpd;
    }
}