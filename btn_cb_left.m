%press left click on a tile
function btn_cb_left(Arg1,Arg2,u,x,y,matrix_game,m,n)
    switch matrix_game (x,y)
        case -1
            hit_mine(x,y,matrix_game);
            disp('bomb')
            disp(x)
            disp(y)
        case 0 
            hit_empty(x,y,matrix_game);
            disp('empty')
            disp(x)
            disp(y)
        otherwise 
            hit_number(x,y,matrix_game);
            disp('num')
            disp(x)
            disp(y)
    end
end

