w=15;
y1=0.1;
y2=0.2;
k=500;
e=0.1;
A=2;

for x=10:0.1:20
    for a1=-1:0.1:1
        for a2=-1:0.1:1
            syms P Q b1 b2
            eq1 = a1*y1-b1*x+w^2*b1/x+3*k*b2*(a2^2+b2^2)/(4*x^3)+y2*a2-A;
            eq2 = a1*x-b1*y1-w^2*a1/x-3*k*a2*(a2^2+b2^2)/(4*x^3)+y2*b2;
            eq3 = a1*y1-b2*x+w^2*b1/x+(1+1/e)*(3*k*b2*(a2^2+b2^2)/(4*x^3)+y2*a2)-A;
            eq4 = b1*y1+a2*x-w^2*a1/x-(1-1/e)*(3*k*a2*(a2^2+b2^2)/(4*x^3)-y2*b2);
            eq5 = P-sqrt(a1^2+b1^2)/x;
            eq6 = Q-sqrt(a2^2+b2^2)/x;
            [P,Q]=solve([eq1==0,eq2==0,eq3==0,eq4==0,eq5==0,eq6==0],[P,Q]);
            if P ~=0
                disp(P)
            end
        end
    end
end