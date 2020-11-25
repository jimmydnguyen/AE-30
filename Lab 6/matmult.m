function result = matmult(firstMatrix,secondMatrix)
% Multiplies the two input matrixes and returns the resulting matrix
 [row1, col1] = size(firstMatrix);
    [row2, col2] = size(secondMatrix); 
    if( col1 == row2)
        result = zeros(row1, col2);
        for i  = 1: row1
           for j =1:col2
              for k = 1:row2
                  result(i,j) = result(i,j) + a(i,k) * b(k,j);
              end
           end
        end
    else
        result = [];
    end
    disp(result)
end

