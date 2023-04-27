A=zeros(4,40);
P=zeros(4,40);

for i=1:1:40
    a1=a(i+2000*(i-1):i*2000);
    a1f=fft(a1);
    [amp,pos]=findpeaks(abs(a1f),'MinPeakHeight',2000);
    for j=1:1:4
        A(j,i)=amp(j);
        P(j,i)=pos(j); 
    end


end

C=[P' A'];