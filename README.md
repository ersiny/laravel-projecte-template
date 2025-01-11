# Laravel Starter Template

A streamlined Laravel starter template featuring SQLite database, Alpine.js for frontend interactivity, Tailwind CSS for styling, and Font Awesome icons. Built with Blade templating and Vite for hot-reloading, this template provides a modern full-stack development experience without heavy JavaScript frameworks.

## Core Components

- **Backend Framework:** Laravel
- **Database:** SQLite
- **Frontend Stack:**
  - Alpine.js for dynamic functionality
  - Tailwind CSS for styling
  - Font Awesome for icons
  - Blade templating engine
- **Development Tools:**
  - Vite with hot-reloading
  - Browser-sync for live preview

## Requirements

- PHP >= 8.1
- Composer
- Node.js & NPM
- SQLite

## Quick Start

1. Clone this repository:
```bash
git clone [repository-url]
cd [project-name]
```

2. Install PHP dependencies:
```bash
composer install
```

3. Install Node dependencies:
```bash
npm install
```

4. Set up environment file:
```bash
cp .env.example .env
php artisan key:generate
```

5. Create SQLite database:
```bash
touch database/database.sqlite
```

6. Run migrations:
```bash
php artisan migrate
```

7. Start development servers:
```bash
# Terminal 1: Laravel server
php artisan serve

# Terminal 2: Vite development server
npm run dev
```

Visit `http://localhost:8000` to see your application.

## Features

### Frontend Development
- **Alpine.js:** Lightweight JavaScript framework for adding dynamic behavior
- **Tailwind CSS:** Utility-first CSS framework for rapid UI development
- **Font Awesome:** Comprehensive icon library
- **Live Reload:** Automatic page refresh on code changes

### Backend Development
- **SQLite Database:** Simple, serverless database setup
- **Blade Templates:** Laravel's powerful templating engine
- **Laravel Standard Features:** Authentication, validation, and more

## Directory Structure

Key directories and files:

```
├── app/                 # PHP application code
├── database/
│   └── database.sqlite  # SQLite database file
├── resources/
│   ├── css/            # Tailwind CSS and custom styles
│   ├── js/             # Alpine.js and custom scripts
│   └── views/          # Blade templates
├── routes/             # Application routes
├── vite.config.js      # Vite configuration
└── tailwind.config.js  # Tailwind CSS configuration
```

## Deployment

This template comes with a pre-configured `Procfile` for Heroku deployment. For other platforms, standard Laravel deployment procedures apply.

## Customization

### Adding Custom Styles
Add your custom CSS in `resources/css/app.css`

### Adding Custom JavaScript
Add your custom JavaScript in `resources/js/app.js`

### Modifying Tailwind Configuration
Update `tailwind.config.js` to add custom colors, fonts, or other theme settings

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
