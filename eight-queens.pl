%Call template(S),solution(S). to run the program

%initial state solution
solution([]).

%recursive function to find the solution
solution([X/Y|Others]):-
	solution(Others),
        %check all possible value to Y
	member(Y,[1,2,3,4,5,6,7,8]), %range y [1,...,8]
        %check is it ok (dosen't have any attack to others)
	noattack(X/Y,Others).

%initial state noattack
noattack(_,[]).

%recursive function to check attack
noattack(X/Y,[X1/Y1|Others]):-
	Y=\=Y1,
	Y1-Y=\=X1-X,
	Y1-Y=\=X-X1,
	noattack(X/Y,Others).

%in each column we put one queen then we dont need to attack in columns
template([1/_,2/_,3/_,4/_,5/_,6/_,7/_,8/_]).

