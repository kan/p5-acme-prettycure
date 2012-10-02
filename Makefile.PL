use inc::Module::Install;
name 'Acme-PrettyCure';
all_from 'lib/Acme/PrettyCure.pm';

requires 'Any::Moose';
requires 'Time::Piece';
requires 'UNIVERSAL::require';
requires 'List::MoreUtils';
requires 'Math::Random::MT';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
test_requires 'Test::Exception';
auto_set_repository;
auto_include;
WriteAll;
