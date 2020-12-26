
function SetTimer()
    global timeElapsed;
    global timeControl;
    global timerobj;

    timeElapsed=0;
         timeControl = uicontrol('Units', 'normalized', 'Style', 'text');
        set(timeControl, 'string', "000", 'FontSize', 13,'backgroundcol',[1 .4 .4],'FontWeight','bold');
        set(timeControl, 'Position', [0.65,0.87, 0.3, 0.08]);


    timerobj = timer('TimerFcn',@(s,e)UpdateTime(), ...
                                      'ExecutionMode','FixedRate', ...
                                      'Period',1, ...
                                      'StartDelay',1);


end
function UpdateTimeDisplay()
    global timeElapsed;
    global timeControl;

    % Get current time elapsed
    sec = timeElapsed;

    secstr = sprintf('%03d',sec);         
    set(timeControl, 'string', secstr, 'FontSize', 13,'backgroundcol',[1 .4 .4],'FontWeight','bold');
    set(timeControl, 'Position', [0.65,0.87, 0.3, 0.08]);

            
end
function UpdateTime()
    global timeElapsed;
    % Increment time counter
    timeElapsed = timeElapsed + 1;

    % Update time display
    if (timeElapsed <= 999)
        UpdateTimeDisplay();
    end
end
