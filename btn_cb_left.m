%press left click on a tile
function btn_cb_left(Arg1,Arg2,x,y,m,n)
    global matrix_game;
    global matrix_flags;
    global start;
    
    start = true;
    c = (x-1)*(n)+y;
    if matrix_flags(x,y) == 0
        switch matrix_game (x,y)
            case -1
                hit_mine(x,y,c,m,n);
            case 0 
                hit_empty(x,y,c,m,n);
            case -2
                %ignore
            otherwise 
               hit_number(x,y,c);
        end
    end
    
    checkWin();
end

