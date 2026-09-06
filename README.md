<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=250&section=header&text=NotDev%203x-ui%20Stealth&fontSize=50&animation=fadeIn&fontAlignY=38&desc=Support%20persistent%20storage&descAlignY=60&descAlign=50" alt="Header Animation" />
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


---



<h3 align="center">
  <mark>یک نسخه بهینه شده از پنل 3x-ui برای اجرا روی پلتفرم‌های ابری با حافظه دائمی</mark>
</h3>


---

<br>

<div dir="rtl">

### 🌐 وب‌سرور چندمنظوره (Multi-Protocol Nginx)
پیکربندی جامع `nginx.conf` جهت مدیریت همزمان پروتکل‌های مختلف:
* 🔌پروتکل **WebSocket (WS) & HTTPUpgrade:** پشتیبانی کامل از WS و حالت بهینه‌تر HTTPUpgrade برای پایداری در شبکه.
* ⚡پروتکل **XHTTP:** پشتیبانی در تمام مدهای `packet-up` و `stream-up` با قابلیت `request_buffering off`.
* 🛡️پروتکل **gRPC:** هندل کردن ترافیک gRPC در پورت و مسیر مجزا.
* 🔀 **مسیردهی هوشمند (Regex Routing):** هدایت خودکار ترافیک به پورت‌های داخلی بر اساس URL (مثلاً `/api/v8443/` به پورت ۸۴۴۳) بدون نیاز به تغییر کانفیگ Nginx.

<br>

### 🎭 استتار و شخصی‌سازی (Cloaking & Branding)
* 🏛️ **صفحه فرود (Landing Page):** ادغام خودکار قالب Bootstrap در صفحه اصلی جهت ایجاد سایت استتار معتبر و عبور از سیستم‌های DPI.
* 🎨 **تزریق هویت (Injection):** تغییر داینامیک تایتل مرورگر و Favicon پنل بر اساس متغیر `CUSTOM_TITLE` با استفاده از `sub_filter`.

<br>

### 🐳 زیرساخت داکر و CI/CD
* 📦 متغیر **Dockerization:** استفاده از Custom Dockerfile جهت دسترسی و کنترل کامل روی لایه‌های سیستم‌عامل.
* 🚀 متغیر **GitHub Actions:** اتوماسیون کامل `docker-publish.yml` برای بیلد و انتشار خودکار ایمیج در GHCR.

<br>

### ⚙️ متغیرها و تنظیمات داینامیک
* 🔒 **مسیر داینامیک پنل (`PANEL_PATH`):** قابلیت تغییر آدرس ورودی پنل جهت جلوگیری از اسکنرها و حملات Brute-Force.
* 🔗 **تنظیمات پویای سابسکریپشن (`SUB_PATH` & `SUB_PORT`):** شخصی‌سازی مسیر و پورت داخلی لینک سابسکریپشن از طریق متغیرها.
* 📡 **پیشوند اتصال قابل تنظیم (`API_PREFIX`):** تغییر داینامیک عبارت قبل از پورت (مانند `/api/v/`) جهت ایجاد الگوهای ترافیکی جدید.
* 💾 **یکپارچه‌سازی با Volume:** ذخیره و لینک تلقائی دیتابیس در مسیر `/etc/x-ui/` جهت ماندگاری داده‌ها هنگام ریستارت کانتینر.

</div>

---


## 🛠️ راهنمای کامل راه‌اندازی پروژه از صفر (نسخه نهایی)

### 📌 مرحله ۱: آماده‌سازی در GitHub
1. **ساخت مخزن خصوصی (Private Repository):**  
   یک ریپازیتوری بسازید (مثلاً `x-project`).

### 📁 مرحله ۲: ساخت فایل‌های مخزن
فایل‌های زیر را در ریشه (Root) مخزن قرار دهید:
* 📄 `Dockerfile`
* ⚙️ `entrypoint.sh`
* 🌐 `nginx.conf`
* 🖼️ `favicon.ico`
* 🚀 `.github/workflows/docker-publish.yml`

### 🏗️ مرحله ۳: بیلد و انتشار ایمیج
1. کدها را Push کنید و در تب **Actions** منتظر تیک سبز بمانید.
2. به بخش **Packages** در پروفایل گیت‌هاب خود رفته، پکیج را باز کنید و در بخش Settings وضعیت آن را به **Public** تغییر دهید تا پلتفرم ابری دسترسی داشته باشد.

</div>

### ☁️ مرحله ۴: دپلوی در سرویس ابری
یک سرویس جدید از روی ایمیج ایجاد کرده و متغیرهای زیر را در بخش **Environment Variables** تنظیم کنید:

| نام متغیر | نقش در سیستم | مقدار پیش‌فرض |
| :--- | :--- | :--- |
| **`PANEL_PATH`** | مسیر اختصاصی ورود به پنل مدیریت | `/dashboard/` |
| **`SUB_PATH`** | مسیر لینک سابسکریپشن | `/sub/` |
| **`SUB_PORT`** | پورت داخلی سابسکریپشن | `2065` |
| **`API_PREFIX`** | پیشوند قبل از عدد پورت در کانکشن‌ها | `/api/v` |
| **`CUSTOM_TITLE`** | عنوان دلخواه برای تب مرورگر | `Web Monitor` |

<div dir="rtl">
  
### 🌐 مرحله ۵: تنظیمات دامنه و Cloudflare
1. دامنه اختصاصی خود را در سرویس ابری (مانند Koyeb/Railway) اضافه کنید.
2. در پنل کلادفلر یک رکورد **CNAME** به آدرس ارائه شده بزنید و ابر پروکسی (Orange Cloud) را **روشن** کنید.
3. وضعیت SSL/TLS را حتماً روی حالت **Full** یا **Full (Strict)** قرار دهید.

### 🎛️ مرحله ۶: تنظیمات داخل پنل 3x-ui
1. وارد پنل شوید: `https://domain.com/dashboard/`
2. در بخش **Panel Settings -> Subscription**:
   پورت را روی `2065` و مسیر را روی `/sub/` قرار دهید *(مسیر در `nginx.conf` قابل سفارشی‌سازی است)*.
4. **ساخت اینباند (Inbound):**
   * 🔌 **Port:** مثلاً `8443`
   * 🛣️ **Path:** طبق الگوی Regex به این صورت: `/api/v8443/` *(برای WebSocket با EarlyData: `/api/v8443/?ed=2560`)*
   * 🌐 **Host / External Proxy:** دامنه خودتان، پورت `443` و TLS روشن.

### 📱 مرحله ۷: تنظیمات کلاینت (گوشی کاربر)
1. لینک سابسکریپشن را وارد نرم‌افزار (مانند Karing ،v2rayNG یا Streisand) کنید.
2. **نکات بهینه‌سازی شبکه:**
   * در صورت اختلال، آدرس سرور (Address) را به یک **Clean IP کلادفلر** تغییر دهید.
   * مقادیر **SNI** و **Host** حتماً روی دامنه خودتان تنظیم شده باشد.
   * قابلیت **Fragment** را با بازه طول `10-20` و تاخیر `10-20` فعال کنید.
---

## 📌 نکات کلیدی نگهداری
* **امنیت:** به دلیل Private بودن مخازن و استفاده از Docker Registry، هیچ ردپایی از کدهای داخلی شما در اینترنت عمومی وجود ندارد.



### ⚠️ نکات بسیار مهم برای راه‌اندازی:

*   **تنظیم Volume:** حتماً در تنظیمات کانتینر خود (مثلاً در Zeabur یا Railway)، پوشه `/etc/x-ui` را به یک **Persistent Volume** متصل کنید.
*   در غیر این صورت با هر بار دیپلوی یا ریستارت، تمام یوزرها پاک خواهند شد.
*   **منطق پورت‌ها:** منطق پورت‌های اتصالی (`target_port`) کماکان حفظ شده است. هر پورتی که در اینباند پنل بسازید، به انتهای `API_PREFIX` اضافه می‌شود.
*   **اسلش نهایی:** در هنگام استفاده از `API_PREFIX` در اپلیکیشن‌های گوشی، حتماً علامت **`/`** را در انتهای آدرس (بعد از پورت) قرار دهید. مثال: `domain.com/api/v8443/`

### 🏗 ساختار فایل‌های جدید:

*  متغیر **`entrypoint.sh`**: وظیفه جایگذاری (Inject) متغیرها در فایل `nginx.conf` با استفاده از دستور `sed` و تنظیم `webBasePath` پنل را بر عهده دارد.
*  متغیر **`nginx.conf.template`**: به عنوان یک قالب عمل کرده و اجازه می‌دهد تمام مسیرها به صورت داینامیک ساخته شوند.

</div>

