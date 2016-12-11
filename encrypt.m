c = imread('test.bmp');
    message = 'azaruniv';

bc=dec2bin(c,8);
bm=dec2bin(abs(message),8);

mlength=length(message);
bmlength=length(bm);
x=1;
for i=1 : mlength
for k=1 : 8
	bc(x,8)=bm(i,k);
	x=x+1;
end
end

height=size(c,1);
width=size(c,2);


dc=bin2dec(bc);
dc=reshape(dc,height,width,3);

%codes instead of reshape:
o=1;
a=zeros(height,width,3);
for r=1 : 3
    for z=1 : width
     for y=1 : height
         a(y,z,r)=dc(o);
         o=o+1;
     end
    end
end



imwrite(uint8(dc), 'hidden.bmp');
