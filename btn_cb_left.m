function btn_cb_left(Arg1,Arg2,x,y,m,n)
% The function handles left click on tile
%
%   Arg1,Arg2 - extra arguments for callback
%   x - the position of tile clicked in row 
%   y - the position of tile clicked in column 
%   m - the number of rows
%   n - the number of columns
%
    global matrix_game;
    global matrix_flags;
    global start;
    global fig_height;
    global fig_width;
    global Smiley;
    
    start = true;
    c = (x-1)*(n)+y;
    if(matrix_game(x,y) ~= -3) 
        if (matrix_flags(x,y) == 1 || matrix_game(x,y)==-2)
            Smiley_im_orig_Surprised = imread('images/O.png');
            Smiley_im_Surprised = imresize(Smiley_im_orig_Surprised, [ fig_height*0.1 , fig_width*0.1]);
            set(Smiley,'CData',Smiley_im_Surprised);
        else 
             Smiley_im_orig = imread('images/Happy.png');  % Needs to be true color, i.e. MxNx3
             im_sized = imresize(Smiley_im_orig, [ fig_height*0.1 , fig_width*0.1]);
             set(Smiley,'CData',im_sized);
        end

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
    end
end

