<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=250&section=header&text=NotDev%203x-ui%20Stealth&fontSize=50&animation=fadeIn&fontAlignY=38&desc=Supports%20PaaS%20with%20persistent%20storage&descAlignY=60&descAlign=50" alt="Header Animation" />
</p>

<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=20&pause=1000&color=3B82F6&center=true&vCenter=true&width=600&lines=3x-ui%20Smart%20Reverse%20Proxy;Stealth%20System%20with%20Nginx;Dockerized%203x-ui%20with%20Dynamic%20Ports;Automated%20database%20configuration;Support%20persistent%20storage" alt="Typing SVG" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker" />
  <img src="https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white" alt="Nginx" />
  <img src="https://img.shields.io/badge/GNU%20Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash" />
  <img src="https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white" alt="Go" />
  <img src="https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white" alt="SQLite" />
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" alt="HTML5" />
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript" />
  <img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Ubuntu" />
</p>

<h3 align="center">
  <mark>یک پکیج راه‌اندازی بهینه برای اجرای پنل 3x-ui روی پلتفرم‌های ابری با حافظه دائمی</mark>
</h3>

---

<div dir="rtl">

## ✨ قابلیت‌ها

### 🌐 وب‌سرور چندمنظوره (Multi-Protocol Nginx)

- 🧰 پیکربندی جامع `nginx.conf` جهت مدیریت همزمان پروتکل‌های مختلف.
- 🔌 پروتکل **WebSocket (WS) & HTTPUpgrade:** پشتیبانی از WS و حالت بهینه‌ HTTPUpgrade برای پایداری شبکه.
- ⚡ پروتکل **XHTTP:** پشتیبانی در تمام مدهای `packet-up` و `stream-up` با قابلیت `request_buffering off`.
- 🛡️ پروتکل **gRPC:** هندل کردن ترافیک gRPC در پورت و مسیر مجزا.
- 🔀 **مسیردهی هوشمند (Regex Routing):** هدایت خودکار ترافیک به پورت‌های داخلی بر اساس URL؛ برای مثال `/api/v8443/` به پورت `8443`، بدون نیاز به تغییر کانفیگ Nginx.

### 🎭 استتار و شخصی‌سازی (Cloaking & Branding)

- 🏛️ **صفحه فرود (Landing Page):** ادغام خودکار قالب Bootstrap در صفحه اصلی جهت ایجاد سایت استتار معتبر و عبور از سیستم‌های DPI.
- 🎨 **تزریق هویت (Injection):** تغییر داینامیک تایتل مرورگر و Favicon پنل بر اساس متغیر `CUSTOM_TITLE` با استفاده از `sub_filter`.

### 🐳 زیرساخت Docker و CI/CD

- 📦 متغیر **Dockerization:** استفاده از Custom Dockerfile جهت دسترسی و کنترل کامل روی لایه‌های سیستم‌عامل.
- 🚀 متغیر **GitHub Actions:** اتوماسیون کامل `docker-publish.yml` برای بیلد و انتشار خودکار ایمیج در GHCR.

### ⚙️ متغیرها و تنظیمات داینامیک

- 🔒 **مسیر داینامیک پنل (`PANEL_PATH`):** قابلیت تغییر آدرس ورودی پنل جهت جلوگیری از اسکنرها و حملات Brute-Force.
- 🔗 **تنظیمات پویای سابسکریپشن (`SUB_PATH` & `SUB_PORT`):** شخصی‌سازی مسیر و پورت داخلی لینک سابسکریپشن از طریق متغیرها.
- 📡 **پیشوند اتصال قابل تنظیم (`API_PREFIX`):** تغییر داینامیک عبارت قبل از پورت؛ مانند `/api/v/`، جهت ایجاد الگوهای ترافیکی جدید.
- 💾 **یکپارچه‌سازی با Volume:** ذخیره و لینک خودکار دیتابیس در مسیر `/etc/x-ui/` جهت ماندگاری داده‌ها هنگام ریستارت کانتینر.

---

## 🛠️ راهنمای کامل راه‌اندازی پروژه از صفر

### 📌 مرحله ۱: آماده‌سازی در GitHub

1. **ساخت مخزن خصوصی (Private Repository):**  
   یک ریپازیتوری بسازید؛ مثلاً `x-project`.

### 📁 مرحله ۲: ساخت فایل‌های مخزن

فایل‌های زیر را در ریشه (Root) مخزن قرار دهید:

- 📄 `Dockerfile`
- ⚙️ `entrypoint.sh`
- 🌐 `nginx.conf`
- 🖼️ `favicon.ico`
- 🚀 `.github/workflows/docker-publish.yml`

### 🏗️ مرحله ۳: بیلد و انتشار ایمیج

1. کدها را Push کنید و در تب **Actions** منتظر تیک سبز بمانید.
2. به بخش **Packages** در پروفایل گیت‌هاب خود رفته، پکیج را باز کنید و در بخش Settings وضعیت آن را به **Public** تغییر دهید تا پلتفرم ابری دسترسی داشته باشد.
</div>
### ☁️ مرحله ۴: دپلوی در سرویس ابری

یک سرویس جدید از روی ایمیج ایجاد کرده و متغیرهای زیر را در بخش **Environment Variables** تنظیم کنید:

| نام متغیر | نقش در سیستم | مقدار پیش‌فرض |
|:---|:---|:---|
| **`PANEL_PATH`** | مسیر اختصاصی ورود به پنل مدیریت | `/dashboard/` |
| **`SUB_PATH`** | مسیر لینک سابسکریپشن | `/sub/` |
| **`SUB_PORT`** | پورت داخلی سابسکریپشن | `2065` |
| **`API_PREFIX`** | پیشوند قبل از عدد پورت در کانکشن‌ها | `/api/v` |
| **`CUSTOM_TITLE`** | عنوان دلخواه برای تب مرورگر | `Web Monitor` |

### 🌐 مرحله ۵: تنظیمات دامنه و Cloudflare

1. دامنه اختصاصی خود را در سرویس ابری، مانند Koyeb یا Railway، اضافه کنید.
2. در پنل Cloudflare یک رکورد **CNAME** به آدرس ارائه‌شده ایجاد کنید و ابر پروکسی (Orange Cloud) را **روشن** کنید.
3. وضعیت **SSL/TLS** را روی حالت **Full** یا **Full (Strict)** قرار دهید.

### 🎛️ مرحله ۶: تنظیمات داخل پنل 3x-ui

1. وارد پنل شوید: `https://domain.com/dashboard/`
2. در بخش **Panel Settings → Subscription**:
   - پورت را روی `2065` و مسیر را روی `/sub/` قرار دهید؛ مسیر در `nginx.conf` قابل سفارشی‌سازی است.
3. **ساخت Inbound:**
   - 🔌متغیر **Port:** مثلاً `8443`
   - 🛣️ متغیر **Path:** طبق الگوی Regex به این صورت: `/api/v8443/`
   - برای WebSocket با EarlyData: `/api/v8443/?ed=2560`
   - 🌐 متغیر **Host / External Proxy:** دامنه خودتان، پورت `443` و TLS روشن.

### ⚙️ راهنمای تنظیمات بخش Subscription در پنل 3X-UI

برای اینکه لینک‌های سابسکریپشن از طریق پروکسی معکوس، مانند Nginx، به‌درستی کار کنند، فیلدهای بخش تنظیمات سابسکریپشن را مطابق نمونه زیر با اطلاعات واقعی سرور خود پر کنید:

#### 🌐 متغیر Listen Domain (دامنه شنود)

- **توضیح:** نام دامنه اصلی یا لوکال هاست برای سرویس سابسکریپشن.
- **مثال:** `your-domain.up.railway.app`

#### 🔌 متغیر Listen Port (پورت شنود)

- **توضیح:** باید دقیقاً با پورتی که در متغیرهای محیطی برای سابسکریپشن (`SUB_PORT`) تعیین کرده‌اید، همخوانی داشته باشد.
- **مثال:** `2065`

#### 📁 متغیر URI Path (مسیر URI)

- **توضیح:** باید دقیقاً مشابه مسیری باشد که در متغیر `SUB_PATH` و فایل Nginx تنظیم شده است؛ حتماً با اسلش در ابتدا و انتها آغاز و تمام شود.
- **مثال:** `/asset/`

#### 🔗 متغیر Reverse Proxy URI (آدرس پروکسی معکوس)

- **توضیح:** آدرس کامل و نهایی دسترسی به سابسکریپشن شامل پروتکل، دامنه و مسیر.
- **مثال:** `https://your-domain.up.railway.app/asset/`

#### ⚠️ نکات مهم gRPC

- **عدم استفاده از اسلش:** برخلاف WebSocket، در بخش **Service Name** نیازی به گذاشتن `/` در ابتدا یا انتهای عبارت نیست؛ مثلاً `api/v2083` درست است، نه `/api/v2083/`.
- متغیر **Multi-Multiplexing:** ترافیک gRPC به دلیل مالتی‌پلاکسینگ عملکرد فوق‌العاده‌ای روی اتصالات ابری دارد و برای عبور از فیلترینگ شدید بسیار مناسب است.

### 📱 مرحله ۷: تنظیمات کلاینت (گوشی کاربر)

1. لینک سابسکریپشن را وارد نرم‌افزارهایی مانند Karing، v2rayNG یا Streisand کنید.
2. **نکات بهینه‌سازی شبکه:**
   - در صورت اختلال، آدرس سرور (Address) را به یک **Clean IP کلادفلر** تغییر دهید.
   - مقادیر **SNI** و **Host** حتماً روی دامنه خودتان تنظیم شده باشد.
   - قابلیت **Fragment** را با بازه طول `10–20` و تأخیر `10–20` فعال کنید.

---

## 📌 نکات کلیدی نگهداری

- 🔐 **امنیت:** به دلیل Private بودن مخازن و استفاده از Docker Registry، هیچ ردپایی از کدهای داخلی شما در اینترنت عمومی وجود ندارد.
- 💾 **تنظیم Volume:** حتماً در تنظیمات کانتینر خود، پوشه `/etc/x-ui` را به یک **Persistent Volume** متصل کنید.
- ⚠️ در صورت متصل نکردن یک **Persistent Volume**، با هر بار Deploy یا Restart، تمام کاربران پاک خواهند شد.
- 🔌 **منطق پورت‌ها:** منطق پورت‌های اتصالی (`target_port`) کماکان حفظ شده است. هر پورتی که در Inbound پنل بسازید، به انتهای `API_PREFIX` اضافه می‌شود.
- ➡️ **اسلش نهایی:** هنگام استفاده از `API_PREFIX` در اپلیکیشن‌های گوشی، حتماً علامت `/` را در انتهای آدرس، بعد از پورت، قرار دهید.  
  مثال: `domain.com/api/v8443/`

---

## 🏗️ معماری و ساختار کانتینر

### 1. فایل Dockerfile

ساختار کلی این است:

- **پایه:** `ubuntu:22.04`
- نصب `nginx`, `curl`, `wget`, `git`, `gettext-base` و ابزارهای لازم.
- ایجاد `/etc/x-ui` برای دیتابیس Persistent.
- دانلود سایت استتار از StartBootstrap.
- نصب نسخه `3.7.0` از `3x-ui`.
- قرار دادن `x-ui` و `bin` در `/usr/local/x-ui`.
- کپی کردن `nginx.conf` و `entrypoint.sh`.
- اجرای همه‌چیز از طریق `entrypoint.sh`.
- **پورت Docker:** `8080`.

> این بخش در خطوط 21 تا 39 مشخص شده است.
>
> **نکته مهم:** خود Dockerfile پورت backend پنل را 3000 نمی‌کند؛ این کار بعداً در `entrypoint.sh` انجام می‌شود.

### 2. فایل `entrypoint.sh`

این فایل در واقع مرکز کنترل کل کانتینر است.

#### ترتیب اجرا

```text
Container Start
      ↓
Environment Variables
      ↓
بررسی /etc/x-ui/x-ui.db
      ↓
Symlink → /usr/local/x-ui/x-ui.db
      ↓
ساخت nginx.conf از template
      ↓
جایگزینی متغیرها
      ↓
x-ui → port 3000
      ↓
x-ui → webBasePath
      ↓
Running x-ui
      ↓
Running nginx on  8080
```

#### بخش Persistent Database

منطق به این صورت است:

```bash
if [ ! -f "/etc/x-ui/x-ui.db" ]; then
    touch /etc/x-ui/x-ui.db
fi

ln -sf /etc/x-ui/x-ui.db /usr/local/x-ui/x-ui.db
```

یعنی دیتابیس داخل Volume باقی می‌ماند و با حذف یا Recreate شدن Container از بین نمی‌رود.

#### مدیریت مسیر پنل

همچنین مسیر پنل از Environment گرفته می‌شود:

```bash
PANEL_PATH=${PANEL_PATH:-/dashboard/}
```

و بعد همان مقدار هم به Nginx و هم به خود x-ui داده می‌شود:

```bash
./x-ui setting -webBasePath "$PANEL_PATH"
```

> این هماهنگی بسیار مهم است.

### 3. فایل `nginx.conf`

اینجا قسمت پیچیده پروژه است. چهار نوع ترافیک عملاً در نظر گرفته شده:

```text
                     Nginx :8080
                          │
            ┌─────────────┼─────────────┐
            │             │             │
            ↓             ↓             ↓
        Decoy Site       x-ui       Subscription
           /           /dashboard       /sub
                          │
                          ↓
                      127.0.0.1:3000
```

### Router داینامیک برای Inboundها

یک Router داینامیک برای Inboundها وجود دارد:

```text
/api/v<PORT>/...
        │
        ├── HTTP / WS / XHTTP
        │       ↓
        │   127.0.0.1:<PORT>
        │
        └── gRPC
                ↓
            grpc_pass
```

### 🏗️ ساختار فایل‌های جدید

- ⚙️ متغیر **`entrypoint.sh`:** وظیفه جایگذاری (Inject) متغیرها در فایل `nginx.conf` با استفاده از دستور `sed` و تنظیم `webBasePath` پنل را بر عهده دارد.
- 🌐 متغیر **`nginx.conf.template`:** به‌عنوان یک قالب عمل می‌کند و اجازه می‌دهد تمام مسیرها به‌صورت داینامیک ساخته شوند.

  ---

### 📜 License

> **MIT License**
> 
> This project is open-source and available under the **[MIT License](LICENSE)**.  
Feel free to use, modify, and distribute it.
> 
>
> <a href="LICENSE">
> <img src="https://img.shields.io/badge/License-MIT-emerald?style=for-the-badge&logo=open-source-initiative&logoColor=white" alt="MIT License" />
> </a>

---


