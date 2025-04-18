<p align="center">
  <img src="https://github.com/abdzohbi/internet-management/blob/339ffbe48f6c5976e4184f5db24994132b45316c/logo.jpg" width="200" alt="Project Logo">
</p>

<h1 align="center">Internet Subscription Management System</h1>

<p align="center">
  A web-based open-source platform for managing monthly internet subscriptions, customers, billing, payments, maintenance records, and more.
</p>


<p align="center">
  <img src="https://img.shields.io/badge/Laravel-11.x-red" alt="Laravel Version">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Status-Active-green.svg" alt="Project Status">
</p>

---

## 📌 About the Project

This system is built for small and medium-sized Internet Service Providers (ISPs) and resellers who need a reliable tool to manage their internet subscription operations.

The system helps automate daily tasks such as:

- Managing customer profiles and subscription packages.
- Generating invoices and tracking payment status.
- Logging maintenance and support requests.
- Monitoring expenses and financial reporting.
- Controlling user permissions (accountant, technician, admin).
- Supporting multi-company and multi-supplier operations.

## 🔧 Technologies Used

- Laravel 11 (PHP Framework)
- MySQL / MariaDB
- Bootstrap (Front-end)
- Docker (optional)
- Git & GitHub

## 🚀 Getting Started

### Clone the Repository

git clone [https://github.com/your-username/your-repo-name.git](https://github.com/abdzohbi/internet-management.git)
cd internet-management

composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan serve

## Project Structure

    app/Models: Eloquent models for core entities (Customer, Subscription, Invoice, etc.)

    app/Http/Controllers: Controllers for web routes and logic

    resources/views: Blade templates for front-end views

    routes/web.php: Route definitions


## License

This project is open-sourced under the MIT License.
## 🤝 Contributing

Contributions are welcome! Feel free to fork the project and submit a pull request. For major changes, please open an issue first.
## 📫 Contact

For suggestions or business inquiries, please contact:

Project Owner: Abdulrahman
Email: 
Location: Akkar, Lebanon
