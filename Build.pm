use v6.d;
'rakudociem-ipsum.rakudoc'.IO.unlink if 'rakudociem-ipsum.rakudoc'.IO ~~ :e & :f;
'wget-log'.IO.unlink if 'wget-log'.IO ~~ :e & :f;
my $proc = run <wget https://github.com/Raku/RakuDoc-GAMMA/raw/main/rakudociem-ipsum.rakudoc>,:err,:out;
say 'check wget-log if rakudociem-ipsum.rakudoc is not present'