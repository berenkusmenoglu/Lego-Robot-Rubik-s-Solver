classdef CubePiece
    %UNTITLED3 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        posX      % 1, 2, 3
        posY      % 1, 2, 3
        color     % red, blue, orange, yellow, white, green
        faceCode  % R,L,U,D,F,B
        faceNo    % 1, 2, 3, 4, 5, 6
    end
    
    methods
        function obj = CubePiece(x,y,col)
            obj.posX = x;
            obj.posY = y;
            obj.color = col;
            obj.faceNo = x;
            obj.faceCode = obj.getFaceCode(x);
            
        end
        
        function code = getFaceCode(~,num)
            if num == 1
                code = 'R';
            elseif num == 2
                code = 'L';
            elseif num == 3
                code = 'U';
            elseif num == 4
                code = 'D';
            elseif num == 5
                code = 'F';
            elseif num == 6
                code = 'B';
            end
        end
        
    end
    
end

