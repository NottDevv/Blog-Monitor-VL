#!/bin/bash

# تنظیم متغیرهای محیطی (قابل تنظیم از پنل سرویس)
export PORT=${PORT:-8080}
export FINAL_TITLE=${CUSTOM_TITLE:-Web Monitor}
export PANEL_PATH=${PANEL_PATH:-/dashboard/}
export PANEL_PATH_NO_SLASH="${PANEL_PATH%/}"
export SUB_PATH=${SUB_PATH:-/sub/}
export SUB_PORT=${SUB_PORT:-2065}
export API_PREFIX=${API_PREFIX:-/api/v}

echo ">>> Starting setup with Persistent Volume Support..."

# ----------------------------------------------------------------
# بخش 1: مدیریت دیتابیس روی Volume
# ----------------------------------------------------------------
if [ ! -f "/etc/x-ui/x-ui.db" ]; then
    echo ">>> Initializing fresh database on volume..."
    touch /etc/x-ui/x-ui.db
else
    echo ">>> Persistent database found on volume. Skipping initialization."
fi

# ایجاد لینک برای دسترسی پنل به دیتابیس در Volume
ln -sf /etc/x-ui/x-ui.db /usr/local/x-ui/x-ui.db

# ----------------------------------------------------------------
# بخش 2: تنظیمات Nginx (داینامیک کردن مسیرها)
# ----------------------------------------------------------------
cp /etc/nginx/nginx.conf.template /etc/nginx/nginx.conf

# جایگذاری متغیرها در فایل تنظیمات Nginx
sed -i "s|_TITLE_HERE_|$FINAL_TITLE|g" /etc/nginx/nginx.conf
sed -i "s|_PANEL_PATH_|$PANEL_PATH|g" /etc/nginx/nginx.conf
sed -i "s|_PANEL_PATH_NO_SLASH_|$PANEL_PATH_NO_SLASH|g" /etc/nginx/nginx.conf
sed -i "s|_SUB_PATH_|$SUB_PATH|g" /etc/nginx/nginx.conf
sed -i "s|_SUB_PORT_|$SUB_PORT|g" /etc/nginx/nginx.conf
sed -i "s|_API_PREFIX_|$API_PREFIX|g" /etc/nginx/nginx.conf

# ----------------------------------------------------------------
# بخش 3: تنظیمات پنل x-ui
# ----------------------------------------------------------------
echo "Configuring x-ui..."
cd /usr/local/x-ui

./x-ui setting -port 3000
./x-ui setting -webBasePath "$PANEL_PATH"

# ----------------------------------------------------------------
# بخش 4: اجرا
# ----------------------------------------------------------------
echo "Starting x-ui backend..."
./x-ui > /var/log/x-ui.log 2>&1 &

sleep 5

if pgrep -x "x-ui" > /dev/null; then
    echo "x-ui started successfully!"
else
    echo "ERROR: x-ui failed to start. Logs:"
    cat /var/log/x-ui.log
    exit 1
fi

echo ">>> Starting Nginx on port 8080..."
nginx -c /etc/nginx/nginx.conf -g 'daemon off;'
