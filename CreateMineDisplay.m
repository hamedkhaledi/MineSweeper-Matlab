function CreateMineDisplay()
    global num_of_bombs;
    global BombControl;

    BombControl = uicontrol('Units', 'normalized', 'Style', 'text');
    set(BombControl, 'String', num2str(num_of_bombs), 'FontSize', 13,'backgroundcol',[1 .4 .4],'FontWeight','bold');
    set(BombControl, 'Position', [0.05,0.87, 0.3, 0.08]);
end