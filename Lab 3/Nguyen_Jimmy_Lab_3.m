%Problem 1
step = (2*pi)/50;
vec = 0 : step : 2*pi
disp(vec);

%Problem 2a
vec1 = [7 8 9 10]
vec2 = [12 10 8 6]
mat = [vec1;vec2]
disp('matrix =');
disp(mat);

%Problem 2b
mat(1,3)

%Problem 2c
mat(2,:)

%Problem 2d
mat(:,1:2)

%Problem 3a
randi([0,1],2,3)

%Problem 3b
randi([0,10],2,3)

%Problem 3c
randi([5,20],2,3)

%Problem 4a & 4b
layerone = zeros(2,4)
layertwo = ones(2,4)
layerthree = [5 5 5 5; 5 5 5 5]
mat(:,:,1) = layerone
mat(:,:,2) = layertwo
mat(:,:,3) = layerthree
size(mat)

%Problem 5a & 5b
x = linspace(-pi,pi,20)

y = sin(x)

%Problem 6a & 6b
mat = randi ([-5,5],3,5)
sign(mat)

%Problem 7
v = [33 11.5 40 18 20 12.5]
vectorHours = v(1:2:length(v)-1)
vectorRates = v(2:2:length(v))

totalPay = vectorHours.*vectorRates
fprintf('%.2f',sum(totalPay))

%Problem 8a
matA = [ 1 4; 3 2]
matB = [2 1 3; 1 5 6; 3 6 0]
matC = [3 2 5; 4 1 2] 

%Problem 8b
mat3A = 3*matA

%Problem 8c
matAC = matA*matC

%Problem 9a & 9b
colVec = randi([50,100],20,1)
isEven = mod(colVec,2) == 0
evenValues = colVec(isEven)

isOdd = mod(colVec,2) == 1
oddValues = colVec(isOdd)

%Problem 10
[x,y] = meshgrid(1:2, 1:5)
f = 3*x-y





