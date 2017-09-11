Chassis HTTP Concat
===================

This is a simple extension that adds local nginx rewrite rules for the [WordPress VIP HTTP Concat addon](https://github.com/Automattic/nginx-http-concat) present on VIP Go and VIP Classic environments.

It's important to test with this locally as file concatenation can break your js load order and cause errors that you'll only find on production.

## Installation

Clone this repo into your chassis extensions directory and re-provision the box.

```bash
cd path/to/chassis/checkout
git clone git@github.com:humanmade/chassis-http-concat.git extensions/http-concat
vagrant provision
```

Or you can add this repo to you `config.yaml` or `config.local.yaml` under extensions:

```yaml
extensions:
   - humanmade/chassis-http-concat
```

## Usage

To make your local environment use HTTP Concat you either need to require the plugin files `cssconcat.php` and `jsconcat.php` directly (if they are under `mu-plugins` for example) or you can activate the plugins via the admin if you installed it to the regular plugins directory.

In a VIP based repository you can also add the following to your config however this may have other unexpected side effects:

```php
define( 'WPCOM_IS_VIP_ENV', true );
```
