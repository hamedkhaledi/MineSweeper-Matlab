function Put_buttons(m,n,size_btn)
    global matrix_flags;

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

    for x = 1:m
        for y = 1:n
            c = (x-1)*(n)+y;
            set(u(c), 'callback', {@btn_cb_left,u,x,y,m,n})
            set(u(c), 'ButtonDownFcn', {@btn_cb_right,u,x,y,m,n})
        end
    end
   
end

