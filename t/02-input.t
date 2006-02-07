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

#--------------------------------------------------------------------------#
# Test Data
#--------------------------------------------------------------------------#

my @judges = (
    [qw( A E D C B )],
    [qw( B A E D C )],
    [qw( C B A E D )],
    [qw( D C B A E )],
    [qw( E D C B A )],
);


plan tests =>  2 ;

my $obj = Statistics::RankOrder->new ();
isa_ok ($obj, 'Statistics::RankOrder');

$obj->add_judge($_) for @judges;
is_deeply( [$obj->judges], \@judges, "judges() replicates input" );

