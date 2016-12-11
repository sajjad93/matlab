c2 = imread('hidden.bmp');
bc2=dec2bin(c2,8);
a2='';
a2=dec2bin(a2,8);
codelength=8;
x=1;
for i=1 : codelength
for k=1 : 8
	a2(i,k)=bc2(x,8);
	x=x+1;
end
end


a3=bin2dec(a2);
a3=setstr(a3);
a3=reshape(a3,1,codelength)
