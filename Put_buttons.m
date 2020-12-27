function Put_buttons(size_btn)
% put tiles on gui
%
%   size_btn:  size of each tile
%
    global matrix_flags;
    global u;
    global number_of_tiles_col;
    global number_of_tiles_row;
    % the number of cols and rows
    m = number_of_tiles_row;
    n = number_of_tiles_col;
    
    % set initial image for all tiles an fix them in their position
    unclick_img = imresize(imread('images/facingDown.png'),0.125);
    for x = 1:m
        for y = 1:n
            c = (x-1)*(n)+y;
            u(c) = uicontrol ('style', 'pushbutton');
            set(u(c) , 'position' , [size_btn*(y-1)+9,size_btn*(m-x)+8,size_btn,size_btn]);
            set(u(c),'cdata',unclick_img);
        end
    end
    
    % flags matrix(right click)
    matrix_flags = false(m, n);

    % define callbacks for tiles
    for x = 1:m
        for y = 1:n
            c = (x-1)*(n)+y;
            set(u(c), 'callback', {@btn_cb_left,x,y})
            set(u(c), 'ButtonDownFcn', {@btn_cb_right,x,y})
        end
    end
   
end

