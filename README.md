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



## یک نسخه شخصی‌سازی شده از پنل **3x-ui** بهینه شده برای اجرا روی پلتفرم‌های ابری با حافظه دائمی.
---




<div dir="rtl">

این نسخه اختصاصاً برای پلتفرم‌هایی طراحی شده است که از **Persistent Volume** پشتیبانی می‌کنند. 
در این آپدیت، تمامی محدودیت‌های مربوط به مسیرهای ثابت (Hardcoded Paths) حذف شده و امنیت سیستم از طریق متغیرهای محیطی به شدت افزایش یافته است.

### 🛠 تغییرات کلیدی (Main Changes)

*   **پشتیبانی از مسیر پنل داینامیک (`PANEL_PATH`):**
    دیگر مجبور به استفاده از مسیر پیش‌فرض نیستید. می‌توانید آدرس ورود به پنل را به هر چیزی تغییر دهید تا از حملات بروت‌فورس و شناسایی توسط اسکنرها جلوگیری کنید.

*   **تنظیمات پویای سابسکریپشن (`SUB_PATH` & `SUB_PORT`):**
    اکنون هم مسیر لینک سابسکریپشن و هم پورت داخلی آن (که به صورت پیش‌فرض ۲۰۵۵ بود) از طریق متغیرها قابل تغییر است.

*   **پیشوند اتصال قابل تنظیم (`API_PREFIX`):**
    عبارت قبل از پورت در کانکشن‌های گوشی (مثل `/api/v`) اکنون کاملاً داینامیک است. این تغییر به شما اجازه می‌دهد تا الگوهای ترافیکی خود را برای عبور از فیلترینگ هوشمند تغییر دهید.

*   **یکپارچه‌سازی با Volume دائمی:**
    کدها به‌گونه‌ای بهینه شده‌اند که دیتابیس مستقیماً روی مسیر `/etc/x-ui/` (که باید به ولوم متصل باشد) قرار گیرد.
    فرآیند لینک کردن دیتابیس به پوشه اجرای برنامه به صورت خودکار در هر بار ریستارت انجام می‌شود.

### 📊 جدول متغیرهای محیطی (Environment Variables)

شما می‌توانید این مقادیر را در پنل مدیریت سرویس خود (Variables) تنظیم کنید:

| نام متغیر | نقش در سیستم | مقدار پیش‌فرض |
| :--- | :--- | :--- |
| **PANEL_PATH** | مسیر اختصاصی ورود به پنل مدیریت | `/dashboard/` |
| **SUB_PATH** | مسیر لینک سابسکریپشن (Subscription) | `/sub/` |
| **SUB_PORT** | پورت داخلی که سابسکریپشن روی آن اجرا می‌شود | `2065` |
| **API_PREFIX** | پیشوند قبل از عدد پورت در کانکشن‌ها | `/api/v` |
| **CUSTOM_TITLE** | عنوان دلخواه برای تب مرورگر | `Web Monitor` |

### ⚠️ نکات بسیار مهم برای راه‌اندازی:

*   **تنظیم Volume:** حتماً در تنظیمات کانتینر خود (مثلاً در Zeabur یا Railway)، پوشه `/etc/x-ui` را به یک **Persistent Volume** متصل کنید.
*   در غیر این صورت با هر بار دیپلوی یا ریستارت، تمام یوزرها پاک خواهند شد.
*   **منطق پورت‌ها:** منطق پورت‌های اتصالی (`target_port`) کماکان حفظ شده است. هر پورتی که در اینباند پنل بسازید، به انتهای `API_PREFIX` اضافه می‌شود.
*   **اسلش نهایی:** در هنگام استفاده از `API_PREFIX` در اپلیکیشن‌های گوشی، حتماً علامت **`/`** را در انتهای آدرس (بعد از پورت) قرار دهید. مثال: `domain.com/api/v8443/`

### 🏗 ساختار فایل‌های جدید:

*   **`entrypoint.sh`**: وظیفه جایگذاری (Inject) متغیرها در فایل `nginx.conf` با استفاده از دستور `sed` و تنظیم `webBasePath` پنل را بر عهده دارد.
*   **`nginx.conf.template`**: به عنوان یک قالب عمل کرده و اجازه می‌دهد تمام مسیرها به صورت داینامیک ساخته شوند.

</div>
