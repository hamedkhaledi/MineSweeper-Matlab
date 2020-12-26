%press left click on a tile
function btn_cb_right(inputArg1,inputArg2,x,y,m,n)
    global matrix_game;
    global matrix_flags;
    global num_of_flags;
    global num_of_bombs;
    global start;
    global RemainingBombs;
    global u;
    global fig_height;
    global fig_width;
    global Smiley;
    if(matrix_game(x,y) ~= -3)
        start = true;
        c = (x-1)*(n)+y;
        if (matrix_game(x,y)==-2)
            Smiley_im_orig_Surprised = imread('images/O.png');
            Smiley_im_Surprised = imresize(Smiley_im_orig_Surprised, [ fig_height*0.1 , fig_width*0.1]);
            set(Smiley,'CData',Smiley_im_Surprised);
        else
             Smiley_im_orig = imread('images/Happy.png');  % Needs to be true color, i.e. MxNx3
             im_sized = imresize(Smiley_im_orig, [ fig_height*0.1 , fig_width*0.1]);
             set(Smiley,'CData',im_sized);
        end
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
end

