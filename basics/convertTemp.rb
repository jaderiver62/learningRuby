def convert_temp(temperature, input_scale:'celsius', output_scale:'celsius')
    bases = {'celsius' => 0.0, 'fahrenheit' => 32.0, 'kelvin' => 273.15}
    units = {'celsius' => 1.00, 'fahrenheit' => 9.0 / 5.0, 'kelvin' => 1.00}   
    bases[output_scale] + (temperature.to_f - bases[input_scale]) * (units[output_scale] / units[input_scale])
end

def convert_temp(temp, input_scale:, output_scale: 'celsius')
    case input_scale.downcase
    when 'fahrenheit'
        return output_scale == 'kelvin' ? 
        ((temp - 32) / 1.8) + 273.15 : (temp - 32) / 1.8
    when 'celsius'
        return output_scale == 'kelvin' ? 
        temp + 273.15 : (temp * 1.8) + 32
    when 'kelvin'
        return output_scale == 'celsius' ? 
        temp - 273.15 : (temp - 273.15) * 1.8
    end
end

# Kelvin to Celsius: C = K - 273 (C = K - 273.15 if you want to be more precise)
# Kelvin to Fahrenheit: F = 9/5(K - 273) + 32 or F = 1.8(K - 273) + 32.
# Celsius to Fahrenheit: F = 9/5(C) + 32 or F = 1.80(C) + 32.
# Celsius to Kelvin: K = C + 273 (or K = C + 271.15 to be more precise)