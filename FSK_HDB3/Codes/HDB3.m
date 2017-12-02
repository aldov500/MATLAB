function HDB3(xn)
    %xn = round(0.75*rand(1,30));       
    yn = xn;   

    %Contador de 1's y 0's
    num = 0;                                                                

    %Generacion de Codigo AMI
    for k=1:length(xn)
        %Si el valor es 1
        if xn(k)==1
            %incrementa contador de 1's
            num = num+1;

            %Si el numero es par
            if num/2 == fix(num/2)         
                yn(k)= -1;  % V

            else %Impar
                yn(k)= 1;   % B                     
            end
        end
    end

    %conteo de 0s continuos para cambiar el codigo por 000v o B00V
    num = 0;                                           
    yh = yn;
    %Variable para signo
    sign = 0; 

    % Vectores de 0's
    V = zeros(1,length(yn));   
    B = zeros(1,length(yn));                          

    for k=1:length(yn)
        %Si el bit es 0
        if yn(k)==0
            %Incrementar contador
            num = num + 1;                              
            %Comprueba si hay 4 ceros continuos para realizar el cambio
            if num == 4
                %Reestablece el contador de 0s
                num = 0;
                %Guarda los bits de violacion (V)
                yh(k)= 1*yh(k-4);  
                V(k)=yh(k);
                %Comprueba si el bit yh(k) es igual al signo 0
                if yh(k)==sign
                    %Invierte el signo para evitar signos iguales en los bits de violacion
                    yh(k)= -1*yh(k);
                    %Cambia el primer 0 para generar el codigo B00V
                    yh(k-3) = yh(k);
                    %Guarda las B producidas en hdb3
                    B(k-3)= yh(k);
                    %Guarda el bit de violacion con el signo ya invertido
                    V(k)= yh(k);
                    %Alterna los signos de los 1s despues de detectar un cambio de signo.
                    yh(k+1:length(yn)) = -1*yh(k+1:length(yn));              
                end
                %Guarda el valor de la violacion
                sign = yh(k);                         
            end
            else
            %Reestablece el contador de 0s    
            num = 0;                          
          end
    end

    %Variable que guarda en forma de columna el codigo de entrada,
    %codigo AMI,codigo
    %hdb3,variable con el bit de
    %violacion, variable con el bit
    %de relleno.
    re=[xn',yn',yh',V',B'];                     

    %Decodificacion de la señal
    %Codigo en Hdb3
    input = yh; 
    %Variable con el codigo Hdb3 a reconstruir
    decode = input;
    %Variable para guardar el signo de los 1s 
    sign = 0;

    for k=1:length(yh)
        if input(k)~=0
          %si existen dos 1's con el mismo signo, estos son 
          %cambiados por 0000
          if sign == yh(k)                        
             decode(k-3:k)=[0 0 0 0];           
          end
          %Va guardando el signo de los 1's
          sign = input(k);                       
        end
    end

    %Valor Absoluto para volver los 1 negativos a positivos
    decode = abs(decode);                       

    %Gráficas

    figure(3)
    %Codigo HDB3    
    subplot(2,1,1);
        stairs([0:length(xn)-1],yh);
        axis([0 length(xn) -2 2]);
        title('Codigo HDB3');
        grid on;

    %Señal restaurada
    subplot(2,1,2);
        stairs([0:length(xn)-1],decode);
        axis([0 length(xn) -2 2]);
        title('Codigo Binario Recibido');
        grid on;

    figure(2)
    %Con Bits de relleno
    subplot(2,1,1);
        stairs([0:length(xn)-1],B);
        axis([0 length(xn) -2 2]);
        title('Codigo con bits de Relleno');
        grid on;
    %Codigo AMI
    subplot(2,1,2);
        stairs([0:length(xn)-1],yn);
        axis([0 length(xn) -2 2]);
        title('Codigo AMI');
        grid on;


    figure(1)
    %Codigo binario
    subplot(2,1,1);
        stairs([0:length(xn)-1],xn);
        axis([0 length(xn) -2 2]);
        title('Codigo Binario a Transmitir');
        grid on;
    %Codigo con Violaciones
    subplot(2,1,2);
        stairs([0:length(xn)-1],V);
        axis([0 length(xn) -2 2]);
        title('Codigo con bits de Violacion');
        grid on;
end

