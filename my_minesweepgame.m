MineSweeper_GUI()
% size of board game
size_row = 20;
size_col = 20;
% size of fig
fig_width = 600;
%number of bombs
num_of_bombs = 10;
% size of game
game_width = 500;
game_height = 500;

Put_buttons(game_width,game_height);
matrix_game = deploy_mines (size_row,size_col,num_of_bombs);

disp(matrix_game)