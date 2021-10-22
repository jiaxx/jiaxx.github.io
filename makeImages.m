

function makeImages(sourceImg)

% load image data
%%
img = imread(sourceImg); 

% is it too wide or too tall? 
desRatio = 1920/1080; 
thisRatio = size(img,2)/size(img,1); 

% will fill with background color determined as the mode of all edge pixels
bckgcolor = mode([squeeze(img(1,:,:)); ...
    squeeze(img(end,:,:));...
    squeeze(permute(img(:,1,:),[2 1 3])); ...
    squeeze(permute(img(:,end,:),[2 1 3]))],1);
bckgcolor = permute(bckgcolor, [1 3 2]);
if thisRatio>desRatio % too wide, need to add rows
    desRows = ceil(size(img,2)/desRatio); 
    tempimg = repmat(bckgcolor, desRows, size(img,2), 1);
    idx = floor((desRows-size(img,1))/2);
    tempimg(idx:idx+size(img,1)-1,:,:) = img; 
    img = tempimg;
elseif thisRatio<desRatio % too tall, need to add columns
    desCols = ceil(size(img,1)*desRatio);
    tempimg = repmat(bckgcolor, size(img,1), desCols, 1);
    idx = floor((desCols-size(img,2))/2);
    tempimg(:,idx:idx+size(img,2)-1,:) = img; 
    img = tempimg;
end

%%
[d,imName] = fileparts(sourceImg);
[~,dest] = fileparts(d);

outputDir = fullfile('assets', 'img', dest); 

targets = struct(); 
targets(end).width = 230; targets(end).suffix = 'placehold';
targets(end+1).width = 535; targets(end).suffix = 'thumb';
targets(end+1).width = 535*2; targets(end).suffix = 'thumb@2x';
targets(end+1).width = 575; targets(end).suffix = 'xs';
targets(end+1).width = 767; targets(end).suffix = 'sm';
targets(end+1).width = 991; targets(end).suffix = 'md';
targets(end+1).width = 1999; targets(end).suffix = 'lg';
targets(end+1).width = 1920; targets(end).suffix = '';

qual = 70; 
%%

origW = size(img,2); 
for ii = 1:numel(targets)
    if ~isempty(targets(ii).suffix)
        fn = [imName '_' targets(ii).suffix '.jpg']; 
    else 
        fn = [imName '.jpg']; 
    end
    imgR = imresize(img, targets(ii).width/origW); 
    imwrite(imgR, fullfile(outputDir,fn), 'JPEG', 'Quality', qual);
end