This is a testing project based on an internal project in order to debug the error

````
$ rake --trace
syck has been removed, psych is used instead
[fog][WARNING] Unable to load the 'unf' gem. Your AWS strings may not be properly encoded.
Digest::Digest is deprecated; use Digest
** Invoke default (first_time)
** Invoke cane (first_time)
** Invoke cane:quality (first_time)
** Execute cane:quality
rake aborted!
SystemStackError: stack level too deep
/Users/me/stacklevel_cane_fail/tmp/bundle/ruby/2.1.0/gems/cane-2.6.0/lib/cane/abc_check.rb:92
Tasks: TOP => default => cane => cane:quality
$
````
