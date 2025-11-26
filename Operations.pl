% Toplama
add(A, B, Sum) :-
    Sum is A + B.

% Çıkarma
sub(A, B, Diff) :-
    Diff is A - B.

% Çarpma
mul(A, B, Prod) :-
    Prod is A * B.

% Tam sayı bölme
divI(A, B, Quot) :-
    B =\= 0,
    Quot is A // B.

% Mod (kalan)
modR(A, B, Rem) :-
    B =\= 0,
    Rem is A mod B.

% Üs alma
pow(A, B, Res) :-
    Res is A ** B.

% Karşılaştırma örnekleri (aritmetik karşılaştırmalar)
eq(A, B) :- A =:= B.    % eşit
ne(A, B) :- A =\= B.    % eşit değil
gt(A, B) :- A > B.      % büyük
lt(A, B) :- A < B.      % küçük
gte(A, B) :- A >= B.    % büyük veya eşit
lte(A, B) :- A =< B.    % küçük veya eşit



% Örnek sorgular:
% ?- add(3, 5, Sum).        % Sum = 8
% ?- sub(10, 4, Diff).      % Diff = 6
% ?- mul(2, 6, Prod).       % Prod = 12
% ?- divI(9, 2, Quot).      % Quot = 4
% ?- modR(10, 3, Rem).      % Rem = 1
% ?- pow(2, 3, Res).       % Res = 8
% ?- gt(5, 3).             % true
% ?- eq(4, 4).             % true
% ?- ne(4, 5).             % true
% ?- lt(2, 3).             % true
% ?- gte(5, 5).            % true
% ?- lte(3, 4).            % true

