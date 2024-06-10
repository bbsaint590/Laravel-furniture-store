# Laravel Furniture Store

A furniture store website organised by different categories to provide an easy user experience and satisfy your furniture needs.

## Description

This furniture store is a Laravel project that fetches and displays information about various furniture products from a MySQL database. After selecting a furniture category, you can find detailed information about individual products, including dimensions and related products.

## Getting Started

### Dependencies

- Laravel
- PHP version 7.0.0+
- MySQL version 5.7+

### Installing

1. Clone this repo:
   ```bash
   git clone git@github.com:bbsaint590/Laravel-furniture-store.git
   
2. Navigate into the newly created repo:
   ```bash
   cd Laravel-furniture-store
   
3. From the root of the project, run:
   ```bash
   composer install
   
4. Generate the application key:
   ```bash
   php artisan key:generate
   
5. Create a new MySQL database named laravel_furniture_store and import the provided 
   SQL file: /laravel_furniture_store_2024-05-31.sql
   
7. Ensure that details are correct in the .env file, in order to connect the 
   database.
   DB_CONNECTION=mysql, 
   DB_DATABASE=laravel_furniture_store, and 
   DB_PASSWORD=password
   
8. **Run the database migrations (if needed):**

    ```bash
    php artisan migrate
    ```

9. **Start the Laravel development server:**

    ```bash
    php artisan serve
    ```

The application will now be available at [http://localhost:8000](http://localhost:8000).

## Authors

- Ben Blyth - [@bbsaint590](https://github.com/bbsaint590)

## Links

- GitHub Repo: [https://github.com/bbsaint590/Laravel-furniture-store](https://github.com/bbsaint590/Laravel-furniture-store)

## Acknowledgements

- Laravel Framework Documentation: [https://laravel.com/docs](https://laravel.com/docs)
- Any other libraries, tools, or individuals who contributed to the project.
