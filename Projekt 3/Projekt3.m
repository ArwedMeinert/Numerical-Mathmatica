clc
clear all
gu=0
go=pi
f=@(x) (2*sin(3*x)+5)./(4-3*cos(4*x));
for k = 1:100
 numerischeFlaeche(k)=integral(f,gu,go);
format long
flaecheTrapez(k)=trapezformel(f,gu,go,k);
fehlertrapez(k)=numerischeFlaeche(k)-flaecheTrapez(k);
flaecheSimpson(k)=simpson(f,gu,go,k);

fehlersimpson(k)=numerischeFlaeche(k)-flaecheSimpson(k);
endfor
subplot(1,2,1)
plot(1:100,numerischeFlaeche,'g','LineWidth',0.01)
axis([0 100 4 7])
hold on
plot(1:100,flaecheTrapez,'m')
plot(1:100,flaecheSimpson,'r')
subplot(1,2,2)
hold on
plot(1:100,fehlertrapez,'m')
axis([0 100 0 1])
plot(1:100,fehlersimpson,'r')
numerischeFlaeche2=integral(f,gu,go)
format long
j=1
for n=[10 15 20 50 100 1000]
flaecheTrapez2(j)=trapezformel(f,gu,go,n)
flaecheSimpson2(j)=simpson(f,gu,go,n)
fehlertrapez2(j)=numerischeFlaeche2-flaecheTrapez2(j)
fehlersimpson2(j)=numerischeFlaeche2-flaecheSimpson2(j)
j=j+1
endfor
hold off
