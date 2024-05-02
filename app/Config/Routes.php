<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/home', 'Home::index');
$routes->addRedirect('/', 'home');

$routes->get('login', 'Auth::login');
$routes->post('auth/loginProcess', 'Auth::loginProcess');
$routes->get('auth/logout', 'Auth::logout');

$routes->get('gawe', 'Gawe::index');
$routes->get('gawe/add', 'Gawe::create');
$routes->post('gawe', 'Gawe::store');
$routes->get('gawe/edit/(:num)', 'Gawe::edit/$1');
$routes->put('gawe/(:any)', 'Gawe::update/$1');
$routes->delete('gawe/(:segment)', 'Gawe::destroy/$1');

$routes->get('groups/trash', 'Groups::trash');
$routes->get('groups/restore/(:any)', 'Groups::restore/$1');
$routes->get('groups/restore', 'Groups::restore');
$routes->delete('groups/delete2/(:any)', 'Groups::delete2/$1');
$routes->delete('groups/delete2', 'Groups::delete2');
$routes->presenter('groups', ['filter' => 'isLoggedIn']);

$routes->get('contacts/export', 'Contacts::export', ['filter' => 'isLoggedIn']);
$routes->post('contacts/import', 'Contacts::import', ['filter' => 'isLoggedIn']);
$routes->resource('contacts', ['filter' => 'isLoggedIn']);