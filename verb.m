clc;clear
t=0:0.001:2.5;
y1=(tanh(((5./4).*t))./((5./4).*t))*100;
%������
y2=(besseli(1,2.*t)./besseli(0,2.*t))./t.*100;

y3=(tanh((9./4).*t)./((9./4).*t)).*100;
plot(t,y1,'r','linewidth',1.5)
hold on
plot(t,y2,'b','linewidth',1.5)
hold on 
plot(t,y3,'black','linewidth',1.5)
ylabel('$\eta_{f}/\%$','FontSize',20,'Interpreter','latex');

% ���� xlabel
xlabel('$(H'')^{3/2}[h/\lambda A_{L}]^{1/2}$','FontSize',20,...
    'Interpreter','latex');

box(axes1,'on');
% ������������������
set(axes1,'FontSize',20,'XGrid','on','YGrid','on');
% ���� textarrow
annotation(figure1,'textarrow',[0.294921875 0.387890625],...
    [0.498927805575411 0.467476769120801],'String',{'���Ƭ'},'FontSize',20);

% ���� textarrow
annotation(figure1,'textarrow',[0.646484375000001 0.614843750000002],...
    [0.612580414581845 0.553252323087921],'String','�����γ�Ƭ','FontSize',20);

% ���� textarrow
annotation(figure1,'textarrow',[0.56015625 0.565234375],...
    [0.438884917798427 0.529664045746964],'String',{'�Ƚ���ֱ��Ƭ'},'FontSize',20);

