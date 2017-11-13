clear all;

[y,fs]= audioread('dsp_project.wav');
t=length(y)/fs;
x=floor(t);
k=x*fs;
p=y(:,2);
d=p(1:k,1);
u=x*50;
q=fs/50;
for r=1:u
f(r)=ZCR(d((r-1)*q+1:r*q));
end
for r=1:u
if f(r)<0.08
a(((r-1)*q+1):r*q)=d(((r-1)*q+1):r*q);
end
end

