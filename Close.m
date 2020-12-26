function Close(this)
        %------------------------------------------------------------------
        % Syntax:       M.Close();
        %               Close(M);
        %               
        % Inputs:       M is a Minesweeper object
        %               
        % Description:  This function gracefully closes the Minesweeper GUI
        %               and deletes the Minesweeper object
        %------------------------------------------------------------------
        
            try
                % Save updated high score data
                HIGH_SCORES = this.highScores; %#ok
                save([this.dir '/scores.mat'],'HIGH_SCORES');
            catch %#ok
                % Graceful exit
            end
            
            % Delete all children
            for i = 1:length(this.children)
                try
                    % If child hasn't already been deleted
                    if ishandle(this.children(i))
                        % Delete ith child
                        delete(this.children(i));
                    end
                catch %#ok
                    % Graceful exit
                end
            end
            
            % Close the GUI
            this.CloseGUI();
            
            try
                % Delete this object
                delete(this);
            catch %#ok
                % Graceful exit
            end
        end