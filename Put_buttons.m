function Put_buttons(m,n,matrix_game,size_btn)
    count = 1;
    unclick_img = imresize(imread('images/facingDown.png'),0.125);
    for x = 1:m
        for y = 1:n
            c = (x-1)*(m)+y;
            u(c) = uicontrol ('style', 'pushbutton');
            set(u(c) , 'position' , [size_btn*(y-1),size_btn*(m-x),size_btn,size_btn]);
            set(u(c),'cdata',unclick_img);
            count = count + 1;
            disp((x-1)*(m)+y)
        end
    end
    
    for x = 1:m
        for y = 1:n
            set(u((x-1)*(m)+y), 'callback', {@btn_cb_left,u,x,y,matrix_game,m,n})
            set(u((x-1)*(m)+y), 'ButtonDownFcn', {@btn_cb_right,u,x,y,matrix_game,m,n})
        end
    end
   
end

