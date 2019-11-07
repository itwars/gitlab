## Enable Redis
redis['enable'] = true

## Disable all other services
sidekiq['enable'] = false
gitlab_workhorse['enable'] = false
unicorn['enable'] = false
postgresql['enable'] = false
nginx['enable'] = false
prometheus['enable'] = false
alertmanager['enable'] = false
pgbouncer_exporter['enable'] = false
gitlab_exporter['enable'] = false
gitaly['enable'] = false

redis['bind'] = '0.0.0.0'
redis['port'] = 6379
redis['password'] = '{{redis_user_password}}'

gitlab_rails['auto_migrate'] = false
