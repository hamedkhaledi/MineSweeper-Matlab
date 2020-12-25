%press left click on a tile
function btn_cb_right(inputArg1,inputArg2,u,x,y,m,n)
    global matrix_game;
    global matrix_flags;
    c = (x-1)*(m)+y;
    switch matrix_flags (x,y)
        case 0
            if (matrix_game(x,y)>-2) 
                flag_img = imresize(imread('images/flagged.png'),0.125);
                set(u(c),'cdata',flag_img);
                matrix_flags(x,y) = 1;
            end
        case 1 
             if (matrix_game(x,y)>-2) 
                flag_img = imresize(imread('images/facingDown.png'),0.125);
                set(u(c),'cdata',flag_img);
                matrix_flags(x,y) = 0;
             end
        otherwise 
           %ignore
    end
end

