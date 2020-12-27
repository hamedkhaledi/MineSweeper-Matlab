function hit_mine(x,y,c)
% The function excute when a mine clicked
%
%   x - the position of tile clicked in row 
%   y - the position of tile clicked in column 
%   c - the number of tile that clicked ( for fast calculation )
%
    global u;
    global matrix_game;
    global matrix_flags;
    global Smiley;
    global fig_height;
    global fig_width;
       
    global number_of_tiles_col;
    global number_of_tiles_row;
    % the number of cols and rows
    m = number_of_tiles_row;
    n = number_of_tiles_col;
    % check flag
    if (matrix_flags(x,y) == 0) 
        % change pic of tile
        bomb_img = imresize(imread('images/bomb.jpg'),[25,25]);
        set(u(c),'cdata',bomb_img);
        
        %if the player loses , Smiley will be sad :( 
        Smiley_im_orig_sad = imread('images/Sad.png');
        Smiley_im_sized_sad = imresize(Smiley_im_orig_sad, [ fig_height*0.1 , fig_width*0.1]);
        set(Smiley,'CData',Smiley_im_sized_sad);
              
         %if the player loses,timer stops and all mines will be show
        for i = 1:m
            for j = 1:n
                c = (i-1)*(n)+j;
                if (matrix_game(i,j) == -1 && (i ~= x || j~=y) && matrix_flags(i,j) == 0)
                     bomb2_img = imresize(imread('images/bomb2.jpg'),[25,25]);
                     set(u(c),'cdata',bomb2_img);
                end
                matrix_game(i,j) = -3;
            end
        end
        %end game
        StopTimer();
        % bomb sound play
        [bomb_sound, Fs] = audioread('Sound/bomb1.mp3');
        sound(bomb_sound, Fs, 16);
        pause(1.5);
        clear sound;
    end
end

