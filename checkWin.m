function checkWin()
global hitNum;
global number_of_tiles_row;
global number_of_tiles_col;
global num_of_bombs;
global fig_height;
global fig_width;
global Smiley;
global matrix_game;
global matrix_flags;
global u;
m = size(matrix_game,1);
n = size(matrix_game,2);
if hitNum >= number_of_tiles_col*number_of_tiles_row - num_of_bombs
     	%if player has won Smiley changes and timer stops.
        Smiley_im_orig_Win = imread('images/Win.png');
        Smiley_im_sized_Win = imresize(Smiley_im_orig_Win, [ fig_height*0.1 , fig_width*0.1]);
        set(Smiley,'CData',Smiley_im_sized_Win);
        StopTimer()
        
        %show mines
        for i = 1:m
            for j = 1:n
                c = (i-1)*(n)+j;
                if (matrix_game(i,j) == -1 && matrix_flags(i,j) == 0)
                     bomb2_img = imresize(imread('images/bomb2.jpg'),[25,25]);
                     set(u(c),'cdata',bomb2_img);
                end
                matrix_game(i,j) = -3;
            end
        end
end

end
