<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Parth ❤️ Sneha – 3rd Anniversary</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }

    body {
      background: radial-gradient(circle at top, #1a001a, #000);
      min-height: 100vh;
      overflow-y: auto; /* ✅ allow full scroll */
      color: #fff;
    }

    .wrapper {
      min-height: 100vh;
      display: flex;
      align-items: flex-start; /* ✅ start from top */
      justify-content: center;
      padding: 20px 10px 60px; /* space for mobile */
    }

    .card {
      background: rgba(20, 0, 30, 0.75);
      backdrop-filter: blur(14px);
      width: 100%;
      max-width: 420px;
      padding: 26px;
      border-radius: 25px;
      text-align: center;
      box-shadow: 0 0 40px rgba(255, 0, 120, 0.35);
      animation: pop 1s ease;
      position: relative;
      z-index: 2;
      border: 1px solid rgba(255,255,255,0.15);
    }

    @keyframes pop { from { transform: scale(0.85); opacity: 0; } to { transform: scale(1); opacity: 1; } }

    h1 { color: #ff5fa2; margin-bottom: 10px; text-shadow: 0 0 12px rgba(255,95,162,0.9); }

    p { color: #f2e9f7; font-size: 1.05rem; margin-bottom: 18px; line-height: 1.6; }

    .heart {
      font-size: 58px;
      margin: 15px 0;
      animation: heartbeat 1.2s infinite;
      text-shadow: 0 0 25px #ff5fa2;
    }

    @keyframes heartbeat {
      0% { transform: scale(1); }
      25% { transform: scale(1.25); }
      40% { transform: scale(1); }
      60% { transform: scale(1.3); }
      100% { transform: scale(1); }
    }

    button {
      background: linear-gradient(135deg, #ff4d6d, #ff006e);
      color: #fff;
      border: none;
      padding: 12px 24px;
      font-size: 1rem;
      border-radius: 30px;
      cursor: pointer;
      transition: 0.3s;
      box-shadow: 0 0 18px rgba(255,0,110,0.7);
      margin: 6px 4px;
    }
    button:hover { transform: scale(1.08); box-shadow: 0 0 30px rgba(255,0,110,1); }

    .hidden { display: none; margin-top: 16px; color: #ff9ad5; font-weight: 500; }

    .floating-heart {
      position: fixed;
      bottom: -20px;
      font-size: 22px;
      animation: floatUp 7s linear infinite;
      opacity: 0.8;
      color: #ff5fa2;
      text-shadow: 0 0 12px #ff5fa2;
      z-index: 1;
    }

    @keyframes floatUp { from { transform: translateY(0); opacity: 1; } to { transform: translateY(-120vh); opacity: 0; } }

    .confetti {
      position: fixed;
      width: 8px;
      height: 8px;
      animation: fall 3s linear forwards;
      z-index: 1;
      border-radius: 50%;
    }

    @keyframes fall { to { transform: translateY(100vh) rotate(360deg); opacity: 0; } }

    .countdown { font-size: 1.05rem; color: #ff9ad5; font-weight: bold; margin-top: 14px; text-shadow: 0 0 12px rgba(255,154,213,0.9); }

    .pulse { animation: pulseGlow 1.8s infinite; }

    @keyframes pulseGlow {
      0% { text-shadow: 0 0 10px #ff5fa2; }
      50% { text-shadow: 0 0 25px #ff9ad5; }
      100% { text-shadow: 0 0 10px #ff5fa2; }
    }

    .lock { margin-top: 20px; font-size: 1.2rem; color: #ffd6ff; text-shadow: 0 0 15px #ff5fa2; }
  </style>
</head>
<body>

  <div class="wrapper">
    <div class="card" id="card">
      <h1>
        Happy 3rd Anniversary Sneha 💖<br>
        <span style="font-size:0.9rem;color:#d6b3ff">7 February 2023 – Forever</span>
      </h1>
      <div class="heart">❤️</div>
      <p>
        To my dearest Sneha,<br>
        even in the darkest nights, you are my brightest light.<br>
        Loving you is my favorite forever.
      </p>

      <button id="surpriseBtn">Click for a Surprise 💌</button>
      <p style="font-size:0.8rem;color:#ccc;margin-top:6px">(Tap once to enable music 🎶)</p>

      <div id="surprise" class="hidden">
        Sneha, I love you forever & ever, bae 💖<br>
        Yours always,<br><strong>Parth</strong>
      </div>

      <div id="proposal" class="hidden">
        <p><strong>Happy 3 years of us 💍<br>Will you stay with me forever?</strong></p>
        <button id="yesBtn">Yes 💖</button>
        <button id="alwaysBtn">Always 💞</button>
      </div>
    </div>
  </div>

  <audio id="bgMusic" loop preload="auto">
    <source src="https://cdn.pixabay.com/audio/2023/09/26/audio_0c6c44a7b1.mp3" type="audio/mpeg">
  </audio>

  <script>
    document.getElementById('surpriseBtn').addEventListener('click', showMessage);
    document.getElementById('yesBtn').addEventListener('click', sayYes);
    document.getElementById('alwaysBtn').addEventListener('click', sayYes);

    function showMessage() {
      document.getElementById('surprise').style.display = 'block';
      document.getElementById('proposal').style.display = 'block';
      const music = document.getElementById('bgMusic');
      music.volume = 0.5;
      music.play().catch(() => {});
    }

    function sayYes() {
      const card = document.getElementById('card');
      card.innerHTML = `
        <h1 class="pulse">Parth ❤️ Sneha</h1>
        <div class="heart">💖</div>
        <p id="typeText"></p>
        <div class="countdown pulse" id="countdown"></div>
        <div class="countdown" id="loveDays"></div>
        <div class="countdown pulse" id="liveTimer"></div>
        <div class="lock">🔒 Forever Locked</div>
      `;

      const text = "3 years down, forever to go. I promise to love you, protect you, and choose you every single day. You are my today, my tomorrow, and my always.";
      let i = 0;
      createConfetti();

      const typing = setInterval(() => {
        document.getElementById('typeText').textContent += text.charAt(i);
        i++;
        if (i >= text.length) clearInterval(typing);
      }, 50);

      startCountdown();
    }

    function startCountdown() {
      let sec = 8;
      const cd = document.getElementById('countdown');

      const timer = setInterval(() => {
        cd.textContent = `Our forever continues in ${sec} seconds 💞`;
        sec--;
        if (sec < 0) {
          clearInterval(timer);
          cd.textContent = '3 Years Completed • Forever Continues 💍❤️';
          showLoveDays();
        }
      }, 1000);
    }

    function showLoveDays() {
      const startDate = new Date('2023-02-07T00:00:00');
      const now = new Date();
      const diffTime = now - startDate;
      const days = Math.floor(diffTime / (1000 * 60 * 60 * 24));

      document.getElementById('loveDays').innerHTML = `Together since 7 Feb 2023 • ${days}+ days of love ❤️<br><span style="font-size:0.95rem;color:#d6b3ff">7 Feb 2023 → 7 Feb 2026 = <strong>1096 days</strong> of us 💞</span>`;

      startLiveTimer(startDate);
    }

    function startLiveTimer(startDate) {
      const timerDiv = document.getElementById('liveTimer');
      setInterval(() => {
        const now = new Date();
        let diff = now - startDate;

        const days = Math.floor(diff / (1000 * 60 * 60 * 24));
        diff %= (1000 * 60 * 60 * 24);
        const hours = Math.floor(diff / (1000 * 60 * 60));
        diff %= (1000 * 60 * 60);
        const minutes = Math.floor(diff / (1000 * 60));
        diff %= (1000 * 60);
        const seconds = Math.floor(diff / 1000);

        timerDiv.textContent = `Live Love Timer ⏳ ${days}d ${hours}h ${minutes}m ${seconds}s`;
      }, 1000);
    }

    setInterval(() => {
      const heart = document.createElement('div');
      heart.className = 'floating-heart';
      heart.textContent = '❤️';
      heart.style.left = Math.random() * 100 + 'vw';
      heart.style.fontSize = Math.random() * 22 + 14 + 'px';
      document.body.appendChild(heart);
      setTimeout(() => heart.remove(), 7000);
    }, 700);

    function createConfetti() {
      const colors = ['#ff4d6d','#ff9ad5','#d6b3ff','#ff006e'];
      for (let i = 0; i < 120; i++) {
        const c = document.createElement('div');
        c.className = 'confetti';
        c.style.left = Math.random() * 100 + 'vw';
        c.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
        c.style.animationDuration = Math.random() * 2 + 2 + 's';
        document.body.appendChild(c);
        setTimeout(() => c.remove(), 3000);
      }
    }
  </script>
</body>
</html>
