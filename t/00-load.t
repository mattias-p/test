#!perl -T
use 5.014;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'My::Test' ) || print "Bail out!\n";
}

diag( "Testing My::Test $My::Test::VERSION, Perl $], $^X" );
