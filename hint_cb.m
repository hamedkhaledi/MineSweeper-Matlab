function hint_cb()
%show a random cell as a hint
%
    global matrix_game;
    global matrix_flags ;
    global number_of_tiles_col;
    global number_of_tiles_row;
    global start
    % the number of cols and rows
    m = number_of_tiles_row;
    n = number_of_tiles_col;
    rows = [];
    cols = [];
    % start game if hint pressed for first time
    if start == false 
        StartTimer();
        start = true;
    end
    % find all unclicked number cell
    for x = 1:m
        for y = 1:n
            if ( matrix_game(x,y)> 0 && matrix_flags(x,y)==0)
                rows(end + 1) = x;
                cols(end + 1) = y;
            end
        end
    end
    % find a random hint
    if(size(rows,2)>0)
        i = randi([1,size(rows,2)],1);
        x = rows(i);
        y = cols(i);
        c = (x-1)*(n)+y;
        hit_number(x,y,c);
    end
end

