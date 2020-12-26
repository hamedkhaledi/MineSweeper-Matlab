function SetBoard(lvl)
        global matrix_game;
        
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


       
        RemainingBombs=num_of_bombs;
        num_of_flags=0;
        %tile size
        size_tile = 25;
        %tiles number
        number_of_tiles_row = game_width /size_tile;
        number_of_tiles_col = game_height /size_tile;
        time =0 ;
        CloseGUI();
        MineSweeper_GUI(fig_width,fig_height)
        
        
       
        
        matrix_game = deploy_mines (number_of_tiles_row,number_of_tiles_col,num_of_bombs);
        Put_buttons(number_of_tiles_row,number_of_tiles_col,size_tile);
        CreateMineDisplay();
        UpdateMineDisplay(num_of_bombs,num_of_flags);
        
        %show happy smiley at first
        Smiley_im_orig_Happy = imread('images/Happy.png');         
        Smiley_im_sized_Happy = imresize(Smiley_im_orig_Happy, [ fig_height*0.1 , fig_width*0.1]);       
        set(Smiley,'CData',Smiley_im_sized_Happy);
        
        SetTimer();
        
        disp(matrix_game)
           
      
end