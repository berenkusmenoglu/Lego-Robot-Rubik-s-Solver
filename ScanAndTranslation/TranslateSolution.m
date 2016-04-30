function [ robotSol ] = TranslateSolution( solution )


up = 5;
face = 1;

%robotSol = zeros(m,3);
for a = 1: length(solution)
    
    
    instructions = TranslateMove(solution(a), face, up);
   
    aSolution = GetRobotMove(instructions)

    [face, up] = UpdateFaces(aSolution, face,up);
    
   
    robotSol{a,:} = aSolution;
   
end

end

