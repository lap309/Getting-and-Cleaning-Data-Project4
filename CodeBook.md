CODEBOOK

The dataset is a human Activity Recognition database built from the recordings of 30 subjects. The experiment shows volunteers performing various activities such as walking, walking upstairs, walking downstairs, sitting, standing, and laying. A smartphone (Samsung Galaxy S II) was used to capture data from the differnt physical actions of each volunteer.

Each record in the dataset provides:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The code is provided to clean the data and replace certain columns names and keep the information for the mean and the standard deviation.
At the end of the code, there will be columns describing 
The Subject
Type of Activity
Body Accelerometer Means from our datasets
Body Accelerometer Standard Deviations from our datasets
Gravity Accelerometer Means
Gravity Accelerometer Standard Deviations
Body Accelerometer Jerk Signal Mean
Body Accelerometer Jerk Signal Standard Deviation
Gyroscope Mean
Cyroscope Standard Deviations
Gyroscope Jerk Signal Means
Gyroscope Jerk Signal Standard Deviations
Body Accelerator Euclidean norm Mean
Body Accelerator Euclidian norm standard deviations
Gravity Accelerometer Euclidean Norm Mean
Gravity Accelerometer Euclidean Norm Standard Deviation
Body Accelerometer Jerk Signal Euclidean Norm Mean
Body Accelerometer Jerk Signal Euclidean Norm Standard Deviation
Gyroscope Euclidean Norm Magnitude Mean
Gyroscope Euclidean Norm Standard Deviation
Gyroscope Jerk Signal Euclidean Norm Mean
Gyroscope Jerk Signal Euclidean Norm Standard Deviation
Frequency Body Accelerometer Mean
Frequency Body ACcelerometer Standard Deviation
Frequency Body Accelerometer Jerk Signal Mean
Frequency Body Accelerometer Jerk Signals Standard Deviation
Frequency Body Gyroscope Mean
Frequency Body Gyroscope Standard Deviation
Frequency Body Gyroscope Standard Deviation
Frequency Body Accelerometer Euclidean Norm Standard Deviation
Frequency Body ACcelerometer Euclidean Norm Mean
Frequency Body ACcelerometer Jerk Euclidean Norm Standard Deviation
Frequency Body Accelerometer Gyroscope Euclidean Norm Mean
Frequency Body Accelerometer Gyroscope Euclidean Norm Standard Deviation
Frequency BOdy Accelerometer Gyroscope Jerk Euclidean Norm Mean
Frequency Body Accelerometer Gyroscope Jerk Euclidean Norm Standard Deviation





