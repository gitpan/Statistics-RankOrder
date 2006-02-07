use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new(
    module_name     => 'Statistics::RankOrder',
    dist_author => 'David A Golden <dagolden@cpan.org>', 
    create_makefile_pl => "traditional",
    create_readme => 0,
    license         => 'perl',
    requires => {
        perl => 5.004,
        Class::Accessor::Fast => 0.19,
        Data::Dumper => 0, 
        Test::More => 0.45,
    },
)->create_build_script;
