package WebService::MailChimp;

use Mouse;

with 'Web::API';

our $VERSION = '0.1';

=head1 SYNOPSIS

Please refer to the API documentation at 
L<http://developer.mailchimp.com/documentation/mailchimp/reference/overview/>

    use WebService::MailChimp;

    my $mailchimp = WebService::MailChimp->new(
        api_key => $apikey,
    );

    my $response = $mailchimp->add_store(
        store_id => '123',
        cart_id  => '456',
    );

=head1 SUBROUTINES/METHODS

=head2 add_segment

=head2 add_variant

=head2 customers

=head2 customer

=head2 cart

=head2 update_segment

=head2 update_member

=head2 delete_variant

=head2 update_customer

=head2 add_product

=head2 delete_member

=head2 delete_list

=head2 delete_store

=head2 pause_automation

=head2 add_cart_line

=head2 list

=head2 upsert_member

=head2 upsert_variant

=head2 update_cart_line

=head2 batch

=head2 add_member

=head2 variants

=head2 root

=head2 update_variant

=head2 order_lines

=head2 conversation

=head2 delete_order_line

=head2 member

=head2 delete_segment

=head2 add_cart

=head2 add_order_line

=head2 delete_customer

=head2 automation

=head2 segments

=head2 update_merge_field

=head2 merge_field

=head2 add_merge_field

=head2 add_batch

=head2 lists

=head2 cart_line

=head2 segment

=head2 add_list

=head2 variant

=head2 automation_email

=head2 delete_batch

=head2 products

=head2 remove_automation_subscriber

=head2 update_order

=head2 removed_automation_subscribers

=head2 add_authorized_app

=head2 authorized_app

=head2 update_order_line

=head2 product

=head2 authorized_apps

=head2 add_automation_subscriber

=head2 update_cart

=head2 batches

=head2 update_store

=head2 start_automation_email

=head2 delete_product

=head2 delete_cart_line

=head2 conversations

=head2 start_automation

=head2 delete_cart

=head2 cart_lines

=head2 add_order

=head2 automations

=head2 merge_fields

=head2 store

=head2 delete_merge_field

=head2 order_line

=head2 orders

=head2 automation_subscriber

=head2 automation_subscribers

=head2 stores

=head2 delete_order

=head2 order

=head2 automation_emails

=head2 pause_automation_email

=head2 members

=head2 update_list

=head2 carts

=head2 upsert_customer

=head2 add_store

=head2 add_customer

=cut

has 'commands' => (
    is      => 'rw',
    default => sub {
        {
            root => { path => '/' },

            # authorized apps
            authorized_app     => { path => 'authorized-apps/:app_id' },
            authorized_apps    => { path => 'authorized-apps' },
            add_authorized_app => {
                method    => 'POST',
                path      => 'authorized-apps',
                mandatory => [
                    'client_id',
                    'client_secret',
                ],
            },

            # automations
            automation       => { path => 'automations/:workflow_id' },
            automations      => { path => 'automations' },
            pause_automation => {
                method => 'POST',
                path   => 'automations/:workflow_id/actions/pause-all-emails',
            },
            start_automation => {
                method => 'POST',
                path   => 'automations/:workflow_id/actions/start-all-emails',
            },

            # automation emails
            automation_email       => { path => 'automations/:workflow_id/emails/:workflow_email_id' },
            automation_emails      => { path => 'automations/:workflow_id/emails' },
            pause_automation_email => {
                method => 'POST',
                path   => 'automations/:workflow_id/emails/:workflow_email_id/actions/pause',
            },
            start_automation_email => {
                method => 'POST',
                path   => 'automations/:workflow_id/emails/:workflow_email_id/actions/start',
            },
            add_automation_subscriber => {
                method    => 'POST',
                path      => 'automations/:workflow_id/emails/:workflow_email_id/queue',
                mandatory => ['email_address'],
            },
            automation_subscriber => {
                path      => 'automations/:workflow_id/emails/:workflow_email_id/queue/:subscriber_hash',
            },
            automation_subscribers => {
                path      => 'automations/:workflow_id/emails/:workflow_email_id/queue',
            },
            remove_automation_subscriber => {
                method    => 'POST',
                path      => 'automations/:workflow_id/removed-subscribers',
                mandatory => ['email_address'],
            },
            removed_automation_subscribers => { path => 'automations/:workflow_id/removed-subscribers' },

            # batch
            batch     => { path => 'batches/:batch_id' },
            batches   => { path => 'batches' },
            add_batch => {
                method    => 'POST',
                path      => 'batches',
                mandatory => ['operations'],
            },
            delete_batch => {
                method => 'DELETE',
                path   => 'batches/:batch_id',
            },

            # campaign folders
            # TODO

            # campaigns
            # TODO

            # conversations
            # TODO
            conversation  => { path => 'conversations/:conversation_id' },
            conversations => { path => 'conversations' },

            # ecommerce stores
            store     => { path => 'ecommerce/stores/:store_id' },
            stores    => { path => 'ecommerce/stores' },
            add_store => {
                method    => 'POST',
                path      => 'ecommerce/stores',
                mandatory => [
                    'id',
                    'list_id',
                    'name',
                    'currency_code',
                ],
            },
            update_store => {
                method => 'PATCH',
                path   => 'ecommerce/stores/:store_id',
            },
            delete_store => {
                method => 'DELETE',
                path   => 'ecommerce/stores/:store_id',
            },

            # ecommerce carts
            cart     => { path => 'ecommerce/stores/:store_id/carts/:cart_id' },
            carts    => { path => 'ecommerce/stores/:store_id/carts' },
            add_cart => {
                method    => 'POST',
                path      => 'ecommerce/stores/:store_id/carts',
                mandatory => ['customer'],
            },
            update_cart => {
                method => 'PATCH',
                path   => 'ecommerce/stores/:store_id/carts/:cart_id',
            },
            delete_cart => {
                method => 'DELETE',
                path   => 'ecommerce/stores/:store_id/carts/:cart_id',
            },

            # ecommerce cart lines
            cart_line     => { path => 'ecommerce/stores/:store_id/carts/:cart_id/lines/:line_id' },
            cart_lines    => { path => 'ecommerce/stores/:store_id/carts/:cart_id/lines' },
            add_cart_line => {
                method    => 'POST',
                path      => 'ecommerce/stores/:store_id/carts/:cart_id/lines',
                mandatory => [qw/
                    id
                    product_id
                    product_variant_id
                    quantity
                    price
                /],
            },
            update_cart_line => {
                method => 'PATCH',
                path   => 'ecommerce/stores/:store_id/carts/:cart_id/lines/:line_id',
            },
            delete_cart_line => {
                method => 'DELETE',
                path   => 'ecommerce/stores/:store_id/carts/:cart_id/lines/:line_id',
            },

            # ecommerce customers
            customer     => { path => 'ecommerce/stores/:store_id/customers/:customer_id' },
            customers    => { path => 'ecommerce/stores/:store_id/customers' },
            add_customer => {
                method    => 'POST',
                path      => 'ecommerce/stores/:store_id/customers',
                mandatory => [qw/
                    id
                    email_address
                    opt_in_status
                /],
            },
            update_customer => {
                method => 'PATCH',
                path   => 'ecommerce/stores/:store_id/customers/:customer_id',
            },
            upsert_customer => {
                method    => 'PUT',
                path      => 'ecommerce/stores/:store_id/customers/:customer_id',
                mandatory => [qw/
                    id
                    email_address
                    opt_in_status
                /],
            },
            delete_customer => {
                method => 'DELETE',
                path   => 'ecommerce/stores/:store_id/customers/:customer_id',
            },

            # ecommerce orders
            order     => { path => 'ecommerce/stores/:store_id/orders/:order_id' },
            orders    => { path => 'ecommerce/stores/:store_id/orders' },
            add_order => {
                method    => 'POST',
                path      => 'ecommerce/stores/:store_id/orders',
                mandatory => [qw/
                    id
                    customer
                    currency_code
                    order_total
                    lines
                /],
            },
            update_order => {
                method => 'PATCH',
                path   => 'ecommerce/stores/:store_id/orders/:order_id',
            },
            delete_order => {
                method => 'DELETE',
                path   => 'ecommerce/stores/:store_id/orders/:order_id',
            },

            # ecommerce order lines
            order_line     => { path => 'ecommerce/stores/:store_id/orders/:order_id/lines/:line_id' },
            order_lines    => { path => 'ecommerce/stores/:store_id/orders/:order_id/lines' },
            add_order_line => {
                method    => 'POST',
                path      => 'ecommerce/stores/:store_id/orders/:order_id/lines',
                mandatory => [qw/
                    id
                    product_id
                    product_variant_id
                    quantity
                    price
                /],
            },
            update_order_line => {
                method => 'PATCH',
                path   => 'ecommerce/stores/:store_id/orders/:order_id/lines/:line_id',
            },
            delete_order_line => {
                method => 'DELETE',
                path   => 'ecommerce/stores/:store_id/orders/:order_id/lines/:line_id',
            },

            # ecommerce products
            product     => { path => 'ecommerce/stores/:store_id/products/:product_id' },
            products    => { path => 'ecommerce/stores/:store_id/products' },
            add_product => {
                method    => 'POST',
                path      => 'ecommerce/stores/:store_id/products',
                mandatory => [
                    'id',
                    'title',
                    'variants',
                ],
            },
            delete_product => {
                method => 'DELETE',
                path   => 'ecommerce/stores/:store_id/products/:product_id',
            },

            # ecommerce product variants
            variant     => { path => 'ecommerce/stores/:store_id/products/:product_id/variants/:variant_id' },
            variants    => { path => 'ecommerce/stores/:store_id/products/:product_id/variants' },
            add_variant => {
                method    => 'POST',
                path      => 'ecommerce/stores/:store_id/products/:product_id/variants',
                mandatory => [
                    'id',
                    'title',
                ],
            },
            update_variant => {
                method => 'PATCH',
                path   => 'ecommerce/stores/:store_id/products/:product_id/variants/:variant_id',
            },
            upsert_variant => {
                method    => 'PUT',
                path      => 'ecommerce/stores/:store_id/products/:product_id/variants/:variant_id',
                mandatory => [
                    'id',
                    'title',
                ],
            },
            delete_variant => {
                method => 'DELETE',
                path   => 'ecommerce/stores/:store_id/products/:product_id/variants/:variant_id',
            },

            # file manager files
            #TODO

            # file manager folders
            #TODO

            # lists
            # TODO
            list     => { path => 'lists/:list_id' },
            lists    => { path => 'lists' },
            add_list => {
                method    => 'POST',
                path      => 'lists',
                mandatory => [qw/
                    name
                    contact
                    permission_reminder
                    campaign_defaults
                    email_type_option
                /],
            },
            update_list => {
                method    => 'PATCH',
                path      => 'lists/:list_id',
                mandatory => [qw/
                    name
                    contact
                    permission_reminder
                    campaign_defaults
                    email_type_option
                /],
            },
            delete_list => {
                method => 'DELETE',
                path   => 'lists/:list_id',
            },

            # list members
            member     => { path => 'lists/:list_id/members/:subscriber_hash' },
            members    => { path => 'lists/:list_id/members' },
            add_member => {
                method    => 'POST',
                path      => 'lists/:list_id/members',
                mandatory => [
                    'status',
                    'email_address',
                ],
            },
            update_member => {
                method => 'PATCH',
                path   => 'lists/:list_id/members/:subscriber_hash',
            },
            upsert_member => {
                method    => 'PUT',
                path      => 'lists/:list_id/members/:subscriber_hash',
                mandatory => [qw/
                    email_address
                    status_if_new
                /],
            },
            delete_member => {
                method => 'DELETE',
                path   => 'lists/:list_id/members/:subscriber_hash',
            },

            # merge fields
            merge_field     => { path => 'lists/:list_id/merge-fields/:merge_id' },
            merge_fields    => { path => 'lists/:list_id/merge-fields' },
            add_merge_field => {
                method    => 'POST',
                path      => 'lists/:list_id/merge-fields',
                mandatory => [
                    'name',
                    'type',
                ],
            },
            update_merge_field => {
                method => 'PATCH',
                path   => 'lists/:list_id/merge-fields/:merge_id',
            },
            delete_merge_field => {
                method => 'DELETE',
                path   => 'lists/:list_id/merge-fields/:merge_id',
            },

            # segments
            segment     => { path => 'lists/:list_id/segments/:segment_id' },
            segments    => { path => 'lists/:list_id/segments' },
            add_segment => {
                method    => 'POST',
                path      => 'lists/:list_id/segments',
                mandatory => ['name'],
            },
            update_segment => {
                method => 'PATCH',
                path   => 'lists/:list_id/segments/:segment_id',
            },
            delete_segment => {
                method => 'DELETE',
                path   => 'lists/:list_id/segments/:segment_id',
            },

            # reports
            #TODO

            # template folders
            #TODO

            # templates
            #TODO
        };
    },
);

has 'api_version' => (
    is      => 'ro',
    isa     => 'Num',
    default => sub { '3.0' },
);

has 'api_key' => (
    is      => 'rw',
    isa     => 'Str',
    trigger => sub {
        my ( $self, $val ) = @_;
        my ($datacenter) = ( $val =~ /\-(\w+)$/ );
        $self->datacenter($datacenter);
    },
);

has 'datacenter' => (
    is      => 'rw',
    isa     => 'Str',
    default => sub { 'us1 ' },
);

=head1 INTERNALS

=cut

sub commands {
    my ($self) = @_;
    return $self->commands;
}

=head2 BUILD

basic configuration for the client API happens usually in the BUILD method when using Web::API

=cut

sub BUILD {
    my ($self) = @_;

    $self->user_agent(__PACKAGE__ . ' ' . $VERSION);
    $self->base_url('https://' . $self->datacenter . '.api.mailchimp.com/' . $self->api_version . '/');
    $self->auth_type('basic');
    $self->user('anystring');
    $self->content_type('application/json');

    return $self;
}

=head1 BUGS

Probably.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc WebService::MailChimp

=cut

1;
