function hit_empty(x,y,c,m,n)
    global matrix_game;
    global matrix_flags;
    global hitNum;
    global u;
    hitNum = hitNum+1;
    if (matrix_flags(x,y) == 0) 
        matrix_game(x,y) = -2;
        empty_img = imresize(imread('images/0.png'),0.125);
        set(u(c),'cdata',empty_img);
        checkWin();
        if (x>1 && y>1)
            x_temp = x-1;
            y_temp = y-1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0 )
                hit_empty(x_temp,y_temp,c_temp,m,n);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end


        if (x>1)
            x_temp = x-1;
            y_temp = y;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp,m,n);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end

        if (x>1 && y<n)
            x_temp = x-1;
            y_temp = y+1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp,m,n);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end

        if (y>1)
            x_temp = x;
            y_temp = y-1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp,m,n);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end

        if (y<n)
            x_temp = x;
            y_temp = y+1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp,m,n);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end

        if (x<m && y>1)
            x_temp = x+1;
            y_temp = y-1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp,m,n);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end




        if (x<m)
            x_temp = x+1;
            y_temp = y;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp,m,n);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end


        if (x<m && y<n)
            x_temp = x+1;
            y_temp = y+1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp,m,n);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end
    end
    
end

