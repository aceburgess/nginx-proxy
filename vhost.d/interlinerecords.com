return 301 $scheme://www.interlinerecords.com$request_uri;
rewrite (?i)^/islandlight($|/$) http://interlinerecords.bandcamp.com/track/island-light redirect;
rewrite (?i)^/launch($|/$) https://interline.splashthat.com redirect;
rewrite (?i)^/nov10($|/$) https://interline.splashthat.com redirect;

proxy_set_header X-Forwarded-Proto $scheme;
