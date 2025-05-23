<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is register all web routes for your application. These routes are
| loaded by the RouteServiceProvider and assigned to the "web" middleware group.
|
| Routes Documentation:
| --------------------
| - `/sanctum/csrf-cookie` → CSRF protection for frontend frameworks (e.g., Vue, React)
| - `/` → API welcome & documentation endpoint
| - `/health` → Health check for monitoring services
|
*/

// ======================
// 1. Sanctum CSRF Cookie
// ======================
// Required for frontend authentication (e.g., SPA with Laravel Sanctum)
Route::get('/sanctum/csrf-cookie', function () {
    return response()->noContent();
});

// ======================
// 2. API Documentation
// ======================
Route::get('/', function () {
    return response()->json([
        'message' => 'Welcome to the Library Management API',
        'documentation' => [
            'version' => '1.0.0',
            'description' => 'A RESTful API for managing books, users, and transactions.',
            'authentication' => 'Uses Laravel Sanctum for API token auth.',
            'endpoints' => [
                'auth' => [
                    'POST /api/auth/register' => 'Register a new user',
                    'POST /api/auth/login' => 'Login with credentials',
                    'POST /api/auth/logout' => 'Logout (authenticated)',
                    'GET /api/auth/me' => 'Get current user info',
                ],
                'books' => [
                    'GET /api/books' => 'List all books (public)',
                    'POST /api/books' => 'Create new book (admin-only)',
                    'GET /api/books/{id}' => 'Get book details (public)',
                    'PUT /api/admin/books/{id}' => 'Update book (admin-only)',
                    'DELETE /api/admin/books/{id}' => 'Delete book (admin-only)',
                    'POST /api/books/{id}/borrow' => 'Borrow a book (authenticated)',
                ],
                'transactions' => [
                    'GET /api/transactions' => 'List user transactions (authenticated)',
                    'GET /api/transactions/{id}' => 'Get transaction details (authenticated)',
                    'POST /api/transactions/{id}/return' => 'Return a book (authenticated)',
                ],
                'users' => [
                    'GET /api/admin/users' => 'List users (admin-only)',
                    'GET /api/admin/users/{id}' => 'Get user details (admin-only)',
                    'PUT /api/admin/users/{id}' => 'Update user (admin-only)',
                    'DELETE /api/admin/users/{id}' => 'Delete user (admin-only)',
                ]
            ],
            'note' => 'Admin endpoints require the `admin` role.'
        ]
    ]);
});

// ======================
// 3. Health Check
// ======================
// Used for uptime monitoring (e.g., Kubernetes, AWS ALB)
Route::get('/health', function () {
    return response()->json([
        'status' => 'healthy',
        'timestamp' => now()->toDateTimeString(),
    ]);
});
