# 🏨 ALK Hotel - Full-Stack Booking & Management System

<img width="1912" height="873" alt="Screenshot 2024-06-29 151148" src="https://github.com/user-attachments/assets/bf032518-aacc-4beb-ac3d-99b5ea81f2ff" />

ALK Hotel is a comprehensive, production-ready hotel reservation and management system built with PHP, MySQL, and AJAX. It features a dynamic, asynchronous frontend for a seamless guest experience, complete with user authentication, automated PDF invoice generation, and a dedicated backend administrative control panel.

## ✨ Key Features

<img width="1903" height="863" alt="Screenshot 2024-06-29 151206" src="https://github.com/user-attachments/assets/4b3a5744-a748-4f51-90f3-1070f2dc53e7" />

### 👤 Guest Experience
* **Smart Availability & Booking Engine:** Guests can search for rooms using dynamic filters including check-in/check-out dates, adults, children, and specific facilities. The system uses AJAX to validate dates on the fly and calculate real-time pricing before checkout.
* **User Accounts & Profiles:** Guests can register, verify their accounts via email, and manage their profiles, including uploading profile pictures and changing passwords securely via AJAX.
* **Automated PDF Receipts:** Upon booking, or via their profile dashboard, guests can download dynamically generated PDF receipts of their transactions powered by mPDF.
* **Ratings & Reviews:** Authenticated guests can submit 1-5 star ratings and written reviews for rooms they have booked, which are showcased in an interactive coverflow carousel on the homepage.
* **Contact & Inquiries:** A dynamic contact page featuring integrated Google Maps, social media links, and a secure contact form that sends messages directly to the database.

### 🛠️ Administrative Control (Backend)
* **Booking Ledger:** Admins can view incoming bookings, process transactions, assign physical room numbers upon arrival, issue refunds, and monitor overall booking statuses.
* **Inventory Management:** Full CRUD (Create, Read, Update, Delete) capabilities for rooms, room images, features, and facilities.
* **Content Management System (CMS):** Live management of homepage carousels, management team member profiles, and hotel contact details.
* **File Upload Validations:** Secure image handling ensures strict MIME type validation (JPEG, PNG, WEBP, SVG) and enforces strict file size limits (2MB for images, 1MB for SVGs).
* **Site Configuration:** Instantly toggle "Shutdown Mode" to suspend new bookings during hotel maintenance or off-seasons, which displays a sitewide alert banner.

## 💻 Tech Stack

<img width="1916" height="869" alt="Screenshot 2024-06-29 151213" src="https://github.com/user-attachments/assets/1b2aab4c-5322-41d5-97bc-da6020ed2d8b" />

* **Frontend:** HTML5, CSS3, JavaScript (Vanilla ES6+ & AJAX), Bootstrap 5.
* **UI & Typography:** Swiper.js (Interactive Carousels), Bootstrap Icons, Google Fonts (Poppins & Merienda).
* **Backend:** PHP (Procedural & OOP) with prepared statements to prevent SQL injection (`insert`, `select`, `update` functions).
* **Database:** MySQL / MariaDB (`hotel` schema).
* **Package Management:** Composer.
* **PHP Dependencies:** 
  * `mpdf/mpdf` (v8.2) - For generating downloadable PDF booking receipts.
  * `phpmailer/phpmailer` (v6.9) - For handling SMTP email verifications and contact form routing.

## 🗂️ Core File Architecture

<img width="1915" height="873" alt="Screenshot 2024-06-29 151220" src="https://github.com/user-attachments/assets/3f73174b-8797-459f-88d8-6379cf3ca1dd" />

* **`/xen/`**: Public-facing root directory.
  * **`index.php`**: The landing page featuring dynamic carousels, quick-search availability, and user reviews.
  * **`rooms.php` & `room_details.php`**: The catalog for browsing hotel inventory with AJAX-powered filtering and specific room galleries.
  * **`confirm_booking.php` & `pay_now.php`**: The checkout pipeline handling asynchronous date validation and database transaction processing.
  * **`bookings.php` & `profile.php`**: The user portals for managing reservations, submitting reviews, and updating personal information.
  * **`generate_pdf.php`**: The mPDF engine that constructs and outputs downloadable HTML-to-PDF receipts.
  * **`email_confirm.php`**: The endpoint that validates secure email tokens for new account registrations.
  * **`inc/`**: Reusable UI components including header, footer, and essential functions.
* **`/ajax/`**: Frontend asynchronous PHP scripts (confirm booking, login, register, rooms, etc.).
* **`/admin/`**: Backend administration panel featuring its own routing, AJAX handlers, and JavaScript logic.
* **`/images/`**: Organized media assets including about, carousel, facilities, rooms, and users directories.
* **`Dump20240111_2.sql`**: The MySQL database schema and initial data dump.

## 🚀 Getting Started

### Prerequisites
* **PHP**: Version 7.4 or 8.x
* **Database**: MySQL 5.7+ or MariaDB 10.x
* **Web Server**: Apache / Nginx (XAMPP, WAMP, or Laragon recommended for local development)
* **Composer**: Installed globally

### Local Installation
1. **Clone the repository:**
   ```bash
   git clone [https://github.com/alk-an/Hotel_Site_Front_and_Back_End.git](https://github.com/alk-an/Hotel_Site_Front_and_Back_End.git)

2. **Server Setup:**
    Place the project folder inside your local web server's root directory (e.g., `htdocs` for XAMPP).

3. **Install Dependencies:**
    Navigate to the project root in your terminal and install the required PHP packages via Composer:
    ```bash
    cd xen
    composer install

4. **Database Configuration:**
   * Open your database management tool (e.g., phpMyAdmin).
   * Create a new database named `hotel`.
   * Import the `Dump20240111_2.sql` file to build the schema and populate the default data.
   * Verify your database connection credentials inside `/inc/db_config.php` (Default setup uses username `root` and password `denxero`).

5. **Launch:**
   * **Guest Portal**: `http://localhost/xen/index.php`
   * **Admin Dashboard**: `http://localhost/xen/admin/index.php`

## 🔑 Demo Credentials

* **Guest Account:**
    * Phone Number: 12
    * Password: 12
* **Admin Panel:**
    * Username: admin
    * Password: password
