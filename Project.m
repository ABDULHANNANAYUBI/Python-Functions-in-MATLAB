% For checking the version of python
pyversion
pyenv('Version','D:\Python\python.exe') % here the path of the python.exe
pathToSpeech = fileparts(which('PythonFunction.py'));
if count(py.sys.path, pathToSpeech) == 0
    insert(py.sys.path,int32(0), pathToSpeech);
end

% Second file of python function 
pathToSpeech = fileparts(which('PythonFunctionV2.py'));
if count(py.sys.path, pathToSpeech) == 0
    insert(py.sys.path,int32(0), pathToSpeech);
end

%python user Defined Function
pyOut = py.try.SayHi(2);
disp(pyOut);
rew = py.try.revTheString('Hello');
disp(rew)

%Python function 

disp(py.math.sqrt(22));


sampleRate = 1600;
numChannel = 1;
recorded = audiorecorder(sampleRate,8,numChannel);

disp('Hearing...');
recordblocking(recorded,1);
audioData = getaudiodata(recorded, 'uint8');

plot(audioData);





