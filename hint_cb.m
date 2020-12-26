function hint_cb()
    global matrix_game;
    global matrix_flags ;
    m = size(matrix_game,1);
    n = size(matrix_game,2);
    flag = false;
    for x = 1:m
        for y = 1:n
            if (matrix_game(x,y)>0 && matrix_flags(x,y)==0)
                c = (x-1)*(n)+y;
                hit_number(x,y,c);
                flag = true;
                break;
            end
        end
        if (flag)
            break;
        end
    end
end

