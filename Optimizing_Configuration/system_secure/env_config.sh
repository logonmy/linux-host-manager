######################
#LA/NMP环境信息检测收集
######################

######################
#第一、Apache信息
######################

#判断apache是否安装，安装为“ON”，未安装为“OFF”
apache_install
#判断apache的安装方式，RPM/APT或MAKE
apache_install_way
#检测apache的安装版本
apache_version
#检测apache启动关闭命令的绝对路径
start_path
stop_path
restart_path
#检测apache的主配置文件的路径
conf_path
#检测apache的vhost的路径,多个文件之间使用":"隔开
vhost_conf

#列出apache的主要配置项
ServerTokens OS

ServerRoot "/etc/httpd"

PidFile run/httpd.pid

Timeout 60

KeepAlive Off

MaxKeepAliveRequests 100

KeepAliveTimeout 15

Listen 80

User apache

Group apache

ServerAdmin root@localhost

UseCanonicalName Off

DocumentRoot "/var/www/html"

HostnameLookups Off

ErrorLog logs/error_log

ServerSignature On

LogLevel warn

#检测apache已经加载的so模块的名称，模块之间使用":"隔开
module

LoadModule auth_basic_module modules/mod_auth_basic.so
LoadModule auth_digest_module modules/mod_auth_digest.so
LoadModule authn_file_module modules/mod_authn_file.so
LoadModule authn_alias_module modules/mod_authn_alias.so
LoadModule authn_anon_module modules/mod_authn_anon.so
LoadModule authn_dbm_module modules/mod_authn_dbm.so
LoadModule authn_default_module modules/mod_authn_default.so
LoadModule authz_host_module modules/mod_authz_host.so
LoadModule authz_user_module modules/mod_authz_user.so
LoadModule authz_owner_module modules/mod_authz_owner.so
LoadModule authz_groupfile_module modules/mod_authz_groupfile.so
LoadModule authz_dbm_module modules/mod_authz_dbm.so
LoadModule authz_default_module modules/mod_authz_default.so
LoadModule ldap_module modules/mod_ldap.so
LoadModule authnz_ldap_module modules/mod_authnz_ldap.so
LoadModule include_module modules/mod_include.so
LoadModule log_config_module modules/mod_log_config.so
LoadModule logio_module modules/mod_logio.so
LoadModule env_module modules/mod_env.so
LoadModule ext_filter_module modules/mod_ext_filter.so
LoadModule mime_magic_module modules/mod_mime_magic.so
LoadModule expires_module modules/mod_expires.so
LoadModule deflate_module modules/mod_deflate.so
LoadModule headers_module modules/mod_headers.so
LoadModule usertrack_module modules/mod_usertrack.so
LoadModule setenvif_module modules/mod_setenvif.so
LoadModule mime_module modules/mod_mime.so
LoadModule dav_module modules/mod_dav.so
LoadModule status_module modules/mod_status.so
LoadModule autoindex_module modules/mod_autoindex.so
LoadModule info_module modules/mod_info.so
LoadModule dav_fs_module modules/mod_dav_fs.so
LoadModule vhost_alias_module modules/mod_vhost_alias.so
LoadModule negotiation_module modules/mod_negotiation.so
LoadModule dir_module modules/mod_dir.so
LoadModule actions_module modules/mod_actions.so
LoadModule speling_module modules/mod_speling.so
LoadModule userdir_module modules/mod_userdir.so
LoadModule alias_module modules/mod_alias.so
LoadModule substitute_module modules/mod_substitute.so
LoadModule rewrite_module modules/mod_rewrite.so
LoadModule proxy_module modules/mod_proxy.so
LoadModule proxy_balancer_module modules/mod_proxy_balancer.so
LoadModule proxy_ftp_module modules/mod_proxy_ftp.so
LoadModule proxy_http_module modules/mod_proxy_http.so
LoadModule proxy_ajp_module modules/mod_proxy_ajp.so
LoadModule proxy_connect_module modules/mod_proxy_connect.so
LoadModule cache_module modules/mod_cache.so
LoadModule suexec_module modules/mod_suexec.so
LoadModule disk_cache_module modules/mod_disk_cache.so
LoadModule cgi_module modules/mod_cgi.so
LoadModule version_module modules/mod_version.so

########################
#第二、Nginx信息
########################

#判断nginx是否安装，安装为“ON”，未安装为“OFF”
nginx_install
#判断apache的安装方式，RPM/APT或MAKE
nginx_install_way
#检测nginx的安装版本
nginx_version
#检测nginx启动关闭命令的绝对路径
start_path
stop_path
restart_path
#检测nginx的主配置文件的路径
conf_path
#检测nginx的vhost的路径,多个文件之间使用":"隔开
vhost_conf
#全局配置
user  nginx;
worker_processes  1;


###########################
#第三、PHP信息
###########################

#判断PHP是否安装，安装为“ON”，未安装为“OFF”
nginx_install
#判断PHP的安装方式，RPM/APT或MAKE
nginx_install_way
#检测PHP的安装版本
nginx_version
#检测PHP启动关闭命令的绝对路径
start_path
stop_path
restart_path
#检测PHP的主配置文件的路径
conf_path
#列出PHP的主要设置项

engine = On

short_open_tag = Off

asp_tags = Off

precision = 14

y2k_compliance = On

output_buffering = 4096

zlib.output_compression = Off

implicit_flush = Off

unserialize_callback_func =

serialize_precision = 100

allow_call_time_pass_reference = Off

safe_mode = Off

safe_mode_gid = Off

safe_mode_include_dir =

safe_mode_exec_dir =

safe_mode_allowed_env_vars = PHP_

safe_mode_protected_env_vars = LD_LIBRARY_PATH

disable_functions =

disable_classes =

expose_php = On

max_execution_time = 30     

max_input_time = 60

memory_limit = 128M

error_reporting = E_ALL & ~E_DEPRECATED

display_errors = Off

display_startup_errors = Off

log_errors = On

log_errors_max_len = 1024

ignore_repeated_errors = Off

ignore_repeated_source = Off

report_memleaks = On

track_errors = Off

html_errors = Off

variables_order = "GPCS"

request_order = "GP"

register_globals = Off

register_long_arrays = Off

register_argc_argv = Off

auto_globals_jit = On

post_max_size = 8M

magic_quotes_gpc = Off

magic_quotes_runtime = Off

magic_quotes_sybase = Off

auto_prepend_file =

auto_append_file =

default_mimetype = "text/html"

doc_root =

user_dir =

enable_dl = Off


file_uploads = On

upload_max_filesize = 2M

allow_url_fopen = On

allow_url_include = Off

default_socket_timeout = 60

[Date]

[filter]

[iconv]

[intl]

[sqlite]

[sqlite3]

[Pcre]

[Pdo]

[Phar]

[Syslog]
define_syslog_variables  = Off

[mail function]
SMTP = localhost
smtp_port = 25

sendmail_path = /usr/sbin/sendmail -t -i

mail.add_x_header = On

[SQL]
sql.safe_mode = Off

[ODBC]

odbc.allow_persistent = On

odbc.check_persistent = On

odbc.max_persistent = -1

odbc.max_links = -1

odbc.defaultlrl = 4096

odbc.defaultbinmode = 1


[MySQL]
mysql.allow_persistent = On

mysql.max_persistent = -1

mysql.max_links = -1

mysql.default_port =

mysql.default_socket =

mysql.default_host =

mysql.default_user =

mysql.default_password =

mysql.connect_timeout = 60

mysql.trace_mode = Off

[MySQLi]

mysqli.max_links = -1

mysqli.default_port = 3306

mysqli.default_socket =

mysqli.default_host =

mysqli.default_user =

mysqli.default_pw =

mysqli.reconnect = Off

[PostgresSQL]
pgsql.allow_persistent = On

pgsql.auto_reset_persistent = Off

pgsql.max_persistent = -1

pgsql.max_links = -1

pgsql.ignore_notice = 0

pgsql.log_notice = 0

[Sybase-CT]
sybct.allow_persistent = On

sybct.max_persistent = -1

sybct.max_links = -1

sybct.min_server_severity = 10

sybct.min_client_severity = 10


[bcmath]
bcmath.scale = 0

[browscap]

[Session]
session.save_handler = files

session.save_path = "/var/lib/php/session"

session.use_cookies = 1

session.use_only_cookies = 1

session.name = PHPSESSID

session.auto_start = 0

session.cookie_lifetime = 0

session.cookie_path = /

session.cookie_domain =

session.cookie_httponly = 

session.serialize_handler = php

session.gc_probability = 1

session.gc_divisor = 1000

session.gc_maxlifetime = 1440


session.bug_compat_42 = Off

session.bug_compat_warn = Off

session.referer_check =

session.entropy_length = 0

session.entropy_file =

session.cache_limiter = nocache

session.cache_expire = 180

session.use_trans_sid = 0

session.hash_function = 0

session.hash_bits_per_character = 5

url_rewriter.tags = "a=href,area=href,frame=src,input=src,form=fakeentry"

[MSSQL]
mssql.allow_persistent = On

mssql.max_persistent = -1

mssql.max_links = -1

mssql.min_error_severity = 10

mssql.min_message_severity = 10

mssql.compatability_mode = Off

mssql.secure_connection = Off


[Assertion]

[COM]

[mbstring]

[gd]

[exif]

[Tidy]

tidy.clean_output = Off

[soap]

soap.wsdl_cache_enabled=1

soap.wsdl_cache_dir="/tmp"

soap.wsdl_cache_ttl=86400

[sysvshm]

######################
#第四、MySql信息
######################

#判断Mysql是否安装，安装为“ON”，未安装为“OFF”
mysql_install
#判断Mysql的安装方式，RPM/APT或MAKE
mysql_install_way
#检测Mysql的安装版本
mysql_version
#检测Mysql启动关闭命令的绝对路径
start_path
stop_path
restart_path
#检测Mysql的主配置文件的路径
conf_path
#列出Mysql的主要设置项
[mysqld]
port            = 3306
socket          = /var/lib/mysql/mysql.sock
skip-locking
key_buffer_size = 16M
max_allowed_packet = 1M
table_open_cache = 64
sort_buffer_size = 512K
net_buffer_length = 8K
read_buffer_size = 256K
read_rnd_buffer_size = 512K
myisam_sort_buffer_size = 8M
