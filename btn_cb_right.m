function btn_cb_right(inputArg1,inputArg2,x,y)
% The function handles right click on tile
%
%   Arg1,Arg2 - extra arguments for callback
%   x - the position of tile clicked in row 
%   y - the position of tile clicked in column 
%
    % global values that explained in setBoard
    global matrix_game;
    global matrix_flags;
    global num_of_flags;
    global start;
    global RemainingBombs;
    global fig_height;
    global fig_width;
    global Smiley;
    global number_of_tiles_col;
    % the number of cols
    n = number_of_tiles_col;
    % the matrix of callbacks for tiles
    global u;
    % check if game is finished
    if(matrix_game(x,y) ~= -3)
         % start game if first tile pressed
        if start == false 
            StartTimer();
            start = true;
        end
        % find number of tile pressed in board
        c = (x-1)*(n)+y;
         % check if tile is available and set emoji face
        if (matrix_game(x,y)==-2)
            Smiley_im_orig_Surprised = imread('images/O.png');
            Smiley_im_Surprised = imresize(Smiley_im_orig_Surprised, [ fig_height*0.1 , fig_width*0.1]);
            set(Smiley,'CData',Smiley_im_Surprised);
        else
             Smiley_im_orig = imread('images/Happy.png');  
             im_sized = imresize(Smiley_im_orig, [ fig_height*0.1 , fig_width*0.1]);
             set(Smiley,'CData',im_sized);
        end
        %check if button available
        if (matrix_game(x,y)>-2)
            % check whether matrix a flag is on tile or not and change it
            switch matrix_flags (x,y)
                % there is'nt any flag
                case 0
                    % if flag is available then change face of tile
                    if (RemainingBombs>0 ) 
                        flag_img = imresize(imread('images/flagged.png'),0.125);
                        set(u(c),'cdata',flag_img);
                        matrix_flags(x,y) = 1;
                        % increase number of available flags
                        num_of_flags= num_of_flags+1;
                        RemainingBombs=RemainingBombs-1;
                        % update GUI
                        UpdateMineDisplay()
                    end
                % Hi! flag
                case 1 
                    flag_img = imresize(imread('images/facingDown.png'),0.125);
                    set(u(c),'cdata',flag_img);
                    matrix_flags(x,y) = 0;
                    % decrease number of available flags
                    num_of_flags= num_of_flags-1;
                    RemainingBombs=RemainingBombs+1;
                    UpdateMineDisplay()
                otherwise 
                   %ignore
            end
        end
    end
end

