function UpdateTime(this)
            % Increment time counter
            timeElapsed = timeElapsed + 1;
            
            % Update time display
            if (timeElapsed <= 9999)
                UpdateTimeDisplay();
            end
        end