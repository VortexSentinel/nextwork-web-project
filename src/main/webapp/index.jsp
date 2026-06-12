<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Welcome to the NextWork web application. Successfully deployed via CI/CD.">
    <meta name="theme-color" content="#2563eb">

    <!-- Open Graph / Social Media Tags (Enterprise Standard) -->
    <meta property="og:title" content="NextWork | Welcome">
    <meta property="og:description" content="NextWork web application is running successfully.">
    <meta property="og:type" content="website">

    <title>NextWork | Welcome</title>

    <!-- Favicon Placeholder -->
    <link rel="icon"
        href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>🚀</text></svg>">

    <style>
        /* =========================================
           1. DESIGN SYSTEM (CSS Variables)
           ========================================= */
        :root {
            /* Colors */
            --color-primary: #2563eb;
            --color-primary-hover: #1d4ed8;
            --color-primary-focus: rgba(37, 99, 235, 0.4);
            --color-bg: #f8fafc;
            --color-surface: #ffffff;
            --color-text-primary: #0f172a;
            --color-text-secondary: #475569;
            --color-success-bg: #dcfce7;
            --color-success-text: #166534;
            --color-border: #e2e8f0;

            /* Spacing & Sizing */
            --radius-sm: 6px;
            --radius-md: 12px;
            --radius-lg: 16px;

            /* Shadows (Layered for depth) */
            --shadow-sm: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
            --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -2px rgba(0, 0, 0, 0.05);
            --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.05), 0 4px 6px -4px rgba(0, 0, 0, 0.05);

            /* Transitions */
            --transition-fast: 150ms cubic-bezier(0.4, 0, 0.2, 1);
        }

        /* =========================================
           2. RESET & BASE STYLES
           ========================================= */
        *,
        *::before,
        *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background-color: var(--color-bg);
            /* Subtle radial gradient for modern depth */
            background-image: radial-gradient(circle at 50% 0%, #eff6ff 0%, var(--color-bg) 70%);
            color: var(--color-text-primary);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            line-height: 1.6;
            padding: 1.5rem;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        /* =========================================
           3. COMPONENT: CARD
           ========================================= */
        .container {
            background-color: var(--color-surface);
            padding: 3rem 2.5rem;
            border-radius: var(--radius-lg);
            border: 1px solid var(--color-border);
            box-shadow: var(--shadow-lg);
            text-align: center;
            max-width: 480px;
            width: 100%;
            /* Subtle entrance animation */
            animation: fadeInUp 0.6s var(--transition-fast) forwards;
            opacity: 0;
            transform: translateY(10px);
        }

        @keyframes fadeInUp {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* =========================================
           4. TYPOGRAPHY & ELEMENTS
           ========================================= */
        .status-badge {
            display: inline-flex;
            align-items: center;
            gap: 0.375rem;
            background-color: var(--color-success-bg);
            color: var(--color-success-text);
            font-size: 0.75rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            padding: 0.375rem 0.75rem;
            border-radius: 9999px;
            margin-bottom: 1.5rem;
        }

        .status-badge svg {
            width: 14px;
            height: 14px;
        }

        h1 {
            font-size: 1.875rem;
            font-weight: 700;
            letter-spacing: -0.025em;
            color: var(--color-text-primary);
            margin-bottom: 1rem;
        }

        .highlight {
            color: var(--color-primary);
        }

        .description {
            color: var(--color-text-secondary);
            font-size: 1rem;
            margin-bottom: 2rem;
            max-width: 400px;
            margin-left: auto;
            margin-right: auto;
        }

        .info-box {
            background-color: #f1f5f9;
            border-left: 3px solid var(--color-primary);
            padding: 1rem;
            border-radius: 0 var(--radius-sm) var(--radius-sm) 0;
            text-align: left;
            margin-bottom: 2rem;
            font-size: 0.875rem;
            color: var(--color-text-secondary);
        }

        .info-box strong {
            color: var(--color-text-primary);
            display: block;
            margin-bottom: 0.25rem;
        }

        /* =========================================
           5. COMPONENT: BUTTON
           ========================================= */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            background-color: var(--color-primary);
            color: #ffffff;
            text-decoration: none;
            padding: 0.75rem 1.75rem;
            border-radius: var(--radius-sm);
            font-size: 0.95rem;
            font-weight: 600;
            border: 1px solid transparent;
            cursor: pointer;
            transition: background-color var(--transition-fast),
                transform var(--transition-fast),
                box-shadow var(--transition-fast);
        }

        .btn:hover {
            background-color: var(--color-primary-hover);
            transform: translateY(-1px);
            box-shadow: var(--shadow-md);
        }

        .btn:active {
            transform: translateY(0);
            box-shadow: var(--shadow-sm);
        }

        /* Enterprise Accessibility: Focus Visible State */
        .btn:focus-visible {
            outline: 2px solid var(--color-primary);
            outline-offset: 2px;
        }

        .btn svg {
            width: 18px;
            height: 18px;
            transition: transform var(--transition-fast);
        }

        .btn:hover svg {
            transform: translateX(2px);
        }

        /* =========================================
           6. RESPONSIVE TWEAKS
           ========================================= */
        @media (max-width: 480px) {
            .container {
                padding: 2rem 1.5rem;
            }

            h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>

<body>

    <main class="container" role="main">
        <!-- Deployment Status Badge -->
        <div class="status-badge">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                <path fill-rule="evenodd"
                    d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z"
                    clip-rule="evenodd" />
            </svg>
            Deployment Successful
        </div>

        <header>
            <h1>Hello, <span class="highlight">rj</span>! 👋</h1>
            <p class="description">
                Your <strong>NextWork</strong> web application is up and running smoothly.
            </p>
        </header>

        <!-- Contextual Info Box for CI/CD -->
        <div class="info-box">
            <strong>🚀 CI/CD Active</strong>
            This page confirms that your latest code changes have been successfully built and automatically deployed
            into production via AWS CodePipeline.
        </div>

        <footer>
            <a href="/dashboard" class="btn" aria-label="Proceed to the NextWork dashboard">
                Get Started
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd"
                        d="M3 10a.75.75 0 01.75-.75h10.638L10.23 5.29a.75.75 0 111.04-1.08l5.5 5.25a.75.75 0 010 1.08l-5.5 5.25a.75.75 0 11-1.04-1.08l4.158-3.96H3.75A.75.75 0 013 10z"
                        clip-rule="evenodd" />
                </svg>
            </a>
        </footer>
    </main>

</body>

</html>