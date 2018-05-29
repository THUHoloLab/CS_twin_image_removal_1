function spatialcube = plotdatacube(data)
data = padarray(data,[3 3],max(data(:)),'both');

n1 = size(data,1);
n2 = size(data,2);

totalfigs = size(data,3);

cols = 1;
rows = ceil(totalfigs/cols);

spatialcube = zeros(rows*n1,cols*n2);

figscount = 1;
for r = 1:rows
    for c = 1:cols
        if figscount<=totalfigs
            spatialcube((r-1)*n1+1:(r-1)*n1+n1,(c-1)*n2+1:(c-1)*n2+n2) = squeeze(data(1:n1,1:n2,figscount));%totalfigs-figscount+1));
        else
            spatialcube((r-1)*n1+1:(r-1)*n1+n1,(c-1)*n2+1:(c-1)*n2+n2) = zeros(n1,n2);
        end
        figscount = figscount+1;
    end
end