function matrix_game = deploy_mines()
    % Deploy mines to a field (determine where to place the mines)
    %   This function uses the pure random way
    %
    global num_of_bombs; 
    global number_of_tiles_col;
    global number_of_tiles_row;
    % the number of cols and rows
    m = number_of_tiles_row;
    n = number_of_tiles_col;
    k = num_of_bombs; 
    M = false(m, n);
    M(randsample(m * n, k)) = 1;

    matrix_game = conv2(double(M), [1 1 1; 1 0 1; 1 1 1], 'same');
    
    for row = 1:m
        for col = 1:n
            if M (row,col) == 1
                matrix_game (row,col) = -1;
            end
        end
    end
 end