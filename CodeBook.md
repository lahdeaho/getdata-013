## The CodeBook

### Variables in the output dataset
run_analysis.R script output file which contains averages of different variables.
The variables are described in the following list:

1.  Subject = Subject identifier
2.  Activity = Activity label
3.  tBodyAcc-mean()-X = Average mean of body acceleration in time by x-axis
4.  tBodyAcc-mean()-Y = Average mean of body acceleration in time by y-axis
5.  tBodyAcc-mean()-Z = Average mean of body acceleration in time by z-axis
6.  tBodyAcc-std()-X  = Average standard deviation of body acceleration in time by x-axis
7.  tBodyAcc-std()-Y  = Average standard deviation of body acceleration in time by y-axis
8.  tBodyAcc-std()-Z  = Average standard deviation of body acceleration in time by z-axis
9.  tGravityAcc-mean()-X  = Average mean of gravity acceleration in time by x-axis
10.  tGravityAcc-mean()-Y  = Average mean of gravity acceleration in time by y-axis
11.  tGravityAcc-mean()-Z  = Average mean of gravity acceleration in time by z-axis
12.  tGravityAcc-std()-X  = Average standard deviation of gravity acceleration in time by x-axis
13.  tGravityAcc-std()-Y  = Average standard deviation of gravity acceleration in time by y-axis
14.  tGravityAcc-std()-Z  = Average standard deviation of gravity acceleration in time by z-axis
15.  tBodyAccJerk-mean()-X = Average mean of body acceleration Jerk signal in time by x-axis
16.  tBodyAccJerk-mean()-Y  = Average mean of body acceleration Jerk signal in time by y-axis
17.  tBodyAccJerk-mean()-Z  = Average mean of body acceleration Jerk signal in time by z-axis
18.  tBodyAccJerk-std()-X  = Average standard deviation of body acceleration Jerk signal in time by x-axis
19.  tBodyAccJerk-std()-Y  = Average standard deviation of body acceleration Jerk signal in time by y-axis
20.  tBodyAccJerk-std()-Z  = Average standard deviation of body acceleration Jerk signal in time by z-axis
21.  tBodyGyro-mean()-X  = Average mean of body acceleration of three-dimensional signal in time by x-axis
22.  tBodyGyro-mean()-Y  = Average mean of body acceleration of three-dimensional signal in time by y-axis
23.  tBodyGyro-mean()-Z  = Average mean of body acceleration of three-dimensional signal in time by z-axis
24.  tBodyGyro-std()-X  = Average standard deviation of body acceleration of three-dimensional signal in time by x-axis
25.  tBodyGyro-std()-Y  = Average standard deviation of body acceleration of three-dimensional signal in time by y-axis
26.  tBodyGyro-std()-Z  = Average standard deviation of body acceleration of three-dimensional signal in time by z-axis
27.  tBodyGyroJerk-mean()-X  = Average mean of body acceleration of three-dimensional Jerk signal in time by x-axis
28.  tBodyGyroJerk-mean()-Y  = Average mean of body acceleration of three-dimensional Jerk signal in time by y-axis
29.  tBodyGyroJerk-mean()-Z  = Average mean of body acceleration of three-dimensional Jerk signal in time by z-axis
30.  tBodyGyroJerk-std()-X  = Average standard deviation of body acceleration of three-dimensional Jerk signal in time by x-axis
31.  tBodyGyroJerk-std()-Y  = Average standard deviation of body acceleration of three-dimensional Jerk signal in time by y-axis
32.  tBodyGyroJerk-std()-Z  = Average standard deviation of body acceleration of three-dimensional Jerk signal in time by z-axis
33.  tBodyAccMag-mean()  = Average mean of body magnitude of three-dimensional signal in time
34.  tBodyAccMag-std()  = Average standard deviation of body acceleration magnitude of three-dimensional signal in time
35.  tGravityAccMag-mean()  = Average mean of body acceleration magnitude of three-dimensional signal in time
36.  tGravityAccMag-std()  = Average standard deviation of body magnitude of three-dimensional signal in time
37.  tBodyAccJerkMag-mean()  = Average mean of body magnitude of three-dimensional signal in time
38.  tBodyAccJerkMag-std()  = Average standard deviation of body magnitude of three-dimensional signal in time
39.  tBodyGyroMag-mean()  = Average mean of body magnitude of three-dimensional signal in time
40.  tBodyGyroMag-std()  = Average standard deviation of body magnitude of three-dimensional signal in time
41.  tBodyGyroJerkMag-mean()  = Average mean of body magnitude of three-dimensional signal in time
42.  tBodyGyroJerkMag-std()  = Average standard deviation of body magnitude of three-dimensional signal in time
43.  fBodyAcc-mean()-X  = Average mean of body acceleration in Fast Fourier Transform (FFT) by x-axis
44.  fBodyAcc-mean()-Y  = Average mean of body acceleration in Fast Fourier Transform (FFT) by y-axis
45.  fBodyAcc-mean()-Z  = Average mean of body acceleration in Fast Fourier Transform (FFT) by z-axis
46.  fBodyAcc-std()-X  = Average standard deviation of body acceleration in Fast Fourier Transform (FFT) by x-axis
47.  fBodyAcc-std()-Y  = Average standard deviation of body acceleration in Fast Fourier Transform (FFT) by y-axis
48.  fBodyAcc-std()-Z  = Average standard deviation of body acceleration in Fast Fourier Transform (FFT) by z-axis
49.  fBodyAccJerk-mean()-X  = Average mean of body acceleration Jerk signal in Fast Fourier Transform (FFT) by x-axis
50.  fBodyAccJerk-mean()-Y  = Average mean of body acceleration Jerk signal in Fast Fourier Transform (FFT) by y-axis
51.  fBodyAccJerk-mean()-Z  = Average mean of body acceleration Jerk signal in Fast Fourier Transform (FFT) by z-axis
52.  fBodyAccJerk-std()-X  = Average standard deviation of body acceleration Jerk signal in Fast Fourier Transform (FFT) by x-axis
53.  fBodyAccJerk-std()-Y  = Average standard deviation of body acceleration Jerk signal in Fast Fourier Transform (FFT) by x-axis
54.  fBodyAccJerk-std()-Z  = Average standard deviation of body acceleration Jerk signal in Fast Fourier Transform (FFT) by x-axis
55.  fBodyGyro-mean()-X  = Average mean of body angular velocity Jerk signal in Fast Fourier Transform (FFT) by x-axis
56.  fBodyGyro-mean()-Y  = Average mean of body angular velocity Jerk signal in Fast Fourier Transform (FFT) by y-axis
57.  fBodyGyro-mean()-Z  = Average mean of body angular velocity Jerk signal in Fast Fourier Transform (FFT) by z-axis
58.  fBodyGyro-std()-X  = Average standard deviation of body angular velocity Jerk signal in Fast Fourier Transform (FFT) by x-axis
59.  fBodyGyro-std()-Y  = Average standard deviation of body angular velocity Jerk signal in Fast Fourier Transform (FFT) by x-axis
60.  fBodyGyro-std()-Z  = Average standard deviation of body angular velocity Jerk signal in Fast Fourier Transform (FFT) by x-axis
61.  fBodyAccMag-mean()  = Average mean of body acceleration Jerk signal in Fast Fourier Transform (FFT)
62.  fBodyAccMag-std()  = Average standard deviation of body acceleration Jerk signal in Fast Fourier Transform (FFT)
63.  fBodyBodyAccJerkMag-mean()  = Average mean of body acceleration Jerk signal in Fast Fourier Transform (FFT)
64.  fBodyBodyAccJerkMag-std()  = Average standard deviation of body acceleration Jerk signal in Fast Fourier Transform (FFT)
65.  fBodyBodyGyroMag-mean()  = Average mean of body angular velocity Jerk signal in Fast Fourier Transform (FFT)
66.  fBodyBodyGyroMag-std()  = Average standard deviation of body angular velocity Jerk signal in Fast Fourier Transform (FFT)
67.  fBodyBodyGyroJerkMag-mean()  = Average standard deviation of body angular velocity Jerk signal in Fast Fourier Transform (FFT)
68.  fBodyBodyGyroJerkMag-std() = Average standard deviation of body angular velocity Jerk signal in Fast Fourier Transform (FFT)

Please read the README.MD to find more information about the source variables.
