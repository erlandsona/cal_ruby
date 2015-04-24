# cal\_ruby
Implementation of the Unix cal program in Ruby

##Instructions

1. Create Repo w/License
2. Write README.md
3. Setup/Tests:
  1. Make test directory and create...
    1. helper.rb and test\_\*.rb
  2. Do a bundle init and install to install necessary gems
  3. In the root of the project create...
    2. cal.rb and Rakefile
    3. `chmod +x cal.rb` to make the file executable
4. Write integration tests
  1. months\_that\_start\_on\_sunday?
  2. regular\_leap\_years
  3. century\_leap\_years
  4. 400\_year\_leap\_years
  5. test\_number\_of\_days\_for\_each\_month
    1. num\_of\_days\_january
    2. num\_of\_days\_march
    3. num\_of\_days\_april
    4. num\_of\_days\_may
  6. test\_number\_of\_days\_for\_special\_case
    1. num\_of\_days\_february\_regular
    2. num\_of\_days\_february\_leap
  7. test\_min\_date
  8. test\_max\_date
  9. check\_date\_is\_greater\_than\_min
    - 1800
  10. check\_date\_is\_less\_than\_max
    - 3000
  11. _Error Cases_
    1. "April" 2014
    2. 2014(year) 04(month)
5. __Implementation__
  - Implement Specifications Below...

## Specifications

min date = Jan 1 1800
max date = Dec 31 2999



Overview
========

The Unit 1 capstone for this course is the implementation of a subset of the Unix program, `cal`.

The initial milestone of this assignment is to implement a ruby program, `cal.rb` that takes two command-line arguments:

`> ruby cal.rb 12 2012`

and outputs the calendar for that month (12) and year (2012):


        January 2012
    Su Mo Tu We Th Fr Sa
     1  2  3  4  5  6  7
     8  9 10 11 12 13 14
    15 16 17 18 19 20 21
    22 23 24 25 26 27 28
    29 30 31


This is functionally equivalent to calling Unix cal with those arguments (`cal 12 2012`) and the output of your program should match that of Unix cal.

After completing printing of a single month, you will then expand that same program to also take a single command-line argument:

`> ruby cal.rb 2012`

and output the calendar for that year (2012):

                                2012

          January               February               March
    Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6  7            1  2  3  4               1  2  3
    8  9 10 11 12 13 14   5  6  7  8  9 10 11   4  5  6  7  8  9 10
    15 16 17 18 19 20 21  12 13 14 15 16 17 18  11 12 13 14 15 16 17
    22 23 24 25 26 27 28  19 20 21 22 23 24 25  18 19 20 21 22 23 24
    29 30 31              26 27 28 29           25 26 27 28 29 30 31
                                                
          April                  May                   June
    Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6  7         1  2  3  4  5                  1  2
    8  9 10 11 12 13 14   6  7  8  9 10 11 12   3  4  5  6  7  8  9
    15 16 17 18 19 20 21  13 14 15 16 17 18 19  10 11 12 13 14 15 16
    22 23 24 25 26 27 28  20 21 22 23 24 25 26  17 18 19 20 21 22 23
    29 30                 27 28 29 30 31        24 25 26 27 28 29 30
                                                
            July                 August              September
    Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6  7            1  2  3  4                     1
    8  9 10 11 12 13 14   5  6  7  8  9 10 11   2  3  4  5  6  7  8
    15 16 17 18 19 20 21  12 13 14 15 16 17 18   9 10 11 12 13 14 15
    22 23 24 25 26 27 28  19 20 21 22 23 24 25  16 17 18 19 20 21 22
    29 30 31              26 27 28 29 30 31     23 24 25 26 27 28 29
                                                30
          October               November              December
    Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
        1  2  3  4  5  6               1  2  3                     1
    7  8  9 10 11 12 13   4  5  6  7  8  9 10   2  3  4  5  6  7  8
    14 15 16 17 18 19 20  11 12 13 14 15 16 17   9 10 11 12 13 14 15
    21 22 23 24 25 26 27  18 19 20 21 22 23 24  16 17 18 19 20 21 22
    28 29 30 31           25 26 27 28 29 30     23 24 25 26 27 28 29
                                                30 31

Objectives
==========

  * Practice with Arrays, Hashes, and Strings
  * Develop the logic of a non-trivial algorithm
  * Programming to meet a (changing) specification

Requirements
============

  * Your program must have tests.  These test may be as high-level (integration tests) or as low-level (unit tests) as you wish.  I highly recommend a mix of tests.
  * You may not use any of the built-in Ruby classes that provide date, time, or calendar functionality.
  * You may not use exec, Kernel, etc. to shell out to any Unix programs.  The only exception to this is if you want to shell out to `cal` as part of an integration test.
  * You should not use "magic" numbers.
  * You must commit your code at least once per day and push it to your github repository.
  * As a capstone project, this should demonstrate *your* skills. Do not share code with your peers. You can help each other _think_ about the problems, but don't help each other code.
  * Your program should accept any combination of months and years between 1800 and 3000.

Suggested Implementation Order
==============================

You will find this (and all future) programming projects much easier if you take the time to break it down into smaller parts.  I will suggest a breakdown that works well for me:

  1. Implement Zeller's Congruence, with test for all of the special types of months/years.
  2. Implement printing a month where the first day of the month is on a Sunday.  For example, January 2012.  This is the easiest type of month to print and can be thought of as a base case.  For this, you can temporarily hardcode the assumption that the month will start on Sunday.  Of course, you will use tests for this!
  3. Combine the powers of your Zeller's Congruence (which will tell you the real first day of the month) with your basic month printing from step 2.  Test the hell out of this!
  4. After you feel good about that, combine the ability to print each individual month, to allow you to print an entire year.  Hint: This is all about combining strings!

Resources:
=========

Pictures of the notes we will have taken in class will be in the same folder as this document.

Wikipedia articles that may be of use:

  * [http://en.wikipedia.org/wiki/Cal_(Unix)](http://en.wikipedia.org/wiki/Cal_(Unix))
  * [http://en.wikipedia.org/wiki/Gregorian_calendar](http://en.wikipedia.org/wiki/Gregorian_calendar)
  * [http://en.wikipedia.org/wiki/Zeller's_congruence](http://en.wikipedia.org/wiki/Zeller's_congruence)

Deadline
========
This basic functionality should be completed over the holiday break (i.e. Completed by *Sunday, January 5th*)

As soon as the holiday break is over we will start working on refactoring, using your code from cal.
