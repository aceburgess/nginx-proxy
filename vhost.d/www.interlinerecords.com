rewrite (?i)^/islandlight($|/$) http://interlinerecords.bandcamp.com/track/island-light redirect;

proxy_set_header X-Forwarded-Proto $scheme;
