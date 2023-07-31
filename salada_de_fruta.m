% suporte
clear;
clc;

%Vetores horizontal
Q=2;
q=[1 2 3 4 5];
w=(1:2:10);
e=linspace(-5,1,10);%(começo,fim,tam)(linearmente espaçado)
r=logspace(-5,1,10);%(começo,fim,tam)(logaritimicamente espaçado)

%Vetores vertical
t=[1;2;3;4;5];
u=(1:2:10)';

%Matrizes
i=[1 2 3;4 5 6; 7 8 9];
o=[1:3; linspace(1,4,3); 7:1:9];
%Matrizes transpostas
k=i';
%Matrizes inversas
l=inv(i);
%Matrizes endereço 
p=i(1:3,3:3); %->(colunas linhas)

%operações
a = Q+w;     %(adição escalar ->Q numero escalar e W vetor)
s = q+w;     %(adição vetorial-> vetor q vetor W )
d = Q*w;     %(multiplicação escalar Q numero escalar e W vetor)
f = q.*w;    %(multiplicação vetorial Q numero escalar e W vetor)
g = q/w;     %(divição  Q numero escalar e W vetor)???
h = q./w;    %(divição  Q numero escalar e W vetor)
j = w.^q;    %(potenciação  Q numero escalar e W vetor)

%funções padrões simples 
z=length(q);    %tamanho de vetor
c=size(i);      %numeros de linhas e colunas
v=mean(i);      %retorna a média do vetor
b=max(i);       %retorna o maior valor
n=min(i);       %retorna o menor valor do vetor
m=sum(i);       %soma todos os elementos dos vetores 
qq=sort(i);     %coloca os elementos em orde crescente
ww=median(i);   %coloca em ordem cresce e retorna a mediana 
ee=std(i);      %retorna o desvio padrão do vetor 
rr=dot(q,w);      %calcula o produto wacalae entre os dois vetores
tt=rand(1,4);   %gera um vetor  com 4 elemntos randominio dentro do intervalo 0 a 1
uu=rand(3);     %gera uma matriz 3x3 randomica dentro do intervalo 0 a 1
ii=randperm(5); %gera um uma linha de vetor com valores randomnico até 5

%função
x=(0:1:2*pi);
y1=sin(x);
y2=x;
y3=3*x.^3+5.*x-3;

%gráficos 2d
plot(x,y1,'b-')         %(Eixo x ,eixo y , tipo de linha: linewidth a linha é continua)
hold on                 % sobrepor funções para gráficos
title('salada de fruta')
plot(x,y2,'g--')        % outras funções
plot(x,y3,'ro')         % outras funções
axis([0 5 -1 5])        % intervalos para o eixo xi xo yi yo
xlabel('x')             % legenda do eixo
ylabel('sen eixo y')    % legenda do eixo
legend('y1','y2','y3')  % legenda do eixo
hold off

%função
x2=(0:0.01:10*pi);

%gráficos 3d
plot3(x2,cos(x2),sin(x2),'b-')         %(Eixo x ,eixo y , tipo de linha: linewidth a linha é continua)
title('salada de fruta 2')
axis([0 5 -1 5])        % intervalos para o eixo xi xo yi yo
xlabel('x')             % legenda do eixo
ylabel('sen eixo y')    % legenda do eixo
legend('y1')            % legenda do eixo
grid on

%TESTE GRAFICO 4

%%TESTE DE FUNÇÃO
A=(0:2:10);
B=(1:1:6);
C=2;

y4 =(A.^2 + 2.*B + C);
x4=(0:1:5);

%gráficos 2d
plot(x4,y4,'r*')    %(Eixo x ,eixo y , tipo de linha: linewidth a linha é continua)
title('salada de fruta3')
axis([0 100 -1 100])        % intervalos para o eixo xi xo yi yo
xlabel('x')             % legenda do eixo
ylabel('sen eixo y')    % legenda do eixo
legend('y1')            % legenda do eixo

%TESTE GRAFICO 4
y5= fruta(A,B,C);
x4=(0:1:5);

%gráficos 2d
plot(x4,y4,'r--')    %(Eixo x ,eixo y , tipo de linha: linewidth a linha é continua)
title('salada de fruta4')
axis([0 100 -1 100])        % intervalos para o eixo xi xo yi yo
xlabel('x')             % legenda do eixo
ylabel('sen eixo y')    % legenda do eixo
legend('y1')            % legenda do eixo

