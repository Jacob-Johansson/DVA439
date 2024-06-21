function heatFlow = Heater(roomTemperature, heaterAirTemperature, action, Mdot, c)
gain = Mdot*c;
heatFlow = action * gain * ((heaterAirTemperature - roomTemperature));
end

