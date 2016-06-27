CourseraGettingAndCleaningDataProject

README.md:

Last revised: 6/26/2016

 

Project Overview:

 

This project created a mean of Activity and Participant
mean and standard deviations from a provided courser dataset.  This project read in, interpreted, summarized
and created an output file with just the mean and standard deviation in a tidy
data format with labels attached to the columns that are understandable human
format.  Please see the CodeBook.md file
in this same repository for additional in depth information on the data
transformation.

 

The data obtained for this course project is from the
Human Activity Recognition Using Smartphones Dataset project.  See credits section for links to this data.

Data Transformations:

The R script begins with downloading and extracting the project data directory from the provided internet location for the Human Activity Recognition Using Smartphones Dataset.

Once the file is unzipped, the data files are begun to be read into R.

Participants were broken into two segments for this scientific project. They are labeled as Test and Train and are located in two separate directories. The X, y and subject files are read for both Test and Train into R. Next, there are two label files. The first is Activity and contains the Activity label for each of the six acitivities performed by participants. The second file is Features and contains the 561 observation points recorded for each participant and activity.

After reading in the tables, I added column names from the Features table to The X_test and X_train tables. I then manually added labels of Activity to the table containing the six activities and a label of Participant to the table containing the thirty Subject number. I added these labels now to simplify the column labelling process when the tables are merged together, which is the next step.

The next steps, which fulfills Coursera Objective #1, is to merge the Training and Test data sets together into one large dataset. With the raw data in X, the activities in y and the Participant numbers in Subject, I merged each of these by simply using an rbind and creating a new dataset for each with the Test data followed by Train data.

The next step is to fulfill the Coursera #2 objective by narrowing the data to only mean and standard deviation observations. I created a new dataset that was limited to only those columns.

Once the X_data was subset to just the mean and standard deviation columns, I column joined all three dataset together to create a dataset that has a column for the activity number, a column for the participant number followed by the scientific observations mean and standard deviation values.

The next step was to fulfill the Coursera #3 objective of transforming the Activity number to the descriptive name. I used the label data set Activity to perform that transformation.

The next step was to fulfill Coursera #4 objective of creating tidy column names. I created a series of label transformation steps to create the tidy human readable names by changing abbreviations into full names and adding spaces for better reading labels.

The final Coursera objective, Coursera #5, was to create a dataset that contained mean summary data for each Activity and Participant. This was created and written to file tidy.txt as output from this R script. 

Background on the Human Activity Recognition Using Smartphone
Dataset: 

==============================================================

The underlying datasets contain observational
accelerometer and gyroscope sensor signals from 30 smartphone users on 6
different activities.  The 30 users were
split between testing and training groups for scientific observational purposes.

 

Input Datasets utilized:

 

The following datasets were utilized from the Human
Activity Recognition Using Smartphone Dataset: 

X_Test:  

This dataset contains the raw sensor signal data for each
activity for the Test segment user group. 
The measurement units is standard gravitational units (g)

X_Train: 

This dataset contains the raw sensor signal data for each
activity for the Train segment user group. 
The measurement units is standard gravitational units (g)

Y_Test: 

This dataset contains a row for every observation in
X_Test and contains which of 6 activities each measurement is for with values 1
to 6.

Y_Train: 

This dataset contains a row for every observation in
X_Train and contains which of 6 activities each measurement is for with values
1 to 6.

Subject_Test: 

This dataset contains a row for every observation in
X_Test and contains which of 30 participants the measurement is for with values
1 to 30.

Subject_Train: 

This dataset contains a row for every observation in
X_Train and contains which of 30 participants the measurement is for with
values 1 to 30.

Activity_labels: 

This dataset contains the label to translate values 1 to
6 to a human readable activity

Featurs.txt: 

This dataset contains the label to translate values 1 to
561 to a human readable measurement description

 

Project files created:

 

Run_analysis.R:  

---------------------

This file contains the R scripts necessary to convert the
input datasets into the output summarized mean and standard deviations
values.  More information on the R script
can be found in the project CodeBook.md file.

 

README.md: 

------------------

This file is this file, and is an introduction to the
project and a general overview of the inputs and outputs of this project.

 

CodeBook.md: 

--------------------

This file describes in detail how the data was converted
from its input form to create the resulting out tidy.txt dataset

 

Tidy.txt: 

-----------

This is the resulting tidy dataset output from this
project.  You can tell that the dataset
is tidy because each variable is in its own column, different types of
observations are not mixed within the same column, there are headers in the
file, the variables have been modified to be human readable and there is only one
file per table.  The column variables and
descriptions are below.  There are two
types of scientific measurements below. 
The variables labeled time are interval measurements with units recorded
in standard gravitational units (g) while frequency measurements are recorded
in hertz (hz).  The following are the
list of variables:

 

Activity: This is the category of activity performed by the
Participant                                                   

Participant: The Participant number                                               

Time Body Acceleration Mean 
X: Mean of observations recorded in (g) units                           

Time Body Acceleration Mean 
Y: Mean of observations recorded in (g) units

Time Body Acceleration Mean 
Z: Mean of observations recorded in (g) units                           

Time Body Acceleration Standard Deviation  X: Mean of observations recorded in (g) units

Time Body Acceleration Standard Deviation  Y: Mean of observations recorded in (g) units

Time Body Acceleration Standard Deviation  Z: Mean of observations recorded in (g) units

Time Gravity Acceleration Mean  X: Mean of observations recorded in (g) units

Time Gravity Acceleration Mean 
Y: Mean of observations recorded in (g) units

Time Gravity Acceleration Mean 
Z: Mean of observations recorded in (g) units

Time Gravity Acceleration Standard Deviation  X: Mean of observations recorded in (g) units

Time Gravity Acceleration Standard Deviation  Y: Mean of observations recorded in (g) units

Time Gravity Acceleration Standard Deviation  Z: Mean of observations recorded in (g) units

Time Body Acceleration Jerk Mean 
X: Mean of observations recorded in (g) units

Time Body Acceleration Jerk Mean 
Y: Mean of observations recorded in (g) units

Time Body Acceleration Jerk Mean 
Z: Mean of observations recorded in (g) units

Time Body Acceleration Jerk Standard Deviation  X: Mean of observations recorded in (g) units

Time Body Acceleration Jerk Standard Deviation  Y: Mean of observations recorded in (g) units

Time Body Acceleration Jerk Standard Deviation  Z: Mean of observations recorded in (g) units

Time Body Gyroscope Mean  X:
Mean of observations recorded in (g) units

Time Body Gyroscope Mean  Y:
Mean of observations recorded in (g) units

Time Body Gyroscope Mean  Z:
Mean of observations recorded in (g) units

Time Body Gyroscope Standard Deviation  X: Mean of observations recorded in (g) units

Time Body Gyroscope Standard Deviation  Y: Mean of observations recorded in (g) units

Time Body Gyroscope Standard Deviation  Z: Mean of observations recorded in (g) units

Time Body Gyroscope Jerk Mean 
X: Mean of observations recorded in (g) units

Time Body Gyroscope Jerk Mean 
Y: Mean of observations recorded in (g) units

Time Body Gyroscope Jerk Mean 
Z: Mean of observations recorded in (g) units

Time Body Gyroscope Jerk Standard Deviation  X: Mean of observations recorded in (g) units

Time Body Gyroscope Jerk Standard Deviation  Y: Mean of observations recorded in (g) units

Time Body Gyroscope Jerk Standard Deviation  Z: Mean of observations recorded in (g) units

Time Body Acceleration Magnitude Mean: Mean of observations
recorded in (g) units

Time Body Acceleration Magnitude Standard Deviation: Mean of
observations recorded in (g) units

Time GravityAcceleration Magnitude Mean: Mean of observations
recorded in (g) units

Time GravityAcceleration Magnitude Standard Deviation: Mean of
observations recorded in (g) units

Time Body Acceleration Jerk Magnitude Mean: Mean of observations
recorded in (g) units

Time Body Acceleration Jerk Magnitude Standard Deviation: Mean of
observations recorded in (g) units

Time Body Gyroscope Magnitude Mean: Mean of observations recorded
in (g) units

Time Body Gyroscope Magnitude Standard Deviation: Mean of
observations recorded in (g) units

Time Body Gyroscope Jerk Magnitude Mean: Mean of observations
recorded in (g) units

Time Body Gyroscope Jerk Magnitude Standard Deviation: Mean of
observations recorded in (g) units

Frequency Body Acceleration Mean 
X: Mean of observed signal recorded in (Hz)

Frequency Body Acceleration Mean 
Y: Mean of observed signal recorded in (Hz)                      

Frequency Body Acceleration Mean 
Z: Mean of observed signal recorded in (Hz)                      

Frequency Body Acceleration Standard Deviation  X: Mean of observed signal recorded in (Hz)

Frequency Body Acceleration Standard Deviation  Y: Mean of observed signal recorded in (Hz)

Frequency Body Acceleration Standard Deviation  Z: Mean of observed signal recorded in (Hz)        

Frequency Body Acceleration Mean Frequency  X: Mean of observed signal recorded in (Hz)    

Frequency Body Acceleration Mean Frequency  Y: Mean of observed signal recorded in (Hz)             

Frequency Body Acceleration Mean Frequency  Z: Mean of observed signal recorded in (Hz)            

Frequency Body Acceleration Jerk Mean  X: Mean of observed signal recorded in (Hz)        

Frequency Body Acceleration Jerk Mean  Y: Mean of observed signal recorded in (Hz)                 

Frequency Body Acceleration Jerk Mean  Z: Mean of observed signal recorded in (Hz)                  

Frequency Body Acceleration Jerk Standard Deviation  X: Mean of observed signal recorded in (Hz)

Frequency Body Acceleration Jerk Standard Deviation  Y: Mean of observed signal recorded in (Hz)

Frequency Body Acceleration Jerk Standard Deviation  Z: Mean of observed signal recorded in (Hz)

Frequency Body Acceleration Jerk Mean Frequency  X: Mean of observed signal recorded in (Hz)

Frequency Body Acceleration Jerk Mean Frequency  Y: Mean of observed signal recorded in (Hz)      

Frequency Body Acceleration Jerk Mean Frequency  Z: Mean of observed signal recorded in (Hz)       

Frequency Body Gyroscope Mean 
X: Mean of observed signal recorded in (Hz)

Frequency Body Gyroscope Mean 
Y: Mean of observed signal recorded in (Hz)                         

Frequency Body Gyroscope Mean 
Z: Mean of observed signal recorded in (Hz)                         

Frequency Body Gyroscope Standard Deviation  X: Mean of observed signal recorded in (Hz)

Frequency Body Gyroscope Standard Deviation  Y: Mean of observed signal recorded in (Hz)           

Frequency Body Gyroscope Standard Deviation  Z: Mean of observed signal recorded in (Hz)            

Frequency Body Gyroscope Mean Frequency  X: Mean of observed signal recorded in (Hz)     

Frequency Body Gyroscope Mean Frequency  Y: Mean of observed signal recorded in (Hz)  

 

 

Credits:

=======

 

Credit for the input data belongs to Human Activity
Recognition Using Smartphones Dataset, Version 1, Smartlab – Non Linear Complex
Systems Laboratory.  More information on
this project can be found at: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data from the Human Activity Recognition Using
Smartphones Dataset project can be downloaded at: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

 
