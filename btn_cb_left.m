%press left click on a tile
function btn_cb_left(Arg1,Arg2,u,x,y,matrix_game,m,n)
    c = (x-1)*(m)+y;
    switch matrix_game (x,y)
        case -1
            hit_mine(x,y,u,c,matrix_game);
        case 0 
            hit_empty(x,y,u,c,matrix_game);
        otherwise 
            hit_number(x,y,u,c,matrix_game);
    end
end

