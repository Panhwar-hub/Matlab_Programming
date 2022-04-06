% Name:    Parvez Ali
% CMS ID:  033-18-0034
% Subject: Signal and System
disp('Welcome to the social media graph');
disp('Enter your choice to view the user graph');
c=input('1: for facebook 2: for Instagram 3:for Twitter 4:want to see all together 5:user comparison 6:revenue comparison:-');
switch c
    case 1
        disp('Welcome to the facebook user graph from 2012-2018');
        subplot(2,1,1)
        bar(VarName2,VarName3,'Red');
        title 'Facebook user growth graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Groth in millins';
        subplot(2,1,2)
        bar(VarName11,VarName12,'Blue');
        title 'Facebook per Year Revenue graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Revenue in millins';
        
    case 2
        disp('Welcome to the Instagram user graph from 2012-2018');
        subplot(2,1,1)
        bar(VarName5,VarName6,'Red');
        title 'Instagram user growth graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Groth in millins';
        subplot(2,1,2)
        bar(VarName14,VarName15,'Blue');
        title 'Instagram per Year Revenue graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Revenue in millins';
        
    case 3
        disp('Welcome to the Twitter user graph from 2012-2018');
subplot(2,1,1)
        bar(VarName8,VarName9,'Red');
        title 'Twitter user growth graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Groth in millins';
        subplot(2,1,2)
        bar(VarName17,VarName18,'Blue');
        title 'Twitter per Year Revenue graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Revenue in millins';
        
    case 4
        disp('These are the complete graphs');
        subplot(3,2,1)
        bar(VarName2,VarName3)
        title 'Facebook user growth graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Groth in millins';
        subplot(3,2,2)
        bar(VarName11,VarName12)
        title 'Facebook per Year Revenue graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Revenue in millins';
        subplot(3,2,3)
        bar(VarName5,VarName6)
        title 'Instagram user growth graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Groth in millins';
        subplot(3,2,4)
        bar(VarName14,VarName15)
        title 'Instagram per Year Revenue graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Revenue in millins';
        subplot(3,2,5)
        bar(VarName8,VarName9)
        title 'Twitter user growth graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Groth in millins';
        subplot(3,2,6)
        bar(VarName17,VarName18)
        title 'Twitter per Year Revenue graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Revenue in millins';
    case 5
        plot(VarName2,VarName3,'Red',VarName2,VarName6,'Blue',VarName2,VarName9,'Black');
        title 'Social Media user growth Compareing graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Groth in millins';
        legend('Facebook','Instagram','Twitter')
    case 6
         plot(VarName2,VarName12,'Red',VarName2,VarName15,'Blue',VarName2,VarName18,'Black');
        title 'Social Media per Year Revenue Compareing graph';
        xlabel 'Time Period 2012-2018';
        ylabel 'Revenue in millins';
        legend('Facebook','Instagram','Twitter')
    otherwise
       disp('Incorrect input');
end 