# Word Sequences Generator
This program generates word sequences from a dictionary file and creates output files containing unique sequences and corresponding words.

## Getting Started
These instructions will help you set up and run the program on your local machine.

## Prerequisites
- Ruby (version 2.5 or higher)
## Installation
1. Download the source code.
2. Install Ruby if it is not already installed on your system.
### Usage
1. Place your dictionary file containing a list of words in the project directory and name it dictionary_words.txt. Each word should be on a separate line.
2. Open the words_test.rb file and modify the dictionary_words variable to match the name of your dictionary file if necessary.
3. Run the program by executing the following command in your terminal.
```
ruby words_test.rb
```
4. After running the program, two output files will be generated in the project directory:
- unique_sequences.txt: This file contains a list of unique word sequences, with each sequence on a separate line.
- words.txt: This file contains the corresponding words for the unique sequences, with each word capitalized and on a separate line.
## Running the Tests
The program includes a set of tests to ensure its functionality. The tests are defined in the specs.rb file. To run the tests, follow these steps:

1. Make sure you have the RSpec gem installed. If not, install it by running the following command:
```
gem install rspec
```
2. Open your terminal and navigate to the project directory.
3. Run the following command to execute the tests:
Copy code
```
rspec specs.rb
```
The test results will be displayed in the terminal, indicating whether each test passed or failed.

## Customization
- If you want to use a different dictionary file, modify the dictionary_words variable in the words_test.rb file to match the filename.
- You can customize the output filenames by changing the values of sequences_file and words_file variables in the words_test.rb file.
