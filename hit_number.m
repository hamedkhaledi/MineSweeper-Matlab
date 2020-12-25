function hit_number(x,y,u,c)
    global matrix_game;
    global matrix_flags;
    if (matrix_flags(x,y) == 0) 
        s = strcat('images/',int2str(matrix_game(x,y)),'.png');
        num_img = imresize(imread(s),0.125);
        set(u(c),'cdata',num_img);
        matrix_game(x,y) = -2; % clicked
    end
end

