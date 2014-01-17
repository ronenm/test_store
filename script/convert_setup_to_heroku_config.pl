#!/usr/bin/perl

use strict;
use Carp;

my @setup_files = @ARGV>0 ? @ARGV : ('setup');

my $output_file = 'heroku_config';

open(OUTPUT, ">$output_file") or croak "Unable to create $output_file: $!\n";

print OUTPUT "heroku config:set";
foreach my $setup_file ( @setup_files ) {
    open(SETUP, $setup_file) or croak "Unable to open $setup_file: $!\n";
    my @setup = map { chomp; s/^\s*setenv\s+(\S+)\s+(.+)$/$1=$2/; $_; } grep { /^\s*setenv\s/ } <SETUP>;
    close(SETUP);
    print OUTPUT ' ',join(' ',@setup);
}

close(OUTPUT);