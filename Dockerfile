FROM accenturepdc/adop-nginx:0.1.0

COPY resources/release_note/plugins.json /resources/release_note/plugins.json
COPY resources/scripts/entrypoint.sh /resources/scripts/entrypoint.sh
COPY resources/configuration/sites-enabled/tools-context.conf /resources/configuration/sites-enabled/tools-context.conf
COPY resources/release_note/index.html /resources/release_note/index.html
RUN rm -rf /resources/configuration/sites-enabled/selenium.conf

RUN chmod +x /resources/scripts/*

