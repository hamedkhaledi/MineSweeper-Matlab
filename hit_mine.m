function hit_mine(x,y,u,c,m,n)
    global matrix_game;
    global matrix_flags;
    bomb_img = imresize(imread('images/bomb.jpg'),[25,25]);
    set(u(c),'cdata',bomb_img);
    
    for i = 1:m
        for j = 1:n
            c = (i-1)*(m)+j;
            if (matrix_game(i,j) == -1 && (i ~= x || j~=y) && matrix_flags(i,j) == 0)
                 bomb2_img = imresize(imread('images/bomb2.jpg'),[25,25]);
                 set(u(c),'cdata',bomb2_img);
            end
            matrix_game(i,j) = -2;
        end
    end
    %end game
end

