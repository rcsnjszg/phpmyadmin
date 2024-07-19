FROM phpmyadmin:5.2.1-apache

RUN apt update && apt install -y unzip && \
    curl -O https://files.phpmyadmin.net/themes/boodark/1.1.0/boodark-1.1.0.zip && \
    unzip boodark-1.1.0.zip -d themes && \
    sed -i '/"name": "BooDark",/c\   \"name": "BooDark Cyan",' themes/boodark/theme.json && \
    curl -O https://files.phpmyadmin.net/themes/boodark-teal/1.1.0/boodark-teal-1.1.0.zip && \
    unzip boodark-teal-1.1.0.zip -d themes && \
    sed -i '/"name": "BooDark",/c\   \"name": "BooDark Teal",' themes/boodark-teal/theme.json && \
    curl -O https://files.phpmyadmin.net/themes/boodark-orange/1.1.0/boodark-orange-1.1.0.zip  && \
    unzip boodark-orange-1.1.0.zip -d themes  && \
    sed -i '/"name": "BooDark",/c\   \"name": "BooDark Orange",' themes/boodark-orange/theme.json && \
    echo ".CodeMirror-code {font-size: 1.5rem;}"  >> themes/pmahomme/css/theme.css  && \
    rm boodark-1.1.0.zip && \
    rm boodark-teal-1.1.0.zip && \
    rm boodark-orange-1.1.0.zip && \
    apt remove -y --purge unzip