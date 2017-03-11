## Start of configuration add by letsencrypt container
location /.well-known/acme-challenge/ {
    allow all;
    root /usr/share/nginx/html;
    try_files $uri =404;
    break;
}
## End of configuration add by letsencrypt container
location /static {
    alias /usr/src/app/static;
}

client_max_body_size 100M;
