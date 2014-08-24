% This code was written by Anubhav Bimbisariye for convinience of SE367: Cognitive Science homework.
% Aim: We needed a dataset with a lot of images of various orientations of our face.
% pics with us facing left,right, straight, up down, some other angle etc.
% put pics seperately in folders corresponding to side, updown and other angle images.
% To achieve this easily, we took a video of our face looking here and there and used this code to extract
% 120 images for each facial activity.
% The code will run if three videos are put with names updown.mp4,side.mp4, round.mp4.

clc; % To clear screen.
obj1 = VideoReader('updown.mp4'); %read the video with face updown.
obj2 = VideoReader('side.mp4');%read the video with face going sideways(left right).
obj3 = VideoReader('round.mp4');%read the video with face going in round motion.
% Get Number of frames for each video.
numberOfFrames1 = obj1.NumberOfFrames;
numberOfFrames2 = obj2.NumberOfFrames;
numberOfFrames3 = obj3.NumberOfFrames;
% Unrestrict the size of image.
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% into how many pics does one want to divide the video.
% the number must be less than total frames.
qty=120;
% the path to this matlab file.
cd('C:\Users\anubhavmagic\Documents\Image-extractor\MATLAB');
% the sub folder where the images will be stored.
cd('krishna');
mkdir('updown');
cd('updown');
% calculates which frames to save as image.
K= (numberOfFrames1/qty)-1;
for i = 1:qty
    frame = read(obj1,K*i);
    name=strcat(num2str(i),'.jpg');
    %K*i % Just for output.
    imwrite(frame,name);
end
cd ('../')
mkdir('side')
cd('side');
K= (numberOfFrames2/qty)-1;
for i = 1:qty
    frame = read(obj2,K*i);
    name=strcat(num2str(i),'.jpg');
    %K*i
    imwrite(frame,name);
end
cd ('../')
mkdir('round')
cd('round');
K= (numberOfFrames3/qty)-1;
for i = 1:qty
    frame = read(obj3,K*i);
    name=strcat(num2str(i),'.jpg');
    %K*i
    imwrite(frame,name);
end

cd('C:\Users\anubhavmagic\Documents\MATLAB');
'Images extracted !!'