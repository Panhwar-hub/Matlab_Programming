  clear
    clc
    marks_percent = 0;%Variable to calculate percentaage 
    marks = 0;%Marks to be held
    %Below is string array to hold Names of subjects
    subject = ['                     ';'                     ';'                     ';'                     ';'                     ';'                     ';'                     ';'                     '];
    
    t_no_subjects=input('Please, Enter number of Subjects:');%Asking Total Subjects
    arr_marks=1:t_no_subjects;%array of size t_no_stud
    arr_t_marks=1:t_no_subjects;%array of size t_no_stud
    for i = 1:t_no_subjects;
        
       name = input('Please,Enter name of the subject: ','s');%reading String input
       temp = length(name);%calculating length of user input
       subject(i,[1:temp]) = name;%storing UserInput in array
       
       arr_marks(i) = input('Please,Enter your marks in this subject: ');%Reading Student's total marks
      
       arr_t_marks(i) = input('Please,Enter your marks in this subject: ');%Reading Subject total marks
       
    end
        
    for j = 1:t_no_subjects;
        
        [subject(1,[1:j]) ' ' int2str(arr_marks(j) ' '  int2str(arr_t_marks(j))]
         
    end