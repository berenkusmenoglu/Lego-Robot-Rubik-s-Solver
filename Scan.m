start = cputime;
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
hold off;
FinishScan;
robotSol = TranslateSolution(solution);
finish =  cputime - start