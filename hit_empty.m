function hit_empty(x,y,u,c,matrix_game)
    empty_img = imresize(imread('images/0.png'),0.125);
    set(u(c),'cdata',empty_img);
end

