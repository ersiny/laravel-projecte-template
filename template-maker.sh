# Create a new Laravel project
composer create-project laravel/laravel your-project-name

cd your-project-name

# Configure SQLite
touch database/database.sqlite
sed -i '' "s/DB_CONNECTION=mysql/DB_CONNECTION=sqlite/" .env
sed -i '' "s/DB_DATABASE=laravel/DB_DATABASE=database\/database.sqlite/" .env

# Remove unused Node packages
npm remove @vitejs/plugin-react
npm remove @vitejs/plugin-vue

# Install Alpine.js, Tailwind CSS, and Font Awesome
npm install alpinejs
npm install -D tailwindcss postcss autoprefixer
npm install --save @fortawesome/fontawesome-free

# Initialize Tailwind CSS
npx tailwindcss init -p

# Install Laravel Vite with live reload
npm install --save-dev vite laravel-vite-plugin
npm install --save-dev browser-sync browser-sync-webpack-plugin

# Create a custom vite.config.js file
cat > vite.config.js << 'EOL'
import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/js/app.js'
            ],
            refresh: true,
        }),
    ],
});
EOL

# Configure Tailwind CSS
cat > tailwind.config.js << 'EOL'
/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./resources/**/*.blade.php",
    "./resources/**/*.js",
    "./resources/**/*.vue",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOL

# Set up the main CSS file
cat > resources/css/app.css << 'EOL'
@import '@fortawesome/fontawesome-free/css/all.css';
@tailwind base;
@tailwind components;
@tailwind utilities;

/* Your custom CSS goes here */
EOL

# Set up the main JavaScript file
cat > resources/js/app.js << 'EOL'
import './bootstrap';
import Alpine from 'alpinejs';
import '@fortawesome/fontawesome-free/js/all.js';

window.Alpine = Alpine;
Alpine.start();

// Your custom JavaScript code goes here
EOL

# Update welcome.blade.php to include all features
cat > resources/views/welcome.blade.php << 'EOL'
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Laravel</title>
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="bg-gray-100">
        <div class="container mx-auto px-4 py-8">
            <div x-data="{ open: false }" class="bg-white rounded-lg shadow-lg p-6">
                <h1 class="text-3xl font-bold text-gray-800 mb-4">
                    <i class="fas fa-rocket text-blue-500"></i> 
                    Welcome to Laravel
                </h1>
                <button 
                    @click="open = !open"
                    class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
                >
                    <i class="fas fa-chevron-down mr-2"></i>
                    Toggle Message
                </button>
                <p 
                    x-show="open" 
                    class="mt-4 text-gray-600"
                    x-transition
                >
                    This is a dynamic content powered by Alpine.js with Tailwind CSS styling!
                </p>
            </div>
        </div>
    </body>
</html>
EOL

# Create a Procfile for easy deployment (if using Heroku)
echo "web: vendor/bin/heroku-php-apache2 public/" > Procfile

# Initialize Git repository
#git init
#git add .
#git commit -m "Initial commit"

# Install dependencies and compile assets
#composer install
#npm install
#npm run build
