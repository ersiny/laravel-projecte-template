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
