require_relative 'helper'

class TestCalIntegration < Minitest::Test


  def test_months_starting_on_sunday
    output = `./cal.rb 01 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal output, expected
  end

  def test_regular_leap_years
    output = `./cal.rb 02 2012`
    expected = <<EOS
   February 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29

EOS
    assert_equal output, expected
  end

  def test_century_leap_years
    output = `./cal.rb 02 2000`
    expected = <<EOS
   February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal output, expected
  end

  def test_400_year_leap_years
    output = `./cal.rb 02 2400`
    expected = <<EOS
   February 2400
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal output, expected
  end

  def test_num_of_days_jan
    output = `./cal.rb 01 2015`
    expected = <<EOS
    January 2015
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal output, expected
  end

  def test_num_of_days_feb_regular
    output = `./cal.rb 02 2015`
    expected = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28


EOS
    assert_equal output, expected
  end

  def test_num_of_days_feb_leap
    output = `./cal.rb 02 2016`
    expected = <<EOS
   February 2016
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29

EOS
    assert_equal output, expected
  end

  def test_num_of_days_mar
    output = `./cal.rb 03 2015`
    expected = <<EOS
     March 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal output, expected
  end

  def test_num_of_days_april
    output = `./cal.rb 04 2015`
    expected = <<EOS
     April 2015
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

EOS
    assert_equal output, expected
  end

  def test_num_of_days_may
    output = `./cal.rb 05 2015`
    expected = <<EOS
      May 2015
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal output, expected
  end

  def test_num_of_days_june
    output = `./cal.rb 06 2015`
    expected = <<EOS
     June 2015
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30

EOS
    assert_equal output, expected
  end

  def test_num_of_days_july
    output = `./cal.rb 07 2015`
    expected = <<EOS
     July 2015
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal output, expected
  end

  def test_num_of_days_aug
    output = `./cal.rb 08 2015`
    expected = <<EOS
    August 2015
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    assert_equal output, expected
  end

  def test_num_of_days_sept
    output = `./cal.rb 09 2015`
    expected = <<EOS
   September 2015
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30

EOS
    assert_equal output, expected
  end

  def test_num_of_days_oct
    output = `./cal.rb 10 2015`
    expected = <<EOS
    October 2015
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal output, expected
  end

  def test_num_of_days_nov
    output = `./cal.rb 11 2015`
    expected = <<EOS
   November 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
    assert_equal output, expected
  end

  def test_num_of_days_dec
    output = `./cal.rb 12 2015`
    expected = <<EOS
   December 2015
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal output, expected
  end

  def test_prints_error_message_if_year_less_than_1800
    output = `./cal.rb 01 1600`
    expected = <<EOS
Date not in accepatble format/range
./cal.rb [mm] [yyyy]
EOS
    assert_equal expected, output
  end

  def test_prints_error_message_if_year_greater_than_3000
    output = `./cal.rb 01 3100`
    expected = <<EOS
Date not in accepatble format/range
./cal.rb [mm] [yyyy]
EOS
    assert_equal expected, output
  end

  def test_prints_error_message_if_arguments_format_is_wrong
    output = `./cal.rb $9# QWD12`
    expected = <<EOS
Date not in accepatble format/range
./cal.rb [mm] [yyyy]
EOS
    assert_equal expected, output
  end

  def test_prints_error_message_if_argument_is_string
    output = `./cal.rb "July, 2015"`
    expected = <<EOS
Date not in accepatble format/range
./cal.rb [mm] [yyyy]
EOS
    assert_equal expected, output
  end

  def test_prints_error_message_if_year_in_month_placeholder
    output = `./cal.rb 2015 01`
    expected = <<EOS
Date not in accepatble format/range
./cal.rb [mm] [yyyy]
EOS
    assert_equal expected, output
  end

end

