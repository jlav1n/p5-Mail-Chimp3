use Test::More;

BEGIN { use_ok('WebService::MailChimp'); };

my $apikey = $ENV{MAILCHIMP_APIKEY} || 'bogus-us1';

my $mailchimp = WebService::MailChimp->new( api_key => $apikey );
isa_ok($mailchimp, 'WebService::MailChimp');
is($mailchimp->base_url, 'https://' . $mailchimp->datacenter . '.api.mailchimp.com/3.0/', 'base_url as expected');

done_testing;
