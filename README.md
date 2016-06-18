Course project for Getting and Cleaning Data

Introduction
============

This code set produces a tidy data set that contains summary data on movement
data from volunteers wearing measurement devices. Each observation is for a
particular subject's movement type.

The code combines the data from the 'test' and 'train' data subsets into a
single data set.

Please see CodeBook.md for a description of the specific variables.

In order to run the code, the source data must be in the 'data' subdirectory,
with 'test' and 'train' subdirectories to hold the test and training data
subsets.

Running the program
===================

In order to generate a text file containing a tidy data table, run the
generate_tidy_data_file() function. By default, it will create a file named
tidy_data.txt in the working directory. Optionally, the user can choose a
different file name.

There are a couple of helper functions that may also be useful on their own:

    The run_analysis() function will return a tidy data set as a data frame.

    The build_activity_data_frame() function will return a data frame
    containing data from a data subset.

