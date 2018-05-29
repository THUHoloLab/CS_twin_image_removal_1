function spatialcube = plotdatacubeTiff(data,cols,pad_size,max_data)

if (nargin < 2), cols = 5;  end
if (nargin < 3), pad_size = 3;  end
if (nargin < 4), max_data = max(data(:));  end

if(size(data,3)<cols)
    cols=size(data,3);
end;

data = padarray(data,[pad_size pad_size],max_data,'both');

n1 = size(data,1);
n2 = size(data,2);

totalfigs = size(data,3);


rows = ceil(totalfigs/cols);

spatialcube = zeros(rows*n1,cols*n2);

figscount = 1;
for r = 1:rows
    for c = 1:cols
        if figscount<=totalfigs
            spatialcube((r-1)*n1+1:(r-1)*n1+n1,(c-1)*n2+1:(c-1)*n2+n2) = squeeze(data(1:n1,1:n2,figscount));%totalfigs-figscount+1));
            filename=['./isp1/View4/ispimage_v4_' num2str(figscount) '.tiff'];
            imwrite(squeeze(data(1+3:n1-3,1+3:n2-3,figscount)),filename,'tiff');
        else
%             spatialcube((r-1)*n1+1:(r-1)*n1+n1,(c-1)*n2+1:(c-1)*n2+n2) = zeros(n1,n2);
            spatialcube((r-1)*n1+1:(r-1)*n1+n1,(c-1)*n2+1:(c-1)*n2+n2) = max_data;
            filename=['./isp1/View4/ispimage_v4_' num2str(figscount) '.tiff'];
            imwrite(squeeze(data(1+3:n1-3,1+3:n2-3,figscount)),filename,'tiff');
        end
        figscount = figscount+1;
    end
end