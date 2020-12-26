function hint_cb()
    global matrix_game;
    global matrix_flags ;
    m = size(matrix_game,1);
    n = size(matrix_game,2);
    rows = [];
    cols = [];
    for x = 1:m
        for y = 1:n
            if ( matrix_game(x,y)> 0 && matrix_flags(x,y)==0)
                rows(end + 1) = x;
                cols(end + 1) = y;
            end
        end
    end
    if( size(rows,2)>0)
        i = randi([1,size(rows,2)],1);
        x = rows(i);
        y = cols(i);
        c = (x-1)*(n)+y;
        hit_number(x,y,c);
    end
end

