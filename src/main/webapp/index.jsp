<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Welcome to the NextWork web application">
    <title>NextWork | Welcome</title>
    <style>
        /* Modern, clean reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: system-ui, -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            background-color: #f4f7f6;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            line-height: 1.6;
        }

        /* Card-style container for the content */
        .container {
            background-color: #ffffff;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            text-align: center;
            max-width: 500px;
            width: 90%;
        }

        h1 {
            color: #2563eb;
            /* Professional blue accent */
            font-size: 2rem;
            margin-bottom: 1rem;
        }

        p {
            color: #555;
            font-size: 1.1rem;
            margin-bottom: 1.5rem;
        }

        .highlight {
            color: #2563eb;
            font-weight: 600;
        }

        /* Optional: A nice call-to-action button */
        .btn {
            display: inline-block;
            background-color: #2563eb;
            color: #ffffff;
            text-decoration: none;
            padding: 0.75rem 1.5rem;
            border-radius: 6px;
            font-weight: 500;
            transition: background-color 0.2s ease, transform 0.1s ease;
        }

        .btn:hover {
            background-color: #1d4ed8;
            transform: translateY(-1px);
        }

        .btn:active {
            transform: translateY(0);
        }
    </style>
</head>

<body>

    <main class="container">
        <h1>Hello rj! 👋</h1>
        <p>This is my <span class="highlight">NextWork</span> web application working!</p>
        <a href="#" class="btn">Get Started</a>
    </main>

</body>

</html>