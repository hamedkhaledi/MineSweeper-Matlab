function CloseGUI()
global timerobj;
global fig;
global BombControl
global Smiley;
        try
            % Delete timer
            StopTimer();
            delete(timerobj);
        catch 
            % Graceful exit
        end

        try
            % Delete the figure and BombContoler and Smiley
            delete(fig);
            delete(BombControl);
            delete(Smiley);
        catch 
            % Something strange happened to the figure handle, so
            % delete using gcf
            delete(gcf);
        end
    end