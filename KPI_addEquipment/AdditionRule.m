function addition_rec = AdditionRule(zero_availability, first_der, second_der, num_assets)
%ADDITIONRULE Summary of this function goes here
%   Detailed explanation goes here

% tuning parameters
a = 1.2;
b = 0.6;
c = 0.1;

if (first_der < 0 && second_der <= 0.1 && zero_availability <= 20)
    indicator = 0;
else
    indicator = a * zero_availability + b * first_der + c * second_der;
end

addition_rec = (num_assets * (1 + indicator/100)) - num_assets;

end

