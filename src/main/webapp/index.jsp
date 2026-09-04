<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>K.V.Reddy Shop</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #fafcff;
            --primary: #0b2a4a;
            --accent: #00b4d8;
            --accent-light: #e3f7ff;
            --muted: #5e6f8d;
            --card: #ffffff;
            --surface: #f2f6fe;
            --success: #2ecc71;
            --radius: 16px;
            --container: 1240px;
            --shadow: 0 12px 30px rgba(0, 20, 40, 0.06);
        }

        * { box-sizing: border-box; margin: 0; }
        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        a { color: inherit; text-decoration: none; }
        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ----- header (sticky, clean) ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255,255,255,0.92);
            backdrop-filter: blur(8px);
            border-bottom: 1px solid rgba(11, 42, 74, 0.05);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
            flex-wrap: wrap;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 6px;
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
            font-size: 22px;
            letter-spacing: -0.3px;
        }
        .brand .accent { color: var(--accent); }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            padding: 0;
            margin: 0;
            align-items: center;
        }
        nav.main-nav li a {
            padding: 8px 14px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.95rem;
            transition: 0.15s;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        nav.main-nav li a:hover {
            background: var(--accent-light);
            color: var(--accent);
        }

        .search {
            display: flex;
            align-items: center;
            background: white;
            border: 1px solid #e9edf4;
            border-radius: 60px;
            padding: 4px 8px 4px 18px;
            min-width: 220px;
            transition: 0.2s;
            box-shadow: 0 2px 8px rgba(0,0,0,0.02);
        }
        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 4px rgba(0,180,216,0.1);
        }
        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
        }
        .search button {
            background: var(--accent);
            border: 0;
            color: white;
            border-radius: 40px;
            padding: 8px 14px;
            cursor: pointer;
            font-size: 14px;
            transition: 0.15s;
        }
        .search button:hover { background: #0095b8; }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .icon-btn {
            background: transparent;
            border: 0;
            font-size: 18px;
            color: var(--primary);
            cursor: pointer;
            width: 40px;
            height: 40px;
            border-radius: 40px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: 0.15s;
        }
        .icon-btn:hover { background: var(--accent-light); }
        .cart {
            position: relative;
            font-size: 20px;
            padding: 6px 10px;
        }
        .cart-count {
            position: absolute;
            top: -4px;
            right: -2px;
            background: #ff4d6d;
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 30px;
            display: grid;
            place-items: center;
            box-shadow: 0 4px 8px rgba(255,77,109,0.3);
        }
        .mobile-toggle {
            display: none;
            background: transparent;
            border: 0;
            font-size: 24px;
            cursor: pointer;
            padding: 6px;
        }

        /* ----- hero (soft & inviting) ----- */
        .hero {
            display: flex;
            align-items: center;
            text-align: center;
            background: linear-gradient(145deg, #0b2a4a 0%, #1a3f61 100%);
            color: white;
            padding: 60px 20px;
            border-radius: 24px;
            margin: 24px auto;
            max-width: var(--container);
            box-shadow: 0 20px 40px rgba(11,42,74,0.15);
        }
        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 2.8rem;
            letter-spacing: -0.02em;
            margin-bottom: 12px;
        }
        .hero p {
            font-size: 1.1rem;
            opacity: 0.85;
            max-width: 700px;
            margin: 0 auto 24px;
        }
        .btn-group { display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            border: 0;
            cursor: pointer;
            transition: 0.2s;
            font-size: 1rem;
        }
        .btn-primary {
            background: var(--accent);
            color: #042233;
        }
        .btn-primary:hover { background: #0095b8; transform: scale(1.02); }
        .btn-ghost {
            background: rgba(255,255,255,0.12);
            color: white;
            border: 1.5px solid rgba(255,255,255,0.25);
        }
        .btn-ghost:hover { background: rgba(255,255,255,0.22); }

        /* ----- sections ----- */
        .section { padding: 48px 0; }
        .section-header {
            display: flex;
            align-items: baseline;
            justify-content: space-between;
            margin-bottom: 28px;
            flex-wrap: wrap;
            gap: 8px;
        }
        .section-header h2 {
            font-family: 'Poppins', sans-serif;
            font-size: 1.8rem;
            letter-spacing: -0.3px;
        }
        .section-header .muted { color: var(--muted); }
        .see-all {
            color: var(--accent);
            font-weight: 600;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* categories */
        .categories-grid { grid-template-columns: repeat(7, 1fr); }
        .cat-card {
            background: white;
            border-radius: 20px;
            padding: 20px 12px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: 0.2s;
            cursor: default;
            border: 1px solid transparent;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            border-color: var(--accent);
            box-shadow: 0 20px 35px rgba(0,180,216,0.08);
        }
        .cat-card .icon {
            font-size: 32px;
            color: var(--accent);
            margin-bottom: 8px;
        }
        .cat-card h4 { font-size: 0.95rem; margin-top: 4px; }

        /* products */
        .products-grid { grid-template-columns: repeat(4, 1fr); }
        .product {
            background: white;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: 0.2s;
            display: flex;
            flex-direction: column;
        }
        .product:hover { transform: translateY(-6px); box-shadow: 0 20px 40px rgba(0,0,0,0.06); }
        .product img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            display: block;
            background: #f0f4fe;
        }
        .product-body {
            padding: 16px 16px 8px;
            flex: 1;
        }
        .product-body h5 { font-size: 1rem; font-weight: 600; margin-bottom: 4px; }
        .product-category {
            color: var(--muted);
            font-size: 0.8rem;
            text-transform: uppercase;
            letter-spacing: 0.3px;
        }
        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 8px;
        }
        .price { font-weight: 700; font-size: 1.2rem; }
        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 0.9rem;
            margin-left: 6px;
            font-weight: 400;
        }
        .rating {
            color: #f8b84a;
            font-size: 0.85rem;
        }
        .product-footer {
            padding: 12px 16px 16px;
            display: flex;
            gap: 10px;
        }
        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.15s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
        }
        .add-btn:hover { background: #1a3f61; }
        .wish-btn {
            background: transparent;
            border: 1px solid #e9edf4;
            border-radius: 40px;
            padding: 0 14px;
            cursor: pointer;
            transition: 0.15s;
        }
        .wish-btn:hover { background: var(--accent-light); }

        /* deal banner */
        .deal-banner {
            background: linear-gradient(135deg, #0b2a4a, #1e4b6e);
            border-radius: 24px;
            padding: 32px 36px;
            color: white;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
        }
        .deal-banner h3 { font-size: 2rem; font-family: 'Poppins', sans-serif; }
        .deal-banner .price {
            font-size: 2rem;
            color: #ffd966;
        }
        .timer {
            display: flex;
            gap: 12px;
        }
        .time-box {
            background: rgba(255,255,255,0.08);
            padding: 10px 14px;
            border-radius: 12px;
            min-width: 64px;
            text-align: center;
            backdrop-filter: blur(4px);
        }
        .time-box div:first-child { font-size: 1.6rem; font-weight: 700; }

        /* testimonials */
        .testimonials {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 0;
        }
        .testimonial {
            min-width: 300px;
            background: white;
            padding: 20px;
            border-radius: 20px;
            box-shadow: var(--shadow);
        }
        .testimonial .rating { color: #f8b84a; }

        /* newsletter */
        .newsletter {
            background: var(--primary);
            color: white;
            border-radius: 24px;
            padding: 40px 32px;
            text-align: center;
        }
        .newsletter input {
            padding: 14px 20px;
            border-radius: 60px;
            border: 0;
            width: 300px;
            max-width: 100%;
            margin-right: 8px;
            font-size: 1rem;
        }
        .newsletter .btn-primary { background: var(--accent); color: #042233; }

        /* footer */
        footer {
            margin-top: 24px;
            padding: 40px 0 24px;
            border-top: 1px solid rgba(11,42,74,0.06);
            color: var(--muted);
        }

        /* responsive */
        @media (max-width: 1100px) {
            .categories-grid { grid-template-columns: repeat(4, 1fr); }
            .products-grid { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 850px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products-grid { grid-template-columns: repeat(2, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .hero h1 { font-size: 2.2rem; }
        }
        @media (max-width: 600px) {
            .products-grid { grid-template-columns: 1fr; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); }
            .hero { padding: 40px 16px; }
            .deal-banner { flex-direction: column; text-align: center; }
            .timer { justify-content: center; }
            .search { min-width: unset; width: 100%; }
            .header-inner { flex-wrap: wrap; }
        }
        .muted { color: var(--muted); }
        .text-center { text-align: center; }
        .gap-8 { gap: 8px; }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
            </div>

            <nav class="main-nav" id="mainNav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:12px;flex:1;justify-content:flex-end;">
                <div class="search" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search">
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions">
                    <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                    <a class="cart" href="#" id="cartBtn" aria-label="Cart">
                        <i class="fas fa-shopping-bag"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- mobile menu -->
        <div id="mobileMenu" style="display:none; background:white; border-top:1px solid #eee; padding:12px 0;">
            <div class="container">
                <ul style="list-style:none;padding:0;display:flex;flex-direction:column;gap:6px;font-weight:500;">
                    <li><a href="#">Home</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#products">Trending</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero container">
            <div>
                <h1>Spring Collection &#127802; Premium Picks</h1>
                <p>Discover the latest in fashion, tech, and home — curated for you. Limited-time deals & free shipping.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section id="categories" class="section container">
            <div class="section-header">
                <h2>Shop by Category</h2>
                <span class="see-all">All categories <i class="fas fa-arrow-right"></i></span>
            </div>
            <div class="grid categories-grid" id="categoriesGrid"></div>
        </section>

        <!-- Products -->
        <section id="products" class="section container">
            <div class="section-header">
                <h2>Trending Products</h2>
                <span class="see-all">View all <i class="fas fa-arrow-right"></i></span>
            </div>
            <div class="grid products-grid" id="productsGrid"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container">
            <div class="deal-banner">
                <div>
                    <h3>Flash Sale</h3>
                    <p style="opacity:0.8;margin:4px 0 12px;">MacBook Air M2 · limited stock</p>
                    <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
                        <span class="price">$999</span>
                        <span style="text-decoration:line-through;opacity:0.6;">$1,199</span>
                        <span style="background:#ff4d6d;padding:4px 14px;border-radius:40px;font-weight:700;">-17%</span>
                    </div>
                </div>
                <div>
                    <div class="timer" id="dealTimer">
                        <div class="time-box"><div id="dealDays">0</div><span style="font-size:0.75rem;opacity:0.7;">Days</span></div>
                        <div class="time-box"><div id="dealHours">00</div><span style="font-size:0.75rem;opacity:0.7;">Hrs</span></div>
                        <div class="time-box"><div id="dealMinutes">00</div><span style="font-size:0.75rem;opacity:0.7;">Min</span></div>
                        <div class="time-box"><div id="dealSeconds">00</div><span style="font-size:0.75rem;opacity:0.7;">Sec</span></div>
                    </div>
                    <button class="btn btn-primary" id="buyDeal" style="margin-top:14px;background:#ffd966;color:#0b2a4a;">Grab deal</button>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container">
            <div class="section-header">
                <h2>Customer love</h2>
                <span class="see-all">See all <i class="fas fa-arrow-right"></i></span>
            </div>
            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p style="margin:8px 0;">"Fast shipping, great quality. Absolutely love the new laptop!"</p>
                    <div style="display:flex;align-items:center;gap:10px;">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:60px;object-fit:cover;">
                        <div><strong>Ava Martin</strong><div style="font-size:0.8rem;color:var(--muted);">Verified buyer</div></div>
                    </div>
                </div>
                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p style="margin:8px 0;">"Smooth checkout and the deals are unbeatable. Will shop again."</p>
                    <div style="display:flex;align-items:center;gap:10px;">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:60px;object-fit:cover;">
                        <div><strong>Michael Lee</strong><div style="font-size:0.8rem;color:var(--muted);">Frequent buyer</div></div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container">
            <div class="newsletter">
                <h3 style="font-family:'Poppins',sans-serif;">Stay in the loop</h3>
                <p style="opacity:0.8;margin-bottom:16px;">Get exclusive offers & new arrivals</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:10px;flex-wrap:wrap;">
                    <input type="email" id="newsletterEmail" placeholder="Your email" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;justify-content:space-between;gap:20px;">
            <div>
                <div style="font-weight:700;font-size:1.2rem;">NexusShop</div>
                <p class="muted" style="max-width:280px;margin:6px 0 12px;">Modern e‑commerce demo with a fresh, user‑first interface.</p>
                <div style="display:flex;gap:12px;">
                    <a href="#" class="icon-btn"><i class="fab fa-facebook"></i></a>
                    <a href="#" class="icon-btn"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="icon-btn"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div style="display:flex;gap:40px;flex-wrap:wrap;">
                <div><strong>Company</strong><div class="muted" style="line-height:1.8;">About<br>Careers<br>Press</div></div>
                <div><strong>Support</strong><div class="muted" style="line-height:1.8;">Help<br>Shipping<br>Contact</div></div>
            </div>
        </div>
        <div style="text-align:center;margin-top:28px;color:var(--muted);font-size:0.85rem;">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
        // ----- DATA (added "Home Appliances") -----
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'appliances', name: 'Home Appliances', icon: 'fa-blender-phone' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&h=300&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&h=300&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&h=300&q=80', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&h=300&q=80', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&h=300&q=80', category: 'gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&h=300&q=80', category: 'accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&h=300&q=80', category: 'accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&h=300&q=80', category: 'gadgets' },
            // home appliance example
            { id: 9, title: 'Dyson V15 Vacuum', price: 699, oldPrice: 799, rating: 5, reviews: 94, badge: 'Sale', img: 'https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=400&h=300&q=80', category: 'appliances' }
        ];

        // ----- render -----
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('div');
                el.className = 'product';
                const badgeHtml = p.badge ? `<span style="background:${p.badge.startsWith('-')?'#ff4d6d':'#2ecc71'};color:#fff;padding:4px 12px;border-radius:30px;font-size:0.7rem;font-weight:700;position:absolute;margin:12px;">${p.badge}</span>` : '';
                el.innerHTML = `
                    <div style="position:relative;">${badgeHtml}<img src="${p.img}" alt="${p.title}" loading="lazy"></div>
                    <div class="product-body">
                        <h5>${p.title}</h5>
                        <div class="product-category">${p.category}</div>
                        <div class="price-row">
                            <div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:var(--muted);font-size:0.75rem;">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
                        <button class="wish-btn"><i class="far fa-heart"></i></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', () => addToCart(Number(btn.dataset.id)));
            });
        }

        function addToCart(id) {
            const p = PRODUCTS.find(x => x.id === id);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
            if (btn) {
                const orig = btn.innerHTML;
                btn.innerHTML = '✓ Added';
                btn.disabled = true;
                setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
            }
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        // search
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

        // mobile toggle
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' ? 'block' : 'none';
        });

        // newsletter
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email.';
                msg.style.color = '#ffb3b3';
                return;
            }
            msg.style.display = 'block';
            msg.textContent = '✅ You\'re subscribed!';
            msg.style.color = '#b8e0b8';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // deal timer
        (function() {
            const target = new Date(Date.now() + (24 * 3600 + 36 * 60) * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) return;
                document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
                document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // buy deal
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            cartCountEl.textContent = cartCount;
            alert('Deal added to cart (demo).');
        });

        // hero buttons
        document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));

        // init
        renderCategories();
        renderProducts(PRODUCTS);
        document.getElementById('year').textContent = new Date().getFullYear();
    </script>
</body>
</html>
