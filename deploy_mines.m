function matrix_game = deploy_mines(m, n, k)
    % Deploy mines to a field (determine where to place the mines)
    %
    %   M:  the m x n logical matrix of mine indicators
    %   nnm:    the matrix of numbers of neighboring mines
    %
    %   This function uses the pure random way
    %

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