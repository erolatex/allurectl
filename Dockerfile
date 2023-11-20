# Использование базового образа
FROM docker:23

# Установка необходимых пакетов
RUN apk add bash git gettext curl

# Добавление бинарного файла allurectl
ARG TARGETARCH
ARG LATEST_GITHUB_TAG
ADD https://github.com/allure-framework/allurectl/releases/download/${LATEST_GITHUB_TAG}/allurectl_linux_${TARGETARCH} /bin/allurectl

# Выдача прав на выполнение файла
RUN chmod +x /bin/allurectl
