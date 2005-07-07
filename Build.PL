use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new(
    module_name     => 'Statistics::RankOrder',
    dist_author => 'David A Golden <dagolden@cpan.org>', 
    create_makefile_pl => "traditional",
    create_readme => 1,
    license         => 'perl',
    requires => {
        perl => 5.006,
        Class::Accessor::Fast => 0.19,
    },
    build_requires  => { 
        Data::Dumper => 2.121, 
        Test::More => 0.53,
        Test::Exception => 0.19,
    },
    recommends => {},
    conflicts => {},
)->create_build_script;
