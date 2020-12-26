function SetBoard(lvl)
% The function handles the GUI of game based on level
%
%   lvl - level of game {'BEGINNER', 'INTERMEDIATE', 'EXPERT'}
%

    % the main matrix Game
    global matrix_game;  
    % time
    global time; 
    % number of hidden bombs
    global RemainingBombs; 
    % the total of flags that user selected
    global num_of_flags; 
    % number of bombs in board
    global num_of_bombs;  
    % is game Started
    global start;   
    % level of game
    global level;
    % emoji button on above fig
    global Smiley;      
    % width of figure
    global fig_width;  
    % height of figure
    global fig_height;  
    % the numer of correct tiles user clicked
    global hitNum;     
    % the total of tiles in a row
    global number_of_tiles_row; 
    % the total of tiles in a col
    global number_of_tiles_col;
    
    % inital values
    hitNum=0;
    start = false;
    num_of_flags=0;
    time = 0 ;
    
    % check level of game and set configurations
    if  strcmp(lvl, 'BEGINNER')
        level = 'BEGINNER';
        % size of fig
        fig_width = 265;
        fig_height = 280;
        %number of bombs
        num_of_bombs = 10;
        % size of game
        game_width = 9*25;
        game_height = 10*25;
    elseif strcmp(lvl,'INTERMEDIATE')
        level = 'INTERMEDIATE';
        % size of fig
        fig_width = 440;
        fig_height = 460;
        %number of bombs
        num_of_bombs = 40;
        % size of game
        game_width = 15*25;
        game_height = 17*25;
    else
        level = 'EXPERT';
        % size of fig
        fig_width = 615;
        fig_height = 540;
        %number of bombs
        num_of_bombs = 99;
        % size of game
        game_width = 18*25;
        game_height = 24*25;
    end


    % initial RemainingBombs value
    RemainingBombs = num_of_bombs;
    
    
    %tile size
    size_tile = 25;
    %tiles number based on width and height of figure
    number_of_tiles_row = game_width /size_tile;
    number_of_tiles_col = game_height /size_tile;
    
    % close previous GUI
    CloseGUI();
    % and create new one
    MineSweeper_GUI(fig_width,fig_height)

    % build matrix game
    matrix_game = deploy_mines (number_of_tiles_row,number_of_tiles_col,num_of_bombs);
    % show buttons on GUI
    Put_buttons(number_of_tiles_row,number_of_tiles_col,size_tile);
    % show num of bombs on GUI
    CreateMineDisplay();
    % update number of bombs and mumber of flags
    UpdateMineDisplay(num_of_bombs,num_of_flags);

    %show happy smiley at first on top
    Smiley_im_orig_Happy = imread('images/Happy.png');         
    Smiley_im_sized_Happy = imresize(Smiley_im_orig_Happy, [ fig_height*0.1 , fig_width*0.1]);       
    set(Smiley,'CData',Smiley_im_sized_Happy);
    
	%show timer
    SetTimer();
    
    %show matrix on command window
    disp(matrix_game)


end