# Disable all components except PostgreSQL
roles ['postgres_role']
repmgr['enable'] = false
consul['enable'] = false
prometheus['enable'] = false
alertmanager['enable'] = false
pgbouncer_exporter['enable'] = false
redis_exporter['enable'] = false
gitlab_exporter['enable'] = false

postgresql['listen_address'] = '0.0.0.0'
postgresql['port'] = 5432

# Replace POSTGRESQL_PASSWORD_HASH with a generated md5 value
postgresql['sql_user_password'] = '{{sql_user_password| hash('md5')}}'

# Replace XXX.XXX.XXX.XXX/YY with Network Address
# ????
postgresql['trust_auth_cidr_addresses'] = %w({{trust_auth_cidr_addresses}})

# Disable automatic database migrations
gitlab_rails['auto_migrate'] = false
