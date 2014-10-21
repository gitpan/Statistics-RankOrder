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

my %cases = (
    "case 1" => [
        [    
            [qw( A B C D E )],
            [qw( B A E D C )],
            [qw( B C A E D )],
            [qw( D E B A C )],
            [qw( A B C D E )],
        ],
        {
            A => 1,
            B => 1,
            C => 3,
            D => 4,
            E => 4,
        }
    ],
    "case 2" => [
        [    
            [qw( A B E C D )],
            [qw( B A E D C )],
            [qw( A D B E C )],
            [qw( D E B A C )],
            [qw( A B C D E )],
        ],
        {
            A => 1,
            B => 2,
            C => 5,
            D => 4,
            E => 3,
        }
    ],
);

plan tests => scalar keys %cases ;

while ( my ($label, $case) = each (%cases) ) {
    my ($judges, $ranks) = @$case;
    my $obj = Statistics::RankOrder->new ();
    $obj->add_judge($_) for @$judges;
    my $mr = {$obj->median_rank()};
    is_deeply( $mr, $ranks, "is median_rank() correct for '$label'" ) or
        diag why( got => $mr, expected => $ranks );
}


