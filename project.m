disp('Welcome to the social media graph');
disp('Enter your choice to view the user graph');
c=input('1: for facebook 2: for Instagram 3:for Twitter :-');
switch c
    case 1
        disp('Welcome to the facebook user graph from 2012-2018');
        plot(VarName2,VarName3);
        title 'Facebook user growth graph';
    case 2
        disp('Welcome to the Instagram user graph from 2012-2018');
        plot(VarName5,VarName6);
        title 'Instagram user growth graph';
    case 3
        disp('Welcome to the Twitter user graph from 2012-2018');
        plot(VarName8,VarName9);
        title 'Twitter user groth graph';
    otherwise
        disp('Incorrect input');
end 