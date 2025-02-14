{{-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Webhook Data</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        pre { background: #f4f4f4; padding: 10px; border-radius: 5px; }
    </style>
</head>
<body>
    <h2>Webhook Data</h2>
    @if(file_exists(resource_path('views/webhook/webhook_data.json')))
        @php
            $jsonData = json_decode(file_get_contents(resource_path('views/webhook/webhook_data.json')), true);
        @endphp
        <pre>{{ json_encode($jsonData, JSON_PRETTY_PRINT) }}</pre>
    @else
        <p>No webhook data available.</p>
    @endif

</body>
</html> --}}



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Webhook Data</title>
  <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        pre { background: #f4f4f4; padding: 10px; border-radius: 5px; }
    </style>
</head>
<body>
    <h2>Webhook Data</h2>
    <pre>{{ json_encode($webhookData, JSON_PRETTY_PRINT) }}</pre>
</body>
</html>
