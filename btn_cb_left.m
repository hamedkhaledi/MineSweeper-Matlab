function btn_cb_left(Arg1,Arg2,x,y)
% The function handles left click on tile
%
%   Arg1,Arg2 - extra arguments for callback
%   x - the position of tile clicked in row 
%   y - the position of tile clicked in column 
%
    % global values that explained in setBoard
    global matrix_game;
    global matrix_flags;
    global start;
    global fig_height;
    global fig_width;
    global Smiley;
    global number_of_tiles_col;
    % the number of cols
    n = number_of_tiles_col;
    % start game if first tile pressed
    if start == false 
        StartTimer();
        start = true;
    end
    % find number of tile pressed in board
    c = (x-1)*(n)+y;
    % check if game finished
    if(matrix_game(x,y) ~= -3) 
        % check if tile is available and set emoji face
        if (matrix_flags(x,y) == 1 || matrix_game(x,y)==-2)
            Smiley_im_orig_Surprised = imread('images/O.png');
            Smiley_im_Surprised = imresize(Smiley_im_orig_Surprised,...
                [ fig_height*0.1 , fig_width*0.1]);
            set(Smiley,'CData',Smiley_im_Surprised);
        else 
             Smiley_im_orig = imread('images/Happy.png'); 
             im_sized = imresize(Smiley_im_orig, [ fig_height*0.1 ,...
                 fig_width*0.1]);
             set(Smiley,'CData',im_sized);
        end
        % check whether matrix a flag is on tile or not
        if matrix_flags(x,y) == 0
            switch matrix_game (x,y)
                % oh , there is a bomb
                case -1 
                    hit_mine(x,y,c);
                % nice job, empty cell
                case 0 
                    hit_empty(x,y,c);
                % that cell cliked before ( do nothing )
                case -2
                    %ignore
                % a number cell clicked    
                otherwise 
                   hit_number(x,y,c);
            end
        end
    end
    % check whether game finished!
    checkWin();
end

