#!/usr/bin/perl

use XML::Twig;
use XML::Parser;

my $xml = XML::Twig->new(pretty_print => 'indented');

if ($ARGV[0]) {
    $xml->parse($ARGV[0]);
} else {
    $xml->parse(\*STDIN);
}

$xml->print();
