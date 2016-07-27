# NAME

Mail::Chimp3 - An interface to mailchimp.com's RESTful Web API v3 using WEB::API

# VERSION

version 0.01

# SYNOPSIS

This is for the MailChimp API v3.0.

Please refer to the API documentation at 
[http://developer.mailchimp.com/documentation/mailchimp/reference/overview/](http://developer.mailchimp.com/documentation/mailchimp/reference/overview/)

    use Mail::Chimp3;

    my $mailchimp = Mail::Chimp3->new(
        api_key => $apikey,
    );

    my $response = $mailchimp->add_store(
        store_id => '123',
        cart_id  => '456',
    );

# METHODS

- add\_authorized\_app
- add\_automation\_subscriber
- add\_batch
- add\_cart
- add\_cart\_line
- add\_customer
- add\_list
- add\_member
- add\_merge\_field
- add\_order
- add\_order\_line
- add\_product
- add\_segment
- add\_store
- add\_variant
- authorized\_app
- authorized\_apps
- automation
- automation\_email
- automation\_emails
- automations
- automation\_subscriber
- automation\_subscribers
- batch
- batches
- cart
- cart\_line
- cart\_lines
- carts
- conversation
- conversations
- customer
- customers
- delete\_batch
- delete\_cart
- delete\_cart\_line
- delete\_customer
- delete\_list
- delete\_member
- delete\_merge\_field
- delete\_order
- delete\_order\_line
- delete\_product
- delete\_segment
- delete\_store
- delete\_variant
- list
- lists
- member
- members
- merge\_field
- merge\_fields
- order
- order\_line
- order\_lines
- orders
- pause\_automation
- pause\_automation\_email
- product
- products
- remove\_automation\_subscriber
- removed\_automation\_subscribers
- root
- segment
- segments
- start\_automation
- start\_automation\_email
- store
- stores
- update\_cart
- update\_cart\_line
- update\_customer
- update\_list
- update\_member
- update\_merge\_field
- update\_order
- update\_order\_line
- update\_segment
- update\_store
- update\_variant
- upsert\_customer
- upsert\_member
- upsert\_variant
- variant
- variants

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

# AUTHOR

Josh Lavin <digory@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Josh Lavin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
