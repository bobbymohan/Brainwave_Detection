Notes on Matlab Code:
The generated Matlab Code, process the Raw EEG Signal and filters the features using AR and PCA and finds the type of Input.

1. This code can be used to any configurtion of EEG electrode System. 
2. It calculates the stastical Parameters and the overall base don the no. of electrodes. 
3. The processed data is fed into trained Neural Network to detect the type of input. 
4. The Neural Network is well trained by the avaiable EEG signals from Anxiety, Depression,Autism and Epilepsy. 
5. The program saves' the pre processed signal as ' Test Signal' and prompts the user to save the output file in csv format


Before Processing:
1. The user should know the Sampling Frequency of the test data.
2. The input should be in cxv/xls format.
3. No. of electrodes will be in Column and the recorded data in the Rows in the input file. 


After Processing:
1. The program prompts the user to enter filename to save the output data in csv format. 
2. The output file has Mean, Standard Deviation, RMS, AR Coefficients, Latent and Mu values in a column. 


Command Window:
1. Prompts for the Sampling Frequency @ the beginning. 
2. After the preprocessing, waits for user to enter any key . (paused to view the pre processed signal)
3. Display's Stastical Parameter, AR Modelling and Principle Component Analysis Output.
4. At last , in the command window it displays the type of data (1.Epilepsy; 2. Depression 3. Anxiety 4.Autism)

To process:
1. Input in xls.csv format
2. brainwave.m file. (Neural Network Function)
3. Toolbox:
    a.System Identification 
    b. Signal Processing
    c. Statistics and Machine Learning 
    d. Curve Fitting
    e. Deep Learning Toolbox *

Neural Network
To train network, free source data from PhysioNet (Epilepsy) and IEE DataPort (Autism,Depression & Anxiety) were downloaded and trained.
Training Details:
Epilepsy - 33 Subjects
Anxiety- 150 Subjects
Depression -50 Subjects
ADHD/Autism - 61 Subjects

Test data Characteristics
Anxiety - 128Hz
Depression - 128 Hz
ADHD - 256 Hz
Epilepsy - 173.61 Hz