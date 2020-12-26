function hit_number(x,y,c)
    global u;
    global matrix_game;
    global matrix_flags;
    global hitNum;
    if (matrix_flags(x,y) == 0) 
        s = strcat('images/',int2str(matrix_game(x,y)),'.png');
        num_img = imresize(imread(s),0.125);
        set(u(c),'cdata',num_img);
        hitNum = hitNum+1;
        matrix_game(x,y) = -2; % clicked
        checkWin();
    end
end

