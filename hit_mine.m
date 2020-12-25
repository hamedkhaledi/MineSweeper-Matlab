function hit_mine(x,y,u,c)
    global matrix_game;
    bomb_img = imresize(imread('images/bomb.jpg'),[25,25]);
    set(u(c),'cdata',bomb_img);
end

