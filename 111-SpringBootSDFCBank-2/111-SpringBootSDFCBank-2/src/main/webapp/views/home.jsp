<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDFC Bank</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgba(77, 89, 45, 0.648);
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #333;
            padding: 10px 0;
            text-align: center;
            color: rgb(255, 196, 0);
        }

        .header h1, .header h2 {
            margin: 0;
        }

        .header h2 {
            color: rgb(0, 200, 255);
        }

        nav {
            background-color: #444;
            overflow: hidden;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }

        nav ul li {
            position: relative;
        }

        nav ul li a {
            display: block;
            color: rgb(255, 234, 192);
            text-decoration: none;
            padding: 15px 20px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: rgba(255, 196, 0, 0.7);
            color: #333;
        }

        nav ul li:hover > ul {
            display: block;
        }

        nav ul ul {
            display: none;
            position: absolute;
            background-color: #555;
            top: 100%;
            left: 0;
            min-width: 200px;
            z-index: 1000;
            border-radius: 0 0 5px 5px;
        }

        nav ul ul li {
            float: none;
        }

        nav ul ul li a {
            padding: 10px 20px;
            color: rgb(255, 234, 192);
        }

        nav ul ul li a:hover {
            background-color: rgba(255, 196, 0, 0.7);
            color: #333;
        }

        .menu-toggle {
            display: none;
            background-color: #444;
            color: rgb(255, 234, 192);
            padding: 10px 20px;
            border: none;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            width: 100%;
        }

        @media screen and (max-width: 768px) {
            .menu-toggle {
                display: block;
            }

            nav ul {
                display: none;
                flex-direction: column;
            }

            nav ul.active {
                display: flex;
            }

            nav ul li {
                width: 100%;
                text-align: center;
            }

            nav ul ul {
                position: static;
                background-color: #444;
                border-radius: 0;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>SDFC BANK</h1>
        <h2>EXTRAORDINARY SERVICES</h2>
    </div>

    <nav>
        <button class="menu-toggle">Menu</button>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/addbank">New Bank</a></li>
            <li><a href="/viewbank">Balance</a></li>
            <li><a href="/deposit">Deposit</a></li>
            <li><a href="/withdraw">Withdraw</a></li>
            <li><a href="/transfer">Transfer</a></li>
            <li><a href="/close">Close A/c</a></li>
            <li><a href="/about">About</a></li>
        </ul>
    </nav>

    <div class="content" style="text-align:center; margin:20px;">
        <img src="bank.jpeg" alt="img not found" height="200" width="200">
    </div>

    <script>
        const menuToggle = document.querySelector('.menu-toggle');
        const navUl = document.querySelector('nav ul');

        menuToggle.addEventListener('click', () => {
            navUl.classList.toggle('active');
        });
    </script>
</body>
</html>