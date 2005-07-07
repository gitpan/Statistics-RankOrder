#!/usr/bin/perl
use strict;
use warnings;
use blib;  

# Statistics::RankOrder  

use Test::More;
use Test::Exception;
use Data::Dumper;
use Statistics::RankOrder;

sub why {
    my %vars = @_;
    $Data::Dumper::Sortkeys = 1;
    return "\n" . Data::Dumper->Dump([values %vars],[keys %vars]) . "\n";
}

plan tests =>  1 ;



my $obj = Statistics::RankOrder->new ();
isa_ok ($obj, 'Statistics::RankOrder');