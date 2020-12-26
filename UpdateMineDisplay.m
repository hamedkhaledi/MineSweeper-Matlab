function UpdateMineDisplay(Mines,flagged)
global RemainingBombs;
            % Get number of remaining mines
            RemainingBombs = Mines - flagged;
            
            sc = uicontrol('Units', 'normalized', 'Style', 'text');
            set(sc, 'String', num2str(RemainingBombs), 'FontSize', 13,'backgroundcol',[1 .4 .4],'FontWeight','bold');
            set(sc, 'Position', [0.05,0.87, 0.3, 0.08]);
        end