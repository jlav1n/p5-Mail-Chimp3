# NAME

Mail::Chimp3 - An interface to mailchimp.com's RESTful Web API v3 using WEB::API

# VERSION

version 0.08

# SYNOPSIS

This is for the MailChimp API v3.0.

Please refer to the API documentation at
[https://mailchimp.com/developer/reference/](https://mailchimp.com/developer/reference/)

    use Mail::Chimp3;

    my $mailchimp = Mail::Chimp3->new(
        api_key => $apikey,
    );

    my $response = $mailchimp->add_store(
        store_id => '123',
        cart_id  => '456',
    );

# METHODS

- abuse\_report
- abuse\_reports
- add\_authorized\_app
- add\_automation\_subscriber
- add\_batch
- add\_batch\_webhook
- add\_campaign
- add\_campaign\_feedback
- add\_campaign\_folder
- add\_cart
- add\_cart\_line
- add\_connected\_site
- add\_conversation\_message
- add\_customer
- add\_domain\_name
- add\_file\_manager\_file
- add\_file\_manager\_folder
- add\_interest
- add\_interest\_category
- add\_landing\_page
- add\_list
- add\_member
- add\_member\_note
- add\_member\_tag
- add\_merge\_field
- add\_order
- add\_order\_line
- add\_product
- add\_segment
- add\_segment\_member
- add\_store
- add\_template
- add\_template\_folder
- add\_twitter\_card
- add\_variant
- add\_webhook
- advice
- authorized\_app
- authorized\_apps
- automation
- automation\_email
- automation\_emails
- automation\_subscriber
- automation\_subscribers
- automations
- batch
- batches
- batch\_list
- batch\_segment
- batch\_webhooks
- batch\_webhook
- campaign
- campaign\_content
- campaign\_feedback
- campaign\_feedbacks
- campaign\_folder
- campaign\_folders
- campaign\_send\_checklist
- campaigns
- cancel\_campaign
- cart
- cart\_line
- cart\_lines
- carts
- click\_detail
- click\_details
- click\_details\_member
- click\_details\_members
- connected\_sites
- connected\_site
- conversation
- conversation\_message
- conversation\_messages
- conversations
- customer
- customers
- delete\_batch
- delete\_batch\_webhook
- delete\_campaign
- delete\_campaign\_feedback
- delete\_campaign\_folder
- delete\_cart
- delete\_cart\_line
- delete\_connected\_site
- delete\_customer
- delete\_domain\_name
- delete\_file\_manager\_file
- delete\_file\_manager\_folder
- delete\_interest
- delete\_interest\_category
- delete\_landing\_page
- delete\_list
- delete\_member
- delete\_member\_note
- delete\_merge\_field
- delete\_order
- delete\_order\_line
- delete\_product
- delete\_segment
- delete\_segment\_member
- delete\_store
- delete\_template
- delete\_template\_folder
- delete\_variant
- delete\_webhook
- domain\_performance
- eepurl
- email\_activity
- facebook\_ad
- facebook\_ads
- file\_manager\_file
- file\_manager\_files
- file\_manager\_folder
- file\_manager\_folders
- growth\_history
- growth\_history\_month
- google\_ads
- google\_ads\_instance
- interest
- interest\_categories
- interest\_category
- interests
- landing\_page
- landing\_page\_content
- landing\_pages
- list
- list\_activity
- list\_clients
- lists
- locations
- member
- member\_activity
- member\_email\_activity
- member\_goals
- member\_note
- member\_notes
- member\_tags
- member\_sent\_to
- member\_unsubscribed
- members
- merge\_field
- merge\_fields
- order
- order\_line
- order\_lines
- orders
- pause\_automation
- pause\_automation\_email
- pause\_campaign
- ping
- product
- products
- publish\_landing\_page
- remove\_automation\_subscriber
- removed\_automation\_subscribers
- replicate\_campaign
- report
- reports
- reporting
- reporting\_facebook\_ad
- reporting\_facebook\_ad\_ecommerce
- reporting\_facebook\_ads
- reporting\_google\_ad
- reporting\_google\_ad\_ecommerce
- reporting\_google\_ads
- reporting\_landing\_page
- reporting\_landing\_pages
- resume\_campaign
- root
- schedule\_campaign
- search\_campaigns
- search\_members
- segment
- segment\_members
- segments
- send\_campaign
- sent\_to
- set\_campaign\_content
- start\_automation
- start\_automation\_email
- store
- stores
- sub\_reports
- template
- template\_default\_content
- template\_folder
- template\_folders
- templates
- test\_campaign
- twitter\_card
- twitter\_cards
- unpublish\_landing\_page
- unschedule\_campaign
- unsubscribed
- update\_batch\_webhook
- update\_campaign
- update\_campaign\_feedback
- update\_campaign\_folder
- update\_cart
- update\_cart\_line
- update\_customer
- update\_file\_manager\_file
- update\_file\_manager\_folder
- update\_interest
- update\_interest\_category
- update\_landing\_page
- update\_list
- update\_member
- update\_member\_note
- update\_merge\_field
- update\_order
- update\_order\_line
- update\_product
- update\_segment
- update\_store
- update\_template
- update\_template\_folder
- update\_variant
- upsert\_customer
- upsert\_member
- upsert\_variant
- variant
- variants
- verified\_domains
- verified\_domain\_name
- verify\_connected\_site
- verify\_domain\_name
- webhook
- webhooks

# INTERNALS

- commands

    Required by Web::API

## BUILD

basic configuration for the client API happens usually in the BUILD method when using Web::API

# BUGS

Please report any bugs or feature requests on GitHub's issue tracker [https://github.com/jdigory/p5-Mail-Chimp3/issues](https://github.com/jdigory/p5-Mail-Chimp3/issues).

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Mail::Chimp3

You can also look for information at:

- GitHub repository

    [https://github.com/jdigory/p5-Mail-Chimp3](https://github.com/jdigory/p5-Mail-Chimp3)

# CONTRIBUTORS

Peter Karman (pkarman)

# AUTHOR

Josh Lavin <digory@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Josh Lavin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
