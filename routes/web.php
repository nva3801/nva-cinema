<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\User\IndexController;
use App\Http\Controllers\User\CategoryController;
use App\Http\Controllers\User\MovieController;
use App\Http\Controllers\User\MovieTimeController;
use App\Http\Controllers\User\BookingController;
use App\Http\Controllers\User\BillController;
use App\Http\Controllers\User\NewsController;
use App\Http\Controllers\User\CheckoutController;
use App\Http\Controllers\User\PaymentController;

//BE
use App\Http\Controllers\Admin\CategoryController as AdminCategoryController;
use App\Http\Controllers\Admin\MovieController as AdminMovieController;
use App\Http\Controllers\Admin\MovieDateController as AdminMovieDateController;
use App\Http\Controllers\Admin\MovieTimeController as AdminMovieTimeController;
use App\Http\Controllers\Admin\BookingController as AdminBookingController;
use App\Http\Controllers\Admin\SeatController as AdminSeatController;
use App\Http\Controllers\Admin\NewsController as AdminNewsController;
use App\Http\Controllers\Admin\UserController as AdminUserController;
use App\Http\Controllers\Admin\AdminController as AdminAdminController;

Auth::routes();
Route::get('/', [IndexController::class, 'index']);
Route::get('danh-muc/{slug}', [CategoryController::class, 'category'])->name("category");
Route::get('phim/{slug}', [MovieController::class, 'movie'])->name("movie");
Route::get('time/{id}', [MovieTimeController::class, 'time'])->name("time");
Route::get('booking/{id}', [BookingController::class, 'booking'])->name("booking");
Route::get('tin-tuc/{id}', [NewsController::class, 'news'])->name("news");
Route::get('don-hang', [BillController::class, 'bill']);
Route::get('don-hang/{madonhang}', [BillController::class, 'billdetail'])->name('billdetail');
Route::get('checkout', [CheckoutController::class, 'checkoutget']);
Route::post('checkout', [CheckoutController::class, 'checkoutpost']);
Route::post('thanh-toan', [PaymentController::class, 'payment']);

Route::group(['middleware' => ['auth', 'admin']], function () {
    Route::prefix('admin')->name('admin.')->group(function () {
        Route::get('dashboard', [HomeController::class, 'adminView'])->name('dashboard');
        Route::resource('category', AdminCategoryController::class);
        Route::resource('movie', AdminMovieController::class);
        Route::resource('moviedate', AdminMovieDateController::class);
        Route::resource('movietime', AdminMovieTimeController::class);
        Route::resource('news', AdminNewsController::class);
        Route::get('booking', [AdminBookingController::class, 'booking']);
        Route::get('bookingdetail/{id}', [AdminBookingController::class, 'bookingdetail'])->name("bookingdetail");
        Route::get('bookingtime', [AdminSeatController::class, 'showtime']);
        Route::get('seatlist/{id}', [AdminSeatController::class, 'seat'])->name("seat");
        Route::get('userbook/{name}', [AdminSeatController::class, 'userbook'])->name("userbook");
        Route::resource('user', AdminUserController::class);
        Route::resource('admin', AdminAdminController::class);
    });
});