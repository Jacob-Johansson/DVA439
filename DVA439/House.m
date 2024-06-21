function deltaRoomTemperature = House(heatFlow, roomTemperature, outdoorTemperature, thermalResistance, mAir, c)
    loss = ((roomTemperature - outdoorTemperature) / thermalResistance);
    deltaRoomTemperature = ((heatFlow - loss) / (mAir * c));
end

