#!/usr/bin/perl -w

use strict;
use warnings;

my @contributors = `cat members-lhc-dmf-contributors.csv`;

my %external = (
    "adifranz\@uci.edu" => "Anthony Difranzo",
    "andrea.desimone\@sissa.it" => "Andrea de Simone",
    "antonio.riotto\@unige.ch" => "Antonio Riotto",
    "c.mccabe\@uva.nl" => "Christopher McCabe",
    "cacciapa\@ipnl.in2p3.fr" => "Giacomo Cacciapaglia",
    "deandrea\@ipnl.in2p3.fr" => "Aldo Deandrea",
    "enrico.morgante\@unige.ch" => "Enrico Morgante",
    "giorgiobusoni\@busoni.it" => "Giorgio Busoni",
    "kzurek\@berkeley.edu" => "Kathryn Zurek",
    "mbuckley\@physics.rutgers.edu" => "Matthew Buckley",
    "mpapucci\@lbl.gov" => "Michele Papucci",
    "schsu\@uw.edu" => "Shih-Chieh Hsu",
    "spliew\@lbl.gov" => "Seng Pei Liew",
    "sschramm\@physics.utoronto.ca" => "Steven Schramm",
    "thomas.jacques\@unige.ch" => "Thomas Jacques",
    "ttait\@uci.edu" => "Tim Tait",
    "u.haisch1\@physics.ox.ac.uk" => "Ulrich Haisch",
    "valya.khoze\@durham.ac.uk" => "Valentin Khoze"
    );

my %organizers = (
    "antonio.boveia\@cern.ch" => "Antonio Boveia",
    "Caterina.Doglioni\@cern.ch" => "Caterina Doglioni",
    "Steven.Lowette\@cern.ch" => "Steven Lowette",
    "sarah.alam.malik\@cern.ch" => "Sarah Malik",
    "mrenna\@fnal.gov" => "Steve Mrenna"
    );

my %authorlist = ();
    
foreach my $contrib (@contributors) {
    chomp $contrib;
    # (P)erson or (E)xternal record or (S)ublist
    my $thename;
    my $theemail;
    if ($contrib =~ m/^P\,\,\,[0-9]+\,([^\,]*)\,([^\,]+)/) {
        $thename = $1;
        $theemail = $2;
    } elsif ( $contrib =~ m/^E\,([^\,]*)\,([^\,]+)/ ) {
        $theemail = $2;
        $thename = $1;
        # if name not provided, look it up in the cheat sheet above
        # print "thename: $thename\n";
        if ( !($thename =~ m/[A-Za-z]/) ) {
            $thename = $external{ $theemail };
        }
    } elsif ( $contrib =~ m/^S\,lhc\-dmf\-admin/ ) {
        # if this is just the lhc-dmf-admin egroup, add the organizers manually
        foreach my $key (keys %organizers) {
            my $lastname;
            $thename = $organizers{ $key };
            if( $thename =~ m/([^ ]+)$/ ) {
                $lastname = $1;
            }
            $authorlist{ $lastname } = "\\href\{emailto:$key\}\{$thename\}";
        }
        next;
    }
    my $lastname;
    if( $thename =~ m/([^ ]+)$/ ) {
        $lastname = $1;
    } else {
        print "name for $theemail not defined. add it to the 'external' hash.\n";
        die;
    }
    $authorlist{ $lastname } = "\\href\{emailto:$theemail\}\{$thename\}";
}

# alphabetized list
foreach my $key (sort(keys %authorlist)) {
    # print "$key " , "$authorlist{$key}", "\n";
    # hack to print comma except for last name (which is currently Zurek)
    if (!($authorlist{$key} =~ m/Zurek/)) { 
        print "$authorlist{$key},", "\n";
    } else {
        print "$authorlist{$key}", "\n";
    }
}
