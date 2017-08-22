<<<<<<< HEAD
% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1;
y = x + x
%%
a = '1';
b = a+a
%% Adam Howard: the reason that the first example is adding a numberical value assigned
% to x, while the function in b is trying to add together a string defined
% in a.
% Additionally, the value for b of 98 stems from Matlab's addtion of the
% ASCII value of the string '1'
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%% Adam Howard: The variable x2 is defining an array that contains two numbers defined earlier while a2 
% is defining an array that containts the string '1' from the earlier questions.
% x2 is a 1 row by 2 column array while x2b is a 2 row by 1 column array.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%Adam Howard: At first the a==b command is checking if the values of a and
%b are equivalent. Since they are not, we get an illogical or fasle value.
% The following line we set the value of a to b, which is 2. 
% Now a and b are both 2, so we get a return of logical or true.

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%Adam Howard: here we are using the compare command to check if the values
%of an array are the same. the first and the third values are not
%identical, but the 2nd value, "2", is, so we get a return value of 1 (true) in
%the second column.

%explain why this gives an error:

b = [2, 3,3];
a == b

%Adam Howard: So here we are trying to compare the array a to the array b.
%we have recently redefined b as a 1x2 array, while a is a 1x3. we can only
%use the compare command to look at arrays of identical dimensions.

%explain why this does not give an error
b = 4;
a == b 

%So here we are searching the array in a for the value saved in variable
%b. We are no longer asking to compare two arrays after we redefine b. 
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

%Adam Howard: The second line create a new array that contains the numbers
%1 to 10 followed by the same array with each member increased by 10. So an
%array of oneToTen+10 would just be integers 11 through 20.

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
[oneToTen*2]
2:2:20

% 2. odd numbers from one to nineteen

1:2:19
[oneToTen*2-1]

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

fliplr(oneToTen*2)

fliplr([2:2:20])

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen'
fliplr(oneToTen)

%Adam Howard: the ' here has changed the array from a 1x10 to a 10x1.
%fliplr() only flips rows. Since there is only one member of each row, the
%flip results in an identical array. To switch the order we need to use the
%Flipud() command, shown below.
flipud(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%Adam Howard: the first line is a m

%explain this command:
m2./m1
%extra credit: explain why this command gives a warning:
m2/m1
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)


rand_nums(2:4,3)

rand_nums(1:2,3:4)

rand_nums(:,2)

rand_nums(1,:)

rand_nums(:,[1 3 5])


%%
a = ones(2)
b = 2*ones(2)
c = [1,1;2,2]
d = 3*ones(2)
x = b.*a
y = d*c
=======
% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1;
y = x + x
%%
a = '1';
b = a+a
%% Adam Howard: the reason that the first example is adding a numberical value assigned
% to x, while the function in b is trying to add together a string defined
% in a.
% Additionally, the value for b of 98 stems from Matlab's addtion of the
% ASCII value of the string '1'
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%% Adam Howard: The variable x2 is defining an array that contains two numbers defined earlier while a2 
% is defining an array that containts the string '1' from the earlier questions.
% x2 is a 1 row by 2 column array while x2b is a 2 row by 1 column array.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%Adam Howard: At first the a==b command is checking if the values of a and
%b are equivalent. Since they are not, we get an illogical or fasle value.
% The following line we set the value of a to b, which is 2. 
% Now a and b are both 2, so we get a return of logical or true.

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%Adam Howard: here we are using the compare command to check if the values
%of an array are the same. the first and the third values are not
%identical, but the 2nd value, "2", is, so we get a return value of 1 (true) in
%the second column.

%explain why this gives an error:

b = [2, 3,3];
a == b

%Adam Howard: So here we are trying to compare the array a to the array b.
%we have recently redefined b as a 1x2 array, while a is a 1x3. we can only
%use the compare command to look at arrays of identical dimensions.

%explain why this does not give an error
b = 4;
a == b 

%So here we are searching the array in a for the value saved in variable
%b. We are no longer asking to compare two arrays after we redefine b. 
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

%Adam Howard: The second line create a new array that contains the numbers
%1 to 10 followed by the same array with each member increased by 10. So an
%array of oneToTen+10 would just be integers 11 through 20.

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
[oneToTen*2]
2:2:20

% 2. odd numbers from one to nineteen

1:2:19
[oneToTen*2-1]

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

fliplr(oneToTen*2)

fliplr([2:2:20])

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

%Adam Howard: the ' here has changed the array from a 1x10 to a 10x1.
%fliplr() only flips rows. Since there is only one member of each row, the
%flip results in an identical array. To switch the order we need to use the
%Flipud() command, shown below.
flipud(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%Adam Howard: the first line is a m

%explain this command:
m2./m1
%extra credit: explain why this command gives a warning:
m2/m1
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)


rand_nums(2:4,3)

rand_nums(1:2,3:4)

rand_nums(:,2)

rand_nums(1,:)

rand_nums(:,[1 3 5])


%%
a = ones(2)
b = 2*ones(2)
c = [1,1;2,2]
d = 3*ones(2)
x = b*a
y = d*c
c*c
>>>>>>> 255d3a437a5547c8b7673feafdd577c592cf6af6
