FROM qwan/desktop as java 

RUN apt-get -qq update && \
    apt-get -qq install openjdk-17-jdk maven ant && \
    apt-get install -y apt-transport-https dirmngr gnupg ca-certificates curl rsync vim emacs libgbm-dev unzip && \
    rm -rf /var/lib/apt/lists/*

ENV GRADLE_VERSION=7.6
RUN curl --location https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip --output gradle.zip
RUN unzip -d /opt/gradle gradle.zip && rm gradle.zip

COPY idea.conf /app/conf.d
COPY --chown=experience:experience fluxbox/menu .fluxbox/menu

USER experience

ENV INTELLIJ_BUILD=2022.3
ENV INTELLIJ_BUILD_NR=223.7571.182
RUN curl --location https://download.jetbrains.com/idea/ideaIC-${INTELLIJ_BUILD}.tar.gz --output idea.tar.gz
RUN tar -xvf idea.tar.gz  && mv ./idea-IC-${INTELLIJ_BUILD_NR} ./idea && rm idea.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/default-java
ENV PATH=${PATH}:${JAVA_HOME}/bin:/opt/gradle/gradle-${GRADLE_VERSION}/bin
