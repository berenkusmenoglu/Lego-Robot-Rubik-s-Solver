function [] = ExecuteRobotMovements( instructions , myLego)


%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

holding = false;
[N,~] = size(instructions);
for i =1:N
%     if mod(i,5) == 0
%         i
%         pause(1);
%     end
    [~,M] = size(instructions{i});
    for a=1:M
        
        pause(0.3);
        if strcmp(instructions{i}{a}, ' Tumble ')
            
            if holding
                LetGo(myLego);
            end
            
            Tumble(myLego,1);
            
        elseif strcmp(instructions{i}{a}, ' Tumble2 ')
            
            if holding
                LetGo(myLego);
            end
            Tumble(myLego,2);
            
        elseif strcmp(instructions{i}{a}, ' Tumble3 ')
            
            if holding
                LetGo(myLego);
            end
            
            Tumble(myLego,3);
            
        elseif strcmp(instructions{i}{a},' RotateB ')
            if ~holding
                Hold(myLego);
            end
            LockRotateB(myLego,1);
            LetGo(myLego);
            
        elseif strcmp(instructions{i}{a},' RotateB2 ')
            
            if ~holding
                Hold(myLego);
            end
            LockRotateB(myLego,2);
            LetGo(myLego);
        elseif strcmp(instructions{i}{a},' RotateB'' ')
            
            if ~holding
                Hold(myLego);
            end
            LockRotateB(myLego,-1);
            LetGo(myLego);
            
        elseif strcmp(instructions{i}{a},' RotateB2'' ')
            
            if ~holding
                Hold(myLego);
            end
            LockRotateB(myLego,-2);
            LetGo(myLego);
            
        elseif strcmp(instructions{i}{a},' FreeRotateB ')
            if holding
                LetGo(myLego);
            end
            
            NoLockRotateB(myLego,1);
            
        elseif strcmp(instructions{i}{a},' FreeRotateB2 ')
            if holding
                LetGo(myLego);
            end
            
            NoLockRotateB(myLego,2);
            
        elseif strcmp(instructions{i}{a},' FreeRotateB'' ')
            if holding
                LetGo(myLego);
            end
            
            NoLockRotateB(myLego,-1);
            
        elseif strcmp(instructions{i}{a},' FreeRotateB2'' ')
            if holding
                LetGo(myLego);
            end
            
            NoLockRotateB(myLego,-2);
            
        end
    end
end

end

