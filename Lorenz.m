function xd = Lorenz( x, p, r, b )
    xd = zeros(3,1);
    xd(1) = - p * x(1) + p * x(2);
    xd(2) = - x(1) * x(3) + r * x(1) - x(2);
    xd(3) = x(1) * x(2) - b * x(3);
end