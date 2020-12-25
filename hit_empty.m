function hit_empty(x,y,u,c,m,n)
    global matrix_game;
    matrix_game(x,y) = -2;
    empty_img = imresize(imread('images/0.png'),0.125);
    set(u(c),'cdata',empty_img);
    if (x>1 && y>1 && matrix_game(x-1,y-1) == 0)
        x_temp = x-1;
        y_temp = y-1;
        c_temp = (x_temp-1)*(m)+y_temp;
        hit_empty(x_temp,y_temp,u,c_temp,m,n);
    end
    
    
    if (x>1 && matrix_game(x-1,y) == 0)
        x_temp = x-1;
        y_temp = y;
        c_temp = (x_temp-1)*(m)+y_temp;
        hit_empty(x_temp,y_temp,u,c_temp,m,n);
    end
    
    if (x>1 && y<n && matrix_game(x-1,y+1) == 0)
        x_temp = x-1;
        y_temp = y+1;
        c_temp = (x_temp-1)*(m)+y_temp;
        hit_empty(x_temp,y_temp,u,c_temp,m,n);
    end
  
    if (y>1 && matrix_game(x,y-1) == 0)
        x_temp = x;
        y_temp = y-1;
        c_temp = (x_temp-1)*(m)+y_temp;
        hit_empty(x_temp,y_temp,u,c_temp,m,n);
    end
    
    if (y<n && matrix_game(x,y+1) == 0)
        x_temp = x;
        y_temp = y+1;
        c_temp = (x_temp-1)*(m)+y_temp;
        hit_empty(x_temp,y_temp,u,c_temp,m,n);
    end
        
    if (x<m && y>1 && matrix_game(x+1,y-1) == 0)
        x_temp = x+1;
        y_temp = y-1;
        c_temp = (x_temp-1)*(m)+y_temp;
        hit_empty(x_temp,y_temp,u,c_temp,m,n);
    end

   
    
            
    if (x<m && matrix_game(x+1,y) == 0)
        x_temp = x+1;
        y_temp = y;
        c_temp = (x_temp-1)*(m)+y_temp;
        hit_empty(x_temp,y_temp,u,c_temp,m,n);
    end
    
    
    if (x<m && y<n && matrix_game(x+1,y+1) == 0)
        x_temp = x+1;
        y_temp = y+1;
        c_temp = (x_temp-1)*(m)+y_temp;
        hit_empty(x_temp,y_temp,u,c_temp,m,n);
    end
   
    
end

