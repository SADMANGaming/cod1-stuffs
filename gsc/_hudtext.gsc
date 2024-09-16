main()
{	
	precacheString( &"^1C^2o^5D ^7: ^3RA^7." );
	precacheString( &"^3Made ^5by ^3Sadman^7." );
	precacheString( &"^5Thanks ^2for ^6playing^7." );
	thread logo();
}


logo()
{
    printLn("Server Logo Loaded");
	level.logo = newHudElem();
	level.logo.x = 15;
	level.logo.y = 15;
	level.logo.alignx = "left";
	level.logo.aligny = "middle";
	level.logo.fontscale = 0.9;
	level.logo.archived = true;
	while ( 1 )
	{
		level.logo.alpha = 0;
		level.logo setText( &"^1C^2o^5D ^7: ^3RA^7." );
		level.logo fadeOverTime( 2 );
		level.logo.alpha = 1;
		
		wait 8;
		
		level.logo fadeOverTime( 2 );
		level.logo.alpha = 0;
		
		wait 2;
		
		level.logo setText( &"^3Made ^5by ^3Sadman^7." );
		level.logo fadeOverTime( 2 );
		level.logo.alpha = 1;
		
		wait 8;
		
		level.logo fadeOverTime( 2 );
		level.logo.alpha = 0;
		
		wait 2;
		
		level.logo setText( &"^5Thanks ^2for ^6playing^7." );
		level.logo fadeOverTime( 2 );
		level.logo.alpha = 1;
		
		wait 8;
		
		level.logo fadeOverTime( 2 );
		level.logo.alpha = 0;
		
		wait 2;
	}
}
