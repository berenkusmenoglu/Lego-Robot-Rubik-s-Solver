
a = 1;

if a == 1
    prompt = 'Press enter to scan side.';
    x = input(prompt);
    a = a+1;
    rgb1 = ReadValues(webcam(2));
end
if a == 2
    prompt = 'Press enter to scan side.';
    x = input(prompt);
    a = a+1;
    rgb2 = ReadValues(webcam(2));
end
if a == 3
    prompt = 'Press enter to scan side.';
    x = input(prompt);
    a = a+1;
    rgb3 = ReadValues(webcam(2));
end
if a == 4
    prompt = 'Press enter to scan side.';
    x = input(prompt);
    a = a+1;
    rgb4 = ReadValues(webcam(2));
end
if a == 5
    prompt = 'Press enter to scan side.';
    x = input(prompt);
    a = a+1;
    rgb5 = ReadValues(webcam(2));
end
if a == 6
    prompt = 'Press enter to scan side.';
    x = input(prompt);
    a = a+1;
    rgb6 = ReadValues(webcam(2));
end

FinishScan;
%clearvars rgb1 rgb2 rgb3 rgb4 rgb4 rgb5 rgb6 cubeValues Cube
prompt = 'Scanning Complete. Please put the cube into the robot.' ;
x = input(prompt);

prompt = 'Solving the cube...' ;
robotSol = TranslateSolution(solution);
ExecuteRobotMovements(robotSol, myLego);
 

