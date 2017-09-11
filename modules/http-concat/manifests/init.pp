class vip-http-concat(
  $config
) {
  notify { "Adding http concat location to hosts": }

  define concat_location {
    file { "/etc/nginx/sites-available/${name}.d/http-concat":
      ensure  => present,
      content => template('vip-http-concat/http-concat'),
      require => File["/etc/nginx/sites-available/${name}.d"],
      notify  => Service['nginx'],
    }
  }

  concat_location { $config['hosts']: }
}
