# Statistics::RankOrder  
use strict;

use Test::More;
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
