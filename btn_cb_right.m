%press left click on a tile
function btn_cb_right(inputArg1,inputArg2,u,x,y,m,n)
    global matrix_game;
    global matrix_flags;
    global num_of_flags;
    global num_of_bombs;
    global start;
    global RemainingBombs;
    start = true;
    c = (x-1)*(n)+y;
    switch matrix_flags (x,y)
        case 0
            if (matrix_game(x,y)>-2  && RemainingBombs>0 ) 
                flag_img = imresize(imread('images/flagged.png'),0.125);
                set(u(c),'cdata',flag_img);
                matrix_flags(x,y) = 1;
                num_of_flags= num_of_flags+1;
                RemainingBombs=RemainingBombs-1;
                UpdateMineDisplay(num_of_bombs,num_of_flags)
            end
        case 1 
             if (matrix_game(x,y)>-2) 
                flag_img = imresize(imread('images/facingDown.png'),0.125);
                set(u(c),'cdata',flag_img);
                matrix_flags(x,y) = 0;
                num_of_flags= num_of_flags-1;
                RemainingBombs=RemainingBombs+1;
                UpdateMineDisplay(num_of_bombs,num_of_flags)
             end
        otherwise 
           %ignore
    end
end

