
/**
  * Gets a unique value for a new virtual z level.
  * This is just a number, the game wont slow down if you have a ton of empty ones.
  */
/proc/get_new_virtual_z()
	var/static/virtual_value = 1000
	return virtual_value ++

/**
  * Used to get the virtual z-level.
  * Will give unique values to each shuttle while it is in a transit level.
  * Note: If the user teleports to another virtual z on the same z-level they will need to have reset_virtual_z called. (Teleportations etc.)
  */
/atom/proc/get_virtual_z_level()
	var/datum/turf_reservation/TR = SSmapping.get_turf_reservation_at_coords(x, y, z) //Try to see if the atom is in a turf reservation, and if so, return it's virtual z level
	if(TR)
		return TR.virtual_z_level

	var/area/A = get_area(src)
	return A?.get_virtual_z_level() || z
