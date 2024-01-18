# A puppet manuscript to replace a line in a file on a server

$file_to_edit = '/var/www/html/wp-settings.php'

file { 'wp_settings_file':
    path    => $file_to_edit,
    ensure  => file,
}

#replace line containing "phpp" with "php"

exec { 'replace_line':
    command => "sed -i 's/phpp/php/g' ${file_to_edit}",
    path    => ['/bin', '/usr/bin'],
    require => File[$file_to_edit],
}
