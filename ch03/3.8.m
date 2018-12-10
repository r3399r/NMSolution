function grade = ch3_08(score)
% Problem 3.8
% input score then get grade
if score <= 100 && score >= 90
    grade = 'A';
elseif score < 90 && score >= 80
    grade = 'B';
elseif score < 80 && score >= 70
    grade = 'C';
elseif score < 70 && score >= 60
    grade = 'D';
elseif score < 60
    grade = 'F';
else
    error('score should be between 0 and 100.')
end
