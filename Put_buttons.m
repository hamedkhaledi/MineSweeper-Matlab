function Put_buttons(width,height)
    count = 1;
    size_btn = 1;
    size_row = width/size_btn;
    size_col = height/size_btn;
    for x = 0:size_row - 1
        for y = 0:size_col - 1
            u(count) = uicontrol ('style', 'pushbutton');
            set(u(count) , 'position' , [size_btn*x,size_btn*y,size_btn,size_btn])
            count = count + 1;
        end
    end
    
   
end

