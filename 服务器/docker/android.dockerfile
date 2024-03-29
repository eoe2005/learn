FROM alpine
MAINTAINER eoe2005
ENV PUB_HOSTED_URL=https://pub.flutter-io.cn
ENV FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk add bash git curl  openjdk17-jdk && mkdir /sdk && mkdir /down && cd down && wget -O g751.zip https://downloads.gradle-dn.com/distributions/gradle-7.5.1-bin.zip && wget -O commandlinetools.zip https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip &&  unzip commandlinetools.zip && unzip g751.zip && mv gradle-7.5.1 /sdk/gradle751  && mkdir /sdk/android && echo "yes" /down/cmdline-tools/bin/sdkmanager --sdk_root=/sdk/android --list  ; echo "yes" | /down/cmdline-tools/bin/sdkmanager --sdk_root=/sdk/android --install "build-tools;33.0.0" ; /down/cmdline-tools/bin/sdkmanager --sdk_root=/sdk/android --install "cmake;3.22.1" ; /down/cmdline-tools/bin/sdkmanager --sdk_root=/sdk/android --install "cmdline-tools;latest";  /down/cmdline-tools/bin/sdkmanager --sdk_root=/sdk/android --install "platform-tools" ; /down/cmdline-tools/bin/sdkmanager --sdk_root=/sdk/android --install "platforms;android-33" && rm -Rf /down && && git clone --depth 1 --branch 3.3.3 https://github.com/flutter/flutter.git /sdk/flutter3 &&  yes | /sdk/flutter3/bin/flutter doctor --android-licenses && /sdk/flutter3/bin/flutter doctor

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=$JAVA_HOME/lib
ENV GRADLE_HOME=/sdk/gradle751
ENV ANDROID_SDK_ROOT=/sdk/android
ENV FLUTTER_HOME=/sdk/flutter3
ENV PATH ${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin:$JAVA_HOME/bin:$GRADLE_HOME/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/build-tools/33.0.0:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH

WORKDIR /apps
