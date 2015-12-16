use 5.014;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'My::Test',
    license             => 'Perl_5',
    dist_author         => q{Mattias Päivärinta <mattias.paivarinta@doxwork.com>},
    dist_abstract       => 'this is the abstract',
    dist_version        => '1.0.0',
    dist_version_from   => 'README.pod',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    add_to_cleanup     => [ 'My-Test-*' ],
    create_makefile_pl => 'traditional',
    create_readme => 1,
);

$builder->create_build_script();
