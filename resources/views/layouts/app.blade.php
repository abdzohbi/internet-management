<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title', 'Dashboard')</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar-brand {
            font-weight: bold;
        }
        .navbar-nav .nav-link {
            color: white;
        }
        .navbar-nav .nav-link:hover {
            color: #ffc107;
        }
        .dropdown-menu {
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
        }
        .content {
            padding: 20px;
        }
    </style>
</head>
<body>
    <!-- Top Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ route('dashboard') }}">
            <i class="fas fa-network-wired me-2"></i>VARNet
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                @guest
                    @if (Route::has('login'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                    @endif
                @else
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('dashboard') }}">
                            <i class="fas fa-home me-1"></i> Dashboard
                        </a>
                    </li>

                    @can('account-list')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('customers.index') }}">
                                <i class="fas fa-users me-1"></i> Customers
                            </a>
                        </li>
                    @endcan

                    @can('account-list')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('maintenance_logs.index') }}">
                                <i class="fas fa-tools me-1"></i> Maintenance Logs
                            </a>
                        </li>
                    @endcan

                    <!-- Accounts Dropdown -->
                    @can('account-list')
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="accountsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-wallet me-1"></i> Accounts
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="accountsDropdown">
                                <li><a class="dropdown-item" href="{{ route('receipts.index') }}">
                                    <i class="fas fa-receipt me-1"></i> Receipts
                                </a></li>
                                <li><a class="dropdown-item" href="{{ route('expenses.index') }}">
                                    <i class="fas fa-coins me-1"></i> Expenses
                                </a></li>
                                <li><a class="dropdown-item" href="{{ route('subscriptions.index') }}">
                                    <i class="fas fa-sync me-1"></i> Renewals
                                </a></li>


                                <li><a class="dropdown-item" href="{{ route('cash.index') }}">Case</a></li>
                            </ul>
                        </li>
                    @endcan

                    <!-- Master Data Dropdown -->
                    @can('account-list')
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="masterDataDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-database me-1"></i> Master Data
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="masterDataDropdown">
                                <li><a class="dropdown-item" href="{{ route('connection_points.index') }}">
                                    <i class="fas fa-map-marker-alt me-1"></i> Connection Points
                                </a></li>
                                <li><a class="dropdown-item" href="{{ route('companies.index') }}">
                                    <i class="fas fa-building me-1"></i> Companies
                                </a></li>
                                <li><a class="dropdown-item" href="{{ route('packages.index') }}">
                                    <i class="fas fa-boxes me-1"></i> Packages
                                </a></li>
                            </ul>
                        </li>
                    @endcan

                    <!-- Reports Dropdown -->
                    @can('customer-list')
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="reportsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-file-alt me-1"></i> Reports
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="reportsDropdown">
                                <li><a class="dropdown-item" href="{{ route('reports.outstanding_customers') }}">Outstanding Customers</a></li>
                                <li><a class="dropdown-item" href="{{ route('reports.export.customers.balance') }}">Export Customer Balances</a></li>
                                <li><a class="dropdown-item" href="{{ route('reports.index') }}">Reports</a></li>
                                
                            </ul>
                        </li>
                    @endcan

                    <!-- Backup Dropdown -->
                    @can('role-list')
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="backupDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-hdd me-1"></i> Backup & Settings
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="backupDropdown">
                                <li><a class="dropdown-item" href="{{ route('backup.now') }}">
                                    <i class="fas fa-save me-1"></i> Backup Now
                                </a></li>
                                <li><a class="dropdown-item" href="{{ route('backup.import') }}">
                                    <i class="fas fa-upload me-1"></i> Import Previous Backup
                                </a></li>
                                <li><a class="dropdown-item" href="{{ route('company-info.index') }}">Company Information</a></li>
                            </ul>
                        </li>
                    @endcan

                    <!-- User Menu -->
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{ Auth::user()->name }}
                        </a>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>


    <!-- Main Content -->
    <div class="content container">
        @yield('content')
    </div>

    <!-- Footer -->
    <footer class="text-center mt-4 py-3 bg-light">
        <p>&copy; {{ date('Y') }} ResoNet. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
