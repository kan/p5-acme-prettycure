requires 'perl' => '5.010001';
requires 'Moo';
requires 'Time::Piece';
requires 'UNIVERSAL::require';
requires 'List::MoreUtils';
requires 'Math::Random::MT';
requires 'Imager';
requires 'Furl';
requires 'Cache::LRU';
requires 'Net::DNS::Lite';

on 'configure' => sub {
    requires 'Module::Build::Tiny';
};

on 'test' => sub {
    requires 'Test::More' => '0.98';
    requires 'Test::Requires' => 0;
    requires 'Test::Exception';
};
