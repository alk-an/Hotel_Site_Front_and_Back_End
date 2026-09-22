# 🏨 ALK Hotel - Full-Stack Booking & Management System

ALK Hotel is a comprehensive, production-ready hotel reservation and management system built with PHP, MySQL, and AJAX[cite: 115, 116, 120]. It features a dynamic, asynchronous frontend for a seamless guest experience, complete with user authentication, automated PDF invoice generation, and a dedicated backend administrative control panel[cite: 126, 127].

## ✨ Key Features

### 👤 Guest Experience
* **Smart Availability & Booking Engine:** Guests can search for rooms using dynamic filters including check-in/check-out dates, adults, children, and specific facilities[cite: 129]. The system uses AJAX to validate dates on the fly and calculate real-time pricing before checkout[cite: 131].
* **User Accounts & Profiles:** Guests can register, verify their accounts via email, and manage their profiles, including uploading profile pictures and changing passwords securely via AJAX[cite: 126, 127].
* **Automated PDF Receipts:** Upon booking, or via their profile dashboard, guests can download dynamically generated PDF receipts of their transactions powered by mPDF[cite: 93].
* **Ratings & Reviews:** Authenticated guests can submit 1-5 star ratings and written reviews for rooms they have booked, which are showcased in an interactive coverflow carousel on the homepage[cite: 128].
* **Contact & Inquiries:** A dynamic contact page featuring integrated Google Maps, social media links, and a secure contact form that sends messages directly to the database[cite: 58].

### 🛠️ Administrative Control (Backend)
* **Booking Ledger:** Admins can view incoming bookings, process transactions, assign physical room numbers upon arrival, issue refunds, and monitor overall booking statuses[cite: 105, 106].
* **Inventory Management:** Full CRUD (Create, Read, Update, Delete) capabilities for rooms, room images, features, and facilities[cite: 107, 110].
* **Content Management System (CMS):** Live management of homepage carousels, management team member profiles, and hotel contact details[cite: 104, 108].
* **File Upload Validations:** Secure image handling ensures strict MIME type validation (JPEG, PNG, WEBP, SVG) and enforces strict file size limits (2MB for images, 1MB for SVGs)[cite: 115].
* **Site Configuration:** Instantly toggle "Shutdown Mode" to suspend new bookings during hotel maintenance or off-seasons, which displays a sitewide alert banner[cite: 108, 113].

## 💻 Tech Stack

* **Frontend:** HTML5, CSS3, JavaScript (Vanilla ES6+ & AJAX), Bootstrap 5[cite: 111, 113, 114].
* **UI & Typography:** Swiper.js (Interactive Carousels), Bootstrap Icons, Google Fonts (Poppins & Merienda)[cite: 113, 114].
* **Backend:** PHP (Procedural & OOP) with prepared statements to prevent SQL injection (`insert`, `select`, `update` functions).
* **Database:** MySQL / MariaDB (`hotel` schema).
* **Package Management:** Composer[cite: 65, 75].
* **PHP Dependencies:** 
  * `mpdf/mpdf` (v8.2) - For generating downloadable PDF booking receipts[cite: 65, 76].
  * `phpmailer/phpmailer` (v6.9) - For handling SMTP email verifications and contact form routing[cite: 65, 126].

## 🗂️ Core File Architecture

* **`/xen/`**: Public-facing root directory[cite: 115].
  * **`index.php`**: The landing page featuring dynamic carousels, quick-search availability, and user reviews[cite: 94].
  * **`rooms.php` & `room_details.php`**: The catalog for browsing hotel inventory with AJAX-powered filtering and specific room galleries[cite: 68, 69].
  * **`confirm_booking.php` & `pay_now.php`**: The checkout pipeline handling asynchronous date validation and database transaction processing[cite: 57, 71].
  * **`bookings.php` & `profile.php`**: The user portals for managing reservations, submitting reviews, and updating personal information[cite: 64, 67].
  * **`generate_pdf.php`**: The mPDF engine that constructs and outputs downloadable HTML-to-PDF receipts[cite: 61, 93].
  * **`email_confirm.php`**: The endpoint that validates secure email tokens for new account registrations[cite: 59].
  * **`inc/`**: Reusable UI components including header, footer, and essential functions[cite: 72, 73, 74].
* **`/ajax/`**: Frontend asynchronous PHP scripts (confirm booking, login, register, rooms, etc.)[cite: 126, 129, 131].
* **`/admin/`**: Backend administration panel featuring its own routing, AJAX handlers, and JavaScript logic[cite: 89, 90, 91].
* **`/images/`**: Organized media assets including about, carousel, facilities, rooms, and users directories[cite: 115].
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
   * Create a new database named `hotel`[cite: 116].
   * Import the `Dump20240111_2.sql` file to build the schema and populate the default data[cite: 55].
   * Verify your database connection credentials inside `/inc/db_config.php` (Default setup uses username `root` and password `denxero`)[cite: 116].

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
