testCount = 1;

for a=1:20
    sum = 0;
    t = cputime;
    for i =1: testCount
        R = rubgen(3,a);
        [~, sol] = rubsolve(R);
        %[sol] = Solve45(R);
        sum = sum + length(sol);
        clearvars sol;
    end
    TimeTaken(a) = cputime-t;
    Average(a) = sum/testCount;
end

Average = Average';
TimeTaken = TimeTaken';