<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hamster MiniApp</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #fceabb, #f8b500);
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;
            height: 100vh;
        }

        header {
            margin-top: 10px;
            font-size: 24px;
            font-weight: bold;
        }

        .hamster-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            flex-grow: 1;
        }

        .hamster {
            width: 150px;
            height: 150px;
            background-image: url("https://i.imgur.com/qX4cS9P.png"); /* رابط صورة هامستر */
            background-size: cover;
            border-radius: 50%;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            animation: bounce 1s infinite;
        }

        @keyframes bounce {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        .coins-display {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }

        footer {
            display: flex;
            justify-content: space-around;
            width: 100%;
            background: #444;
            padding: 10px 0;
        }

        .nav-button {
            flex: 1;
            text-align: center;
            color: #fff;
            font-size: 14px;
            padding: 10px 0;
            cursor: pointer;
            background: #555;
            border: none;
        }

        .nav-button:hover {
            background: #666;
        }

        .nav-button.active {
            background: #f8b500;
            color: #333;
        }
    </style>
</head>
<body>
    <header>
        Hamster MiniApp
    </header>

    <div class="hamster-container">
        <div class="hamster" onclick="addCoins()"></div>
        <div class="coins-display">
            Coins: <span id="coin-count">0</span>
        </div>
    </div>

    <footer>
        <button class="nav-button active" onclick="navigate('home')">Home</button>
        <button class="nav-button" onclick="navigate('task')">TASK</button>
        <button class="nav-button" onclick="navigate('app')">App</button>
        <button class="nav-button" onclick="navigate('study')">STUDY</button>
        <button class="nav-button" onclick="navigate('airdrop')">AirDrop Coming Soon</button>
    </footer>

    <script>
        let coins = 0;

        function addCoins() {
            coins++;
            document.getElementById('coin-count').innerText = coins;
        }

        function navigate(page) {
            const buttons = document.querySelectorAll('.nav-button');
            buttons.forEach(button => button.classList.remove('active'));
            document.querySelector(`[onclick="navigate('${page}')"]`).classList.add('active');
            alert(`Navigating to ${page}`);
        }
    </script>
</body>
</html>
