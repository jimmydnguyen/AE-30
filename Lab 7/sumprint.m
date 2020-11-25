function result = sumprint(matrix,dim)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[row,col] = size(matrix);

result = [];

if dim == 1
    for i = 1:col
        colSum = 0;
        for j = 1:row
            colSum = colSum + matrix(j,i);
        end

        result(end + 1) = colSum;
    end
end
if dim == 2
    for i = 1:row
        colRow = 0;
        for j = 1:col
            colRow = colRow + matrix(i,j);
        end

        result(end + 1, 1) = colRow;
    end
end
   