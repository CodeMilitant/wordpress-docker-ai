# Dockerfile
FROM wordpress:latest

# Install wp-cli globally
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar \
 && mv wp-cli.phar /usr/local/bin/wp

# Copy in any custom wp-config overrides (e.g. PG driver, keys)
COPY wp-config-overrides.php /usr/src/wordpress/wp-config-overrides.php

# Install your desired plugins and set the default theme
# (runs on container build)
# Replace plugin-slug1 plugin-slug2 with your actual plugins
RUN set -eux; \
    docker-entrypoint.sh apache2-foreground & \
    WP_CLI_URL="http://localhost" \
    && until curl -sf $WP_CLI_URL/wp-admin/install.php; do sleep 1; done \
    && wp plugin install plugin-slug1 plugin-slug2 --activate --allow-root \
    && wp theme activate twentytwentythree --allow-root \
    && kill %1

# Expose & entrypoint inherited from base image
