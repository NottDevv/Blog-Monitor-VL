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


<div dir="rtl">



## 📝 خلاصه تغییرات و ویژگی‌های فنی

*    ** وب‌سرور چندمنظوره (Multi-Protocol Nginx)
پشتیبانی جامع و پیکربندی `nginx.conf` برای هندل کردن همزمان:
* ‏**WebSocket (WS)** و **HTTPUpgrade** (بهینه‌تر از WS برای اختلالات شبکه).
* ‏**XHTTP:** در تمام مدهای **packet-up** و **stream-up** با قابلیت **request_buffering off**.
* ‏**gRPC:** در پورت و مسیر مجزا.
* ‏**مسیردهی هوشمند (Regex Routing):** استفاده از الگوهای منظم برای هدایت ترافیک به پورت‌های داخلی بر اساس مسیر URL (مثلاً `/api/v8443/` به پورت ۸۴۴۳)، بدون نیاز به تغییر کد Nginx برای اینباندهای جدید.

*    **استتار و شخصی‌سازی (Cloaking & Branding)
* **صفحه فرود (Landing Page):** ادغام خودکار قالب **Bootstrap** برای نمایش یک سایت معتبر در صفحه اصلی جهت جلوگیری از شناسایی توسط سیستم‌های فیلترینگ (DPI).
* **تزریق هویت (Injection):** استفاده از `sub_filter` در Nginx برای تغییر داینامیک تایتل مرورگر و آیکون (Favicon) پنل بر اساس متغیر `CUSTOM_TITLE`.

*    **زیرساخت داکر و CI/CD
* ‏**Dockerization:** انتقال به **Custom Dockerfile** جهت کنترل کامل روی لایه‌های سیستم‌عامل.
* ‏**GitHub Actions:** پیاده‌سازی `docker-publish.yml` برای بیلد خودکار و انتشار در **GHCR** با قابلیت تگ‌گذاری نسخه.

*   **پشتیبانی از مسیر پنل داینامیک (`PANEL_PATH`):**
    دیگر مجبور به استفاده از مسیر پیش‌فرض نیستید. می‌توانید آدرس ورود به پنل را به هر چیزی تغییر دهید تا از حملات بروت‌فورس و شناسایی توسط اسکنرها جلوگیری کنید.

*   **تنظیمات پویای سابسکریپشن (`SUB_PATH` & `SUB_PORT`):**
    اکنون هم مسیر لینک سابسکریپشن و هم پورت داخلی آن (که به صورت پیش‌فرض ۲۰۵۵ بود) از طریق متغیرها قابل تغییر است.

*   **پیشوند اتصال قابل تنظیم (`API_PREFIX`):**
    عبارت قبل از پورت در کانکشن‌های گوشی (مثل `/api/v`) اکنون کاملاً داینامیک است. این تغییر به شما اجازه می‌دهد تا الگوهای ترافیکی خود را برای عبور از فیلترینگ هوشمند تغییر دهید.

*   **یکپارچه‌سازی با Volume دائمی:**
    کدها به‌گونه‌ای بهینه شده‌اند که دیتابیس مستقیماً روی مسیر `/etc/x-ui/` (که باید به ولوم متصل باشد) قرار گیرد.
    فرآیند لینک کردن دیتابیس به پوشه اجرای برنامه به صورت خودکار در هر بار ریستارت انجام می‌شود.



---

## 🛠 راهنمای کامل راه‌اندازی پروژه از صفر (نسخه نهایی)

### مرحله ۱: آماده‌سازی در GitHub
1. **ساخت مخزن خصوصی (Private):**
   - برای کدها و داکر (مثلاً `x-project`).
     

### مرحله ۲: تنظیمات فایل‌های مخزن کد
پنج فایل زیر را در مخزن اول قرار دهید:
* ‏`Dockerfile` | `entrypoint.sh` | `nginx.conf` | `favicon.ico`
* ‏`.github/workflows/docker-publish.yml`


### مرحله ۳: بیلد و انتشار ایمیج
1. کد را Push کنید و در تب **Actions** منتظر تیک سبز بمانید.
2. در پروفایل خود بخش **Packages**، پکیج را باز کرده و در تنظیمات، وضعیت آن را **Public** کنید تا سرویس ابری به آن دسترسی داشته باشد.

### مرحله ۴: دپلوی در سرویس ابری
یک سرویس جدید ساخته و متغیرهای زیر را تنظیم کنید:

### 📊 جدول متغیرهای محیطی (Environment Variables)

شما می‌توانید این مقادیر را در پنل مدیریت سرویس خود (Variables) تنظیم کنید:

| نام متغیر | نقش در سیستم | مقدار پیش‌فرض |
| :--- | :--- | :--- |
| **PANEL_PATH** | مسیر اختصاصی ورود به پنل مدیریت | `/dashboard/` |
| **SUB_PATH** | مسیر لینک سابسکریپشن (Subscription) | `/sub/` |
| **SUB_PORT** | پورت داخلی که سابسکریپشن روی آن اجرا می‌شود | `2065` |
| **API_PREFIX** | پیشوند قبل از عدد پورت در کانکشن‌ها | `/api/v` |
| **CUSTOM_TITLE** | عنوان دلخواه برای تب مرورگر | `Web Monitor` |


### مرحله ۵: تنظیمات دامنه و Cloudflare
1. در Koyeb دامنه شخصی را اضافه کنید.
2. در کلادفلر رکورد **CNAME** بزنید و وضعیت پروکسی را **نارنجی** کنید.
3. حالت SSL/TLS را حتماً روی **Full** بگذارید.

### مرحله ۶: تنظیمات داخل پنل 3x-ui
1. وارد پنل شوید: `https://domain.com/dashboard/`
2. در بخش **Subscription**: پورت را روی `2065` و مسیر را روی `/sub/` بگذارید.
مسیر سابسکریپشن در فایل nginx.cong قابل ویرایش است
3. **ساخت اینباند:**
   * ‏**Port:** مثلاً 8443.
   * ‏**Path:** طبق فرمت Regex: `/api/v8443/` (برای WS: `/api/v8443/?ed=2560`).
   * ‏**Host (External Proxy):** دامنه خودتان، پورت 443 و TLS روشن.

### مرحله ۷: تنظیمات کلاینت (گوشی کاربر)
1. لینک سابسکریپشن را به برنامه (Karing یا v2rayNG) بدهید.
2. **نکته مخابرات:** اگر وصل نشد، در تنظیمات گوشی:
   * آدرس سرور را به یک **IP تمیز کلادفلر** تغییر دهید.
   * ‏**SNI** و **Host** حتماً دامنه خودتان باشد.
   * قابلیت **Fragment** را با مقادیر `10-20` فعال کنید.

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
