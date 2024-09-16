isBoltWeapon(sWeapon)
{
	switch(sWeapon) {
		case "enfield_mp":
		//case "fg42_mp":
		//case "fg42_semi_mp":
		case "kar98k_mp":
		case "kar98k_sniper_mp":
		case "mosin_nagant_mp":
		case "mosin_nagant_sniper_mp":
		case "springfield_mp":
		return true;
	}

	return false;
}
