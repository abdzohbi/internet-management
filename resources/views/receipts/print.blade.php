<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>إيصال #{{ $receipt->id }}</title>
    <style>
        body {
            width: 80mm;
            font-family: Arial, sans-serif;
            font-size: 12px;
            margin: 0;
            padding: 0;
        }
        .receipt {
            padding: 10px;
            text-align: center;
        }
        .header {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .details {
            text-align: left;
            margin-bottom: 10px;
        }
        .footer {
            margin-top: 10px;
            font-size: 10px;
        }
    </style>
</head>
<body>
    <div class="receipt">
        <div class="header">
            <h1>{{ $companyInfo->name }}</h1>
            @if($companyInfo->logo)
                <img src="{{ asset('storage/' . $companyInfo->logo) }}" alt="شعار الشركة" width="50">
            @endif
        </div>
        <div class="details">
            <p>رقم الإيصال: {{ $receipt->id }}</p>
            <p>التاريخ: {{ $receipt->date->format('Y-m-d H:i') }}</p>
            <p>العميل: {{ $receipt->customer->name }}</p>
            <p>المبلغ: {{ number_format($receipt->amount, 2) }} {{ $receipt->currency }}</p>
            <p>طريقة الدفع: {{ $receipt->payment_method }}</p>
        </div>
        <div class="footer">
            شكرًا لتعاملكم معنا!
        </div>
        <script>
            window.onload = function() {
                window.print();
            };
        </script>
    </div>
</body>
</html>
