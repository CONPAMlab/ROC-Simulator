function [HR, zHR]=c2HR(Model, c, param)

switch Model
    
    case '2HT' % note c here does not stand for the decision criterion in the HT models
        lb = -.5 + param(2);
        ub = .5 + (.5-lb)*param(1)/(1-param(1));
        HR = 1 - unifcdf(c,lb,ub);
%         HR=param(1) + (1-param(1))*b;
    case 'EVSD'
        HR=1-normcdf(c, param(1), 1);
    case 'UVSD'
        HR=1-normcdf(c, param(1), param(2));
    case 'DPSD'
        HR=param(2)+(1-param(2))*(1-normcdf(c, param(1), 1));
    case 'DPSD2'
        HR=param(2)+(1-param(2))*(1-normcdf(c, param(1), 1));
    case 'Slots'
        HR=param(2)*(1-normcdf(c, param(1), 1)) + ...
            (1-param(2))*(1-normcdf(c, 0, 1));
        
end
zHR=norminv(HR);

end