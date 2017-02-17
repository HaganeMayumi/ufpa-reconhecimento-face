Functional Y = project(R, S, P)
%projetara um vetor R perpendicular a um outro vetor S num ponto P para melhorar a precisão da media
%Argumentos para:
%R[dim x num_data] dados inseridos
%S[dim x num_components] transformada da matriz
%P[dim x 1] media da amostra
%Retornara:
%Y[num_componentes x num_data] projecao
%p/ que a multiplicação seja possível os vetores tem que ser perpendiculares

R = R - repmat(P, 1, size(R,2)); %R sera atribuido a R menos a uma vez a segunda coluna de R vezes P
Y = S'*R; %calculando a projecao
