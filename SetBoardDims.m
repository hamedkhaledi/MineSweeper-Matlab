function SetBoardDims(fig,lvl)
        global matrix_game;
        global matrix_flags ;
        global time;
        global RemainingBombs;
        global num_of_flags;
        global num_of_bombs;
        global start;
        global level;
        global Smiley;
        global fig_height;
        global fig_width;
        global hitNum;
        global number_of_tiles_row;
        global number_of_tiles_col;
        hitNum=0;
        start = false;
        
        if  strcmp(lvl, 'BEGINNER')
            level = 'BEGINNER';
            % size of fig
            fig_width = 240;
            fig_height = 280;
            %number of bombs
            num_of_bombs = 10;
            % size of game
            game_width = 9*25;
            game_height = 9*25;
        elseif strcmp(lvl,'INTERMEDIATE')
            level = 'INTERMEDIATE';
            % size of fig
            fig_width = 415;
            fig_height = 490;
            %number of bombs
            num_of_bombs = 40;
            % size of game
            game_width = 16*25;
            game_height = 16*25;
        else
            level = 'EXPERT';
            % size of fig
            fig_width = 760;
            fig_height = 485;
            %number of bombs
            num_of_bombs = 99;
            % size of game
            game_width = 16*25;
            game_height = 30*25;
        end


        
        % size of board game
        size_row = 20;
        size_col = 20;
        RemainingBombs=num_of_bombs;
        num_of_flags=0;
        %tile size
        size_tile = 25;
        %tiles number
        number_of_tiles_row = game_width /size_tile;
        number_of_tiles_col = game_height /size_tile;
        time =0 ;
        CloseGUI(fig);
        MineSweeper_GUI(fig_width,fig_height)
        
        
       
        
        matrix_game = deploy_mines (number_of_tiles_row,number_of_tiles_col,num_of_bombs);
        Put_buttons(number_of_tiles_row,number_of_tiles_col,size_tile);
        UpdateMineDisplay(num_of_bombs,num_of_flags)
        %%%%%%%%%
        Smiley_im_orig_Happy = imread('images/Happy.png');  % Needs to be true color, i.e. MxNx3
        % im_sized = imresize(im_orig,[35,35]); % size of the button
        Smiley_im_sized_Happy = imresize(Smiley_im_orig_Happy, [ fig_height*0.1 , fig_width*0.1]);
        % create a pushbtton ( adapt it to your needs)
        set(Smiley,'CData',Smiley_im_sized_Happy);
        %%%%%%%%%%
        disp(matrix_game)
           
      
        end
        