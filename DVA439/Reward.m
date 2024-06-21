function reward = Reward(cost, weight, diffTemperature)
reward = -weight * (cost) - (1 - weight) * (diffTemperature)^2;
end

