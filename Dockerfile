FROM openjdk:21-slim

# Variables de entorno necesarias
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator

# Instalar dependencias básicas
RUN apt-get update && apt-get install -y \
    curl unzip git wget gradle \
    && apt-get clean

# Instalar Node.js 23.x
RUN curl -fsSL https://deb.nodesource.com/setup_23.x | bash - && \
    apt-get install -y nodejs

# Instalar Android Command Line Tools
RUN mkdir -p $ANDROID_HOME/cmdline-tools && cd $ANDROID_HOME/cmdline-tools && \
    wget https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip -O tools.zip && \
    unzip tools.zip && rm tools.zip && mv cmdline-tools latest

# Aceptar licencias e instalar build-tools
RUN yes | sdkmanager --sdk_root=${ANDROID_HOME} --licenses && \
    sdkmanager --sdk_root=${ANDROID_HOME} "platform-tools" "platforms;android-33" "build-tools;33.0.2"

# Instalar Capacitor globalmente
RUN npm install -g @capacitor/cli

# Crear carpeta de trabajo
WORKDIR /app

# Copiar proyecto
COPY . .

# Instalar dependencias y ver errores
RUN npm install || (cat npm-debug.log && exit 1)

# Construir la aplicación web
RUN npm run build || (cat npm-debug.log && exit 1)

# Sincronizar con Capacitor y ver errores
RUN npx cap sync android || (cat npm-debug.log && exit 1)

# Compilar la APK
WORKDIR /app/android
RUN ./gradlew assembleDebug
