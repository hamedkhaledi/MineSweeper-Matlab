function UpdateMineDisplay(Mines,flagged)
    global RemainingBombs;
    global BombControl
    % Get number of remaining mines
    RemainingBombs = Mines - flagged;


    set(BombControl, 'String', num2str(RemainingBombs), 'FontSize', 13,'backgroundcol',[1 .4 .4],'FontWeight','bold');
    set(BombControl, 'Position', [0.05,0.87, 0.3, 0.08]);
end