function hit_mine(x,y,c,m,n)
    global u;
    global matrix_game;
    global matrix_flags;
    global Smiley;
    global fig_height;
    global fig_width;
    if (matrix_flags(x,y) == 0) 
        bomb_img = imresize(imread('images/bomb.jpg'),[25,25]);
        set(u(c),'cdata',bomb_img);
        
        %%%%%%%%%
        Smiley_im_orig_sad = imread('images/Sad.png');
        Smiley_im_sized_sad = imresize(Smiley_im_orig_sad, [ fig_height*0.1 , fig_width*0.1]);
        set(Smiley,'CData',Smiley_im_sized_sad);
        %%%%%%%%%%
        
        
        
        for i = 1:m
            for j = 1:n
                c = (i-1)*(n)+j;
                if (matrix_game(i,j) == -1 && (i ~= x || j~=y) && matrix_flags(i,j) == 0)
                     bomb2_img = imresize(imread('images/bomb2.jpg'),[25,25]);
                     set(u(c),'cdata',bomb2_img);
                end
                matrix_game(i,j) = -3;
            end
        end
        %end game
    end
end

