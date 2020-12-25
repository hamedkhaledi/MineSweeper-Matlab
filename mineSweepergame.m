global matrix_game;
% size of board game
size_row = 20;
size_col = 20;
% size of fig
fig_width = 200;
fig_height = 300;
%number of bombs
num_of_bombs = 10;
% size of game
game_width = 200;
game_height = 200;
%tile size
size_tile = 25;
%tiles number
number_of_tiles_row = game_width /size_tile;
number_of_tiles_col = game_height /size_tile;

MineSweeper_GUI(fig_width,fig_height)
matrix_game = deploy_mines (number_of_tiles_row,number_of_tiles_col,num_of_bombs);
Put_buttons(number_of_tiles_row,number_of_tiles_col,matrix_game,size_tile);


disp(matrix_game)