function checkWin()
global hitNum;
global number_of_tiles_row;
global number_of_tiles_col;
global num_of_bombs;
global fig_height;
global fig_width;
global Smiley;
if hitNum >= number_of_tiles_col*number_of_tiles_row - num_of_bombs
     %%%%%%%%%
        Smiley_im_orig_Win = imread('images/Win.png');
        Smiley_im_sized_Win = imresize(Smiley_im_orig_Win, [ fig_height*0.1 , fig_width*0.1]);
        set(Smiley,'CData',Smiley_im_sized_Win);
        %%%%%%%%%%
end

end
