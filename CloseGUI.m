function CloseGUI(fig)
        try
            % Delete timer
            stop(this.timerobj);
            delete(this.timerobj);
        catch %#ok
            % Graceful exit
        end

        try
            % Delete the figure
            delete(fig);
        catch %#ok
            % Something strange happened to the figure handle, so
            % delete using gcf
            delete(gcf);
        end
    end