function UpdateMineDisplay()
    global RemainingBombs;
    global BombControl
    % the total of flags that user selected
    global num_of_flags; 
    % number of bombs in board
    global num_of_bombs;
    % Get number of remaining mines
    RemainingBombs = num_of_bombs - num_of_flags;


    set(BombControl, 'String', num2str(RemainingBombs), 'FontSize', 13,'backgroundcol',[1 .4 .4],'FontWeight','bold');
    set(BombControl, 'Position', [0.05,0.87, 0.3, 0.08]);
end