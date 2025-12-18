FROM ghcr.io/graalvm/jdk-community:25.0.1
RUN cd /usr/lib64 && curl -L https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.9%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.9_10.tar.gz | tar xvz
ENV JAVA_HOME="/usr/lib64/jdk-21.0.9+10"
ENV PATH="$JAVA_HOME/bin:$PATH"
ENV GRAALVM_HOME="/usr/lib64/graalvm/graalvm-community-java25"
