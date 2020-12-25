% GUI base
function MineSweeper_GUI(fig_width,fig_height)
     fig = figure('Position' , [400,400,fig_width,fig_height],...
    'Resize','off',...
    'MenuBar','none',...
    'Name','MineSweeper',...
    'NumberTitle','off');
    axis tight; 
    ha = axes('units','normalized', ...
            'position',[0 0 1 1]);
    frame_img = imresize(imread('images/frame.png'),[fig_width,fig_height]);
    uistack(image(frame_img),'bottom');
   
    
    
end

