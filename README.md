# Getting And Cleaning Data: Course Project 


## Merging the test and train datasets:

 
#### Subjects: 30 volunteers aged 19-48

UCI HAR Dataset/test/subject\_test.txt   
UCI HAR Dataset/train/subject\_train.txt   
Merged to a vector (subject) of length 10299  


#### Activity labels : 1 - 6

UCI HAR Dataset/test/y\_test.txt  
UCI HAR Dataset/train/y\_train.txt  
Merged to a vector (activity) of length 10299  
Activities are recoded with descriptive labels:

* 1 = walking
* 2 = walking upstairs
* 3 = walking downstairs
* 4 = sitting
* 5 = standing
* 6 = laying


#### Features: 561 variables (detailed description given in Features561.txt)

UCI HAR Dataset/test/X\_test.txt  
UCI HAR Dataset/train/X\_train.txt  
Merged to a data frame (X) of 10299 rows and 561 columns.


## Variable selection
The names of the 561 variables are read from UCI HAR Dataset/features.txt  
Variables which are measurements of mean or standard deviation are identified by index.  
These 86 variables are selected from the merged data frame X.  
Variable names are left unchanged apart from:

* conversion to lower case
* removal of "(", ")", "-" and ",' characters


## Final merge and summary  
The subjects, activities and 86 selected features are merged into a single data frame of 10299 rows and 88 columns.  
Features are summarized by subject and activity as mean values.  
Summarized as data frame of 180 rows and 88 columns.  
Saved as "tidy\_data.txt"
 

## Codebook

* Time-domain features are denoted by t
* Frequency-domain features are denoted by f
* x, y, z denote axial signal direction
* Measurements of mean and standard deviation indicated by "mean" and "std", respectively
* Frequency-domain features also include a frequency-weighted mean (meanfreq)
* Features are normalized and bounded within [-1,1]
* (Original raw measurements in gravity units 'g' (accelerometer) and radians/second (gyroscope))


1 subject 			(values 1-30)  
2 activity			(walking, walking upstairs, walking downstairs, sitting, standing, laying)  
3 tbodyaccmeanx  
4 tbodyaccmeany  
5 tbodyaccmeanz  
6 tbodyaccstdx  
7 tbodyaccstdy  
8 tbodyaccstdz  
9 tgravityaccmeanx  
10 tgravityaccmeany  
11 tgravityaccmeanz  
12 tgravityaccstdx  
13 tgravityaccstdy  
14 tgravityaccstdz  
15 tbodyaccjerkmeanx  
16 tbodyaccjerkmeany  
17 tbodyaccjerkmeanz  
18 tbodyaccjerkstdx  
19 tbodyaccjerkstdy  
20 tbodyaccjerkstdz  
21 tbodygyromeanx  
22 tbodygyromeany  
23 tbodygyromeanz  
24 tbodygyrostdx  
25 tbodygyrostdy  
26 tbodygyrostdz  
27 tbodygyrojerkmeanx  
28 tbodygyrojerkmeany  
29 tbodygyrojerkmeanz  
30 tbodygyrojerkstdx  
31 tbodygyrojerkstdy  
32 tbodygyrojerkstdz  
33 tbodyaccmagmean  
34 tbodyaccmagstd  
35 tgravityaccmagmean  
36 tgravityaccmagstd  
37 tbodyaccjerkmagmean  
38 tbodyaccjerkmagstd  
39 tbodygyromagmean  
40 tbodygyromagstd  
41 tbodygyrojerkmagmean  
42 tbodygyrojerkmagstd  
43 fbodyaccmeanx  
44 fbodyaccmeany  
45 fbodyaccmeanz  
46 fbodyaccstdx  
47 fbodyaccstdy  
48 fbodyaccstdz  
49 fbodyaccmeanfreqx  
50 fbodyaccmeanfreqy  
51 fbodyaccmeanfreqz  
52 fbodyaccjerkmeanx  
53 fbodyaccjerkmeany  
54 fbodyaccjerkmeanz  
55 fbodyaccjerkstdx  
56 fbodyaccjerkstdy  
57 fbodyaccjerkstdz  
58 fbodyaccjerkmeanfreqx  
59 fbodyaccjerkmeanfreqy  
60 fbodyaccjerkmeanfreqz  
61 fbodygyromeanx  
62 fbodygyromeany  
63 fbodygyromeanz  
64 fbodygyrostdx  
65 fbodygyrostdy  
66 fbodygyrostdz  
67 fbodygyromeanfreqx  
68 fbodygyromeanfreqy  
69 fbodygyromeanfreqz  
70 fbodyaccmagmean  
71 fbodyaccmagstd  
72 fbodyaccmagmeanfreq  
73 fbodybodyaccjerkmagmean  
74 fbodybodyaccjerkmagstd  
75 fbodybodyaccjerkmagmeanfreq  
76 fbodybodygyromagmean  
77 fbodybodygyromagstd  
78 fbodybodygyromagmeanfreq  
79 fbodybodygyrojerkmagmean  
80 fbodybodygyrojerkmagstd  
81 fbodybodygyrojerkmagmeanfreq  
82 angletbodyaccmeangravity  
83 angletbodyaccjerkmeangravitymean  
84 angletbodygyromeangravitymean  
85 angletbodygyrojerkmeangravitymean  
86 anglexgravitymean  
87 angleygravitymean  
88 anglezgravitymean  


 