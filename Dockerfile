FROM mediawiki

# Find a better way to handle this...
ENV GRAPHQL_VERSION debeb5c

RUN set -eux; \
	curl -fSL "https://extdist.wmflabs.org/dist/extensions/GraphQL-master-${GRAPHQL_VERSION}.tar.gz" -o /var/www/html/extensions/GraphQL.tar.gz; \
	tar -x --strip-components=1 -f /var/www/html/extensions/GraphQL.tar.gz; \
	rm /var/www/html/extensions/GraphQL.tar.gz;
