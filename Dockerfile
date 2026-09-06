FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tehran

RUN apt-get update && apt-get install -y \
    nginx curl wget git gettext-base ca-certificates tzdata \
    && rm -rf /var/lib/apt/lists/*

# پوشه /etc/x-ui محلی است که باید به Volume متصل شود
RUN mkdir -p /etc/x-ui /usr/local/x-ui /var/log/nginx

# ۱. دانلود و راه‌اندازی سایت استتار
RUN rm -rf /usr/share/nginx/html/* \
    && git clone https://github.com/StartBootstrap/startbootstrap-creative.git /temp-site \
    && mv /temp-site/dist/* /usr/share/nginx/html/ \
    && rm -rf /temp-site

# ۲. نصب 3x-ui
WORKDIR /usr/local/x-ui
RUN wget https://github.com/MHSanaei/3x-ui/releases/download/v3.7.0/x-ui-linux-amd64.tar.gz \
    && tar -zxvf x-ui-linux-amd64.tar.gz -C /tmp/ \
    && mv /tmp/x-ui/x-ui . \
    && mv /tmp/x-ui/bin . \
    && rm -rf /tmp/x-ui x-ui-linux-amd64.tar.gz \
    && chmod +x x-ui

# ۳. کپی کردن فایل‌های تنظیمات
COPY nginx.conf /etc/nginx/nginx.conf.template
COPY entrypoint.sh /entrypoint.sh
COPY favicon.ico /usr/share/nginx/html/favicon.ico
RUN chmod +x /entrypoint.sh

WORKDIR /usr/local/x-ui
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
