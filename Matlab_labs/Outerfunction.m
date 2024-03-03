function Outer = Outerfunction
         function Inner = Innerfunction(A,B)
                  result = A + B;
                  disp(result);
         end  
         result = Outer(8,9);
         disp(result);
end
 