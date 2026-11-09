
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profil Satria Arifin</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            color: white;
            background: linear-gradient(
                135deg,
                #19060d,
                #4b1025,
                #851d3d,
                #260914
            );
            min-height: 100vh;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 25px 8%;
            background: rgba(20, 3, 10, 0.35);
            position: sticky;
            top: 0;
            backdrop-filter: blur(12px);
            z-index: 10;
        }

        .logo {
            font-size: 25px;
            font-weight: bold;
            letter-spacing: 3px;
        }

        .logo span {
            color: #f3a0b5;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 22px;
            transition: 0.3s;
        }

        nav a:hover {
            color: #f3a0b5;
        }

        .container {
            width: 85%;
            max-width: 1100px;
            margin: auto;
        }

        .hero {
            min-height: 85vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 40px;
        }

        .hero h1 {
            font-size: clamp(38px, 6vw, 65px);
            line-height: 1.15;
        }

        .hero h1 span {
            color: #f3a0b5;
        }

        .hero p {
            margin: 20px 0;
            color: #e6cbd3;
            line-height: 1.8;
            max-width: 570px;
        }

        .btn {
            display: inline-block;
            padding: 12px 25px;
            background: linear-gradient(90deg, #a82d50, #68152f);
            color: white;
            text-decoration: none;
            border-radius: 30px;
            transition: 0.3s;
            box-shadow: 0 5px 20px #0004;
        }

        .btn:hover {
            transform: translateY(-4px);
        }

        .profile {
            text-align: center;
            padding: 35px;
            border-radius: 25px;
            background: rgba(255,255,255,0.08);
            border: 1px solid rgba(255,255,255,0.15);
            backdrop-filter: blur(10px);
        }

        .avatar {
            width: 145px;
            height: 145px;
            margin: auto auto 20px;
            border-radius: 50%;
            background: linear-gradient(135deg, #e66b8a, #581128);
            display: grid;
            place-items: center;
            font-size: 48px;
            font-weight: bold;
            border: 5px solid #ffffff30;
        }

        section {
            padding: 75px 0;
        }

        .judul {
            font-size: 32px;
            margin-bottom: 30px;
            border-left: 5px solid #e66b8a;
            padding-left: 15px;
        }

        .about {
            color: #e6cbd3;
            line-height: 1.9;
            font-size: 17px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .card {
            padding: 28px;
            background: rgba(255,255,255,0.08);
            border: 1px solid #ffffff20;
            border-radius: 20px;
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-8px);
            background: rgba(255,255,255,0.14);
        }

        .card h3 {
            margin-bottom: 12px;
            color: #f3a0b5;
        }

        .card p {
            color: #e6cbd3;
            line-height: 1.7;
        }

        .icon {
            font-size: 35px;
            margin-bottom: 15px;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .gallery-box {
            min-height: 230px;
            border-radius: 20px;
            background: linear-gradient(135deg, #a83250, #350c1b);
            display: flex;
            flex-direction: column;
            justify-content: end;
            padding: 25px;
            border: 1px solid #ffffff25;
        }

        .gallery-box h3 {
            font-size: 24px;
        }

        .gallery-box p {
            color: #f1d1da;
        }

        .contact {
            padding: 30px;
            background: rgba(255,255,255,0.08);
            border-radius: 20px;
            border: 1px solid #ffffff20;
            line-height: 2.2;
        }

        .contact a {
            color: #f3a0b5;
            text-decoration: none;
        }

        footer {
            text-align: center;
            padding: 30px;
            color: #d7b7c1;
            background: #18050d70;
        }

        @media (max-width: 768px) {
            header {
                flex-direction: column;
                gap: 15px;
            }

            nav a {
                margin: 0 7px;
                font-size: 13px;
            }

            .hero {
                flex-direction: column;
                justify-content: center;
                text-align: center;
                padding: 70px 0;
            }

            .profile {
                width: 100%;
            }

            .cards,
            .gallery {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<header>
    <div class="logo">S<span>Æ</span>TRIN.</div>

    <nav>
        <a href="#home">Home</a>
        <a href="#about">Tentang</a>
        <a href="#skill">Skill</a>
        <a href="#hobi">Hobi</a>
        <a href="#kontak">Kontak</a>
    </nav>
</header>

<div class="container">

    <!-- HOME -->
    <div class="hero" id="home">

        <div>
            <h1>
                Halo, Saya<br>
                <span>Satria Arifin</span>
            </h1>

            <p>
                Selamat datang di website profil pribadi saya.
                Saya adalah seseorang yang tertarik dengan
                teknologi komputer dan jaringan, khususnya
                instalasi jaringan WiFi.
            </p>

            <a href="#about" class="btn">Kenali Saya</a>
        </div>

        <div class="profile">
            <div class="avatar">SA</div>
            <h2>Satria Arifin</h2>
            <p>Pelajar | Teknik Komputer dan Jaringan</p>
        </div>

    </div>

    <!-- TENTANG -->
    <section id="about">

        <h2 class="judul">Tentang Saya</h2>

        <p class="about">
            Perkenalkan, nama saya Satria Arifin.
            Saya berasal dari Kabupaten Blitar,
            Kecamatan Nglegok, Dusun Sumberasri.

            Saya memiliki ketertarikan dalam bidang
            teknologi komputer dan jaringan.
            Saya senang mempelajari hal baru,
            mengembangkan keterampilan, serta
            menambah pengalaman di dunia teknologi.
        </p>

    </section>

    <!-- SKILL -->
    <section id="skill">

        <h2 class="judul">Skill & Keterampilan</h2>

        <div class="cards">

            <div class="card">
                <div class="icon">📡</div>
                <h3>Instalasi WiFi</h3>
                <p>
                    Memiliki keterampilan dasar dalam
                    pemasangan dan instalasi jaringan WiFi.
                </p>
            </div>

            <div class="card">
                <div class="icon">🖥️</div>
                <h3>Jaringan Komputer</h3>
                <p>
                    Tertarik mempelajari konfigurasi
                    dan perangkat jaringan komputer.
                </p>
            </div>

            <div class="card">
                <div class="icon">⚙️</div>
                <h3>Troubleshooting</h3>
                <p>
                    Mempelajari cara mengidentifikasi
                    dan mengatasi gangguan jaringan.
                </p>
            </div>

        </div>

    </section>

    <!-- HOBI -->
    <section id="hobi">

        <h2 class="judul">Hobi & Galeri Skill</h2>

        <div class="gallery">

            <div class="gallery-box">
                <h3>🏃 Jogging</h3>
                <p>
                    Menjaga kebugaran tubuh dan
                    menikmati aktivitas di luar ruangan.
                </p>
            </div>

            <div class="gallery-box">
                <h3>🏸 Badminton</h3>
                <p>
                    Melatih fokus, ketangkasan,
                    dan menjaga kesehatan tubuh.
                </p>
            </div>

        </div>

    </section>

    <!-- KONTAK -->
    <section id="kontak">

        <h2 class="judul">Kontak Saya</h2>

        <div class="contact">

            <p><strong>Nama:</strong> Satria Arifin</p>

            <p>
                <strong>Email:</strong>
                <a href="mailto:satriyaarifin88@gmail.com">
                    satriyaarifin88@gmail.com
                </a>
            </p>

            <p>
                <strong>No. HP:</strong>
                <a href="tel:082233144219">
                    082233144219
                </a>
            </p>

            <p>
                <strong>Alamat:</strong>
                Kabupaten Blitar, Kecamatan Nglegok,
                Dusun Sumberasri, Jalan Kelud.
            </p>

        </div>

    </section>

</div>

<footer>
    <p>© 2026 Satria Arifin | Personal Website</p>
    <p>Designed with Passion ❤️</p>
</footer>

</body>
</html>
