reverse(List,Result) :-
    % call the accumulator method with the list and an empty placeholder list
    reverse(List,[],Result).

%  reverse/3
%  reverse(List,Accumulator,ReverseList)
%  
%  >> stop rule for recursion
%  -- checks whether initial List is empty (aka the reversing process is done)
%  -- returns the ReversedList if completed, otherwise carry ReverseList over throughout the next iteration
reverse([],ReversedList,ReversedList).

% actual reversing method
reverse([Head|Tail],RestTail,ReverseList) :-
     reverse(Tail,[Head|RestTail],ReverseList).