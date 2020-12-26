function hint_cb()
    global matrix_game;
    global matrix_flags ;
    m = size(matrix_game,1);
    n = size(matrix_game,2);
    x = randi([1 m],1);
    y = randi([1 n],1);
    while (matrix_game(x,y)<=0 || matrix_flags(x,y)==1) 
        x = randi([1 m],1);
        y = randi([1 n],1);
    end
    c = (x-1)*(n)+y;
    hit_number(x,y,c);
end

