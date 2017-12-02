% Modulaci�n FSK
%   @Param 
%     signal, arreglo de valores binarios
%     f1|f2, valores enteros de frecuencia 

function FSK(g,f0,f1)
    % Comprobacion para parametros
    if nargin > 3
        error('Too many input arguments')
    elseif nargin == 1
        f0=1; f1=2;
    elseif nargin == 2
        f1=2;
    end
    
    val0 = ceil(f0)-f0;
    val1 = ceil(f1)-f1;
    
    if val0 ~=0 || val1 ~=0
        error('Frequency must be an integer');
    end
    if f0<1 || f1<1
        error('Frequency must be bigger than 1');
    end
    
    % Generacion de Se�al No Modulada
    t= 0:2*pi/99:2*pi;
    cp=[];
    sp=[];
    mod=[];
    mod1=[];
    bit=[]; 

    for n=1:length(g);
        % Generacion de flancos negativos
        if g(n)==0;
            die=ones(1,100);
            c=sin(f0*t);
            se=zeros(1,100);

        else g(n)==1;
        % Generacion de flancos positivos
            die=ones(1,100);
            c=sin(f1*t);
            se=ones(1,100);
        end
    
    cp  = [cp die];
    mod = [mod c];
    bit = [bit se];
    
    end
    % Generacion de graficas
    ask = cp.*mod;
    % Binaria
    figure(4)
    subplot(2,1,1);
    plot(bit,'LineWidth',1.5);
    grid on;
    title('Binary Signal');
    axis([0 100*length(g) -2.5 2.5]);
    % Modulada
    subplot(2,1,2);
    plot(ask,'LineWidth',1.5);
    grid on;
    title('FSK modulation');
    axis([0 100*length(g) -2.5 2.5]);
end
