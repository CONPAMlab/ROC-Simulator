function [FAR, zFAR]=c2FAR(Model, c, param)

switch Model
    
    case '2HT' % note c here does not stand for the decision criterion in the HT models
        FAR = 1 - unifcdf(c, -.5, .5);
        %         FAR=(1-param(2))*c;
    case 'EVSD'
        FAR=1-normcdf(c, 0, 1);
    case 'UVSD'
        FAR=1-normcdf(c, 0, 1);
    case 'DPSD'
        FAR=1-normcdf(c, 0, 1);
    case 'DPSD2'
        FAR=(1-param(3))*(1-normcdf(c, 0, 1));
    case 'Slots'
        FAR=(1-param(3))*(1-normcdf(c, 0, 1));
        
end
zFAR=norminv(FAR);

end