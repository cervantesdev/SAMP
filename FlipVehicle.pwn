stock FlipVehicle(vehicleid)
{
    new
        Float:vehAngle;

    GetVehicleZAngle(vehicleid, vehAngle);
    SetVehicleZAngle(vehicleid,vehfAngle);
    SetVehicleVelocity(vehicleid, 0.0, 0.0, 0.0);
    return 1;
}
