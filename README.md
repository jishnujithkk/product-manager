#Laravel React Product Manager

##This is a project that combines the Laravel framework for the backend and React with Vite for the frontend. It serves as a product manager application.
Requirements

    Laravel Framework 8.83.27
    PHP (compatible version with Laravel 8.83.27)
    Node.js and npm (for React with Vite)
    MySQL (or any other supported database)

###Project Setup
###Laravel Setup

    Clone the repository:
    git clone https://github.com/jishnujithkk/Laravel-react-productmanager.git

Navigate to the Laravel project directory:


cd Laravel-react-productmanager

Install Composer dependencies:

composer install

Create a copy of the .env.example file and rename it to .env:


cp .env.example .env

Update the .env file with your database configuration and other settings.

Generate the application key:


php artisan key:generate

Run migrations and seed the database:



    php artisan migrate --seed

React with Vite Setup

    Navigate to the React project directory:



cd react-product-manager

Install Node.js dependencies:



npm install

Create a copy of the .env.example file and rename it to .env:



cp .env.example .env

Update the .env file with the necessary configurations.

Run the development server:


    npm run dev

Database

The SQL file laravel_react.sql is provided in the project folder. You can import it into your MySQL database to set up the initial schema and data.
Running the Project

    Start the Laravel development server:


php artisan serve

This will start the Laravel server at http://localhost:8000.

In a separate terminal, start the React development server:


    cd react-product-manager
    npm run dev

    This will start the React server at http://localhost:3000.

    Open your browser and visit http://localhost:3000 to access the React frontend.

That's it! You've successfully set up and run the Laravel React Product Manager project. If you encounter any issues, please review the steps and ensure that all dependencies are installed correctly.
