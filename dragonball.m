clear
clc
close all

%%
savepath = [cd,'\Pictures\3\'];
mkdir(savepath);
for fid = 1:259
    address = ['http://comic.dragonballcn.com/list/gain_1.php?did=0-5-15&fpp=10&fid=',num2str(fid)];
    [sourcefile, status] = urlread(address);
    expr = 'http://comic.dragonballcn.com/.*?.jpg';
    [datafile, ~]= regexp(sourcefile, expr, 'match', 'tokens');
    picname = ['picture-',num2str(fid),'.jpg'];
    disp('ÕýÔÚ±£´æÍ¼Æ¬...')
    [savestr,flag]=urlwrite(datafile{1},[savepath,picname],'timeout',15);
end