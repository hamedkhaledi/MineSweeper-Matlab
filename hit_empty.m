function hit_empty(x,y,c)
% select a empty cell and remove all neighbors recursively
% x - the row of empty cell
% y - the col of empty cell
% c - the number of tile that clicked ( for fast calculation )
%
    global matrix_game;
    global matrix_flags;
    global hitNum;
    global u;   
    global number_of_tiles_col;
    global number_of_tiles_row;
    % the number of cols and rows
    m = number_of_tiles_row;
    n = number_of_tiles_col;
    
    % if there is not a flag
    if (matrix_flags(x,y) == 0) 
        % increase hit Numbers
        hitNum = hitNum + 1;
        matrix_game(x,y) = -2;
        
        empty_img = imresize(imread('images/0.png'),0.125);
        set(u(c),'cdata',empty_img);
        % check whether game finished!
        checkWin();
        
        % find all (9) empty cells and click them
        
        if (x>1 && y>1)
            x_temp = x-1;
            y_temp = y-1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0 )
                hit_empty(x_temp,y_temp,c_temp);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end


        if (x>1)
            x_temp = x-1;
            y_temp = y;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end

        if (x>1 && y<n)
            x_temp = x-1;
            y_temp = y+1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end

        if (y>1)
            x_temp = x;
            y_temp = y-1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end

        if (y<n)
            x_temp = x;
            y_temp = y+1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end

        if (x<m && y>1)
            x_temp = x+1;
            y_temp = y-1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end




        if (x<m)
            x_temp = x+1;
            y_temp = y;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end


        if (x<m && y<n)
            x_temp = x+1;
            y_temp = y+1;
            c_temp = (x_temp-1)*(n)+y_temp;
            if(matrix_game(x_temp,y_temp) == 0)
                hit_empty(x_temp,y_temp,c_temp);
            elseif (matrix_game(x_temp,y_temp) > 0 )
                hit_number(x_temp,y_temp,c_temp);
            end
        end
    end
    
end

