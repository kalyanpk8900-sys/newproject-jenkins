<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>NebulaStore — Next-Gen E‑Commerce</title>
  <!-- Google Fonts + Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg-dark: #070b17;
      --bg-card: #0f1622;
      --surface: #111927;
      --primary-glow: #4f9eff;
      --accent: #00e0ff;
      --accent-glow: #2b6eff;
      --text-white: #f0f3fa;
      --text-muted: #8a99b4;
      --border-dim: rgba(79, 158, 255, 0.12);
      --success: #10b981;
      --radius-card: 28px;
      --radius-element: 16px;
      --transition: all 0.25s ease;
    }

    body {
      background: var(--bg-dark);
      font-family: 'Inter', 'Space Grotesk', system-ui, sans-serif;
      color: var(--text-white);
      line-height: 1.5;
      scroll-behavior: smooth;
    }

    .container {
      max-width: 1300px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* GLASS HEADER */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(7, 11, 23, 0.82);
      backdrop-filter: blur(16px);
      border-bottom: 1px solid var(--border-dim);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      padding: 16px 0;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Space Grotesk', monospace;
      font-weight: 700;
      font-size: 1.9rem;
      letter-spacing: -0.02em;
      background: linear-gradient(135deg, #ffffff, var(--accent));
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }

    .brand span {
      background: linear-gradient(135deg, var(--accent), #7b61ff);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }

    .main-nav ul {
      display: flex;
      gap: 8px;
      list-style: none;
    }

    .main-nav li a {
      padding: 10px 20px;
      border-radius: 60px;
      font-weight: 500;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 8px;
      color: var(--text-muted);
    }

    .main-nav li a:hover,
    .main-nav li.active a {
      background: rgba(79, 158, 255, 0.12);
      color: var(--accent);
      backdrop-filter: blur(4px);
    }

    .search {
      background: var(--surface);
      border-radius: 60px;
      padding: 8px 18px;
      display: flex;
      align-items: center;
      gap: 12px;
      border: 1px solid var(--border-dim);
      transition: var(--transition);
      min-width: 260px;
    }

    .search:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 3px rgba(0, 224, 255, 0.2);
    }

    .search input {
      background: transparent;
      border: none;
      outline: none;
      width: 100%;
      color: white;
      font-size: 0.9rem;
    }

    .header-actions {
      display: flex;
      gap: 12px;
    }

    .icon-btn {
      background: var(--surface);
      border: none;
      font-size: 1.2rem;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      color: var(--text-white);
      cursor: pointer;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }

    .icon-btn:hover {
      background: var(--accent);
      color: #070b17;
      transform: translateY(-2px);
    }

    .cart {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -5px;
      right: -5px;
      background: var(--accent);
      color: #070b17;
      font-weight: 800;
      font-size: 11px;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .mobile-toggle {
      display: none;
      background: var(--surface);
      border: none;
      font-size: 1.6rem;
      color: white;
      border-radius: 30px;
      padding: 8px 12px;
      cursor: pointer;
    }

    /* HERO SECTION with NEON */
    .hero {
      background: radial-gradient(ellipse at 70% 30%, rgba(0, 224, 255, 0.08), transparent 70%);
      padding: 80px 0 70px;
      text-align: center;
      border-bottom: 1px solid var(--border-dim);
    }

    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 3.8rem;
      font-weight: 700;
      background: linear-gradient(145deg, #fff, var(--accent));
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      letter-spacing: -0.02em;
    }

    .hero p {
      color: var(--text-muted);
      max-width: 680px;
      margin: 18px auto 28px;
      font-size: 1.1rem;
    }

    .btn-group {
      display: flex;
      gap: 16px;
      justify-content: center;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      border: none;
      font-size: 0.95rem;
    }

    .btn-primary {
      background: linear-gradient(105deg, var(--accent), var(--accent-glow));
      color: #070b17;
      box-shadow: 0 8px 18px rgba(0, 224, 255, 0.2);
    }

    .btn-primary:hover {
      transform: scale(1.02);
      box-shadow: 0 12px 24px rgba(0, 224, 255, 0.3);
    }

    .btn-outline {
      background: transparent;
      border: 1.5px solid rgba(79, 158, 255, 0.5);
      color: white;
      backdrop-filter: blur(4px);
    }

    .btn-outline:hover {
      border-color: var(--accent);
      background: rgba(0, 224, 255, 0.08);
    }

    /* Section headers */
    .section {
      padding: 60px 0;
    }

    .section-header {
      text-align: center;
      margin-bottom: 40px;
    }

    .section-header h2 {
      font-size: 2.2rem;
      font-weight: 600;
      background: linear-gradient(135deg, #fff, #b0c4ff);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }

    .section-header p {
      color: var(--text-muted);
      margin-top: 8px;
    }

    /* Categories - glassmorphic */
    .grid-cats {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 24px;
    }

    .cat-card {
      background: var(--bg-card);
      border: 1px solid var(--border-dim);
      border-radius: var(--radius-element);
      padding: 24px 12px;
      text-align: center;
      backdrop-filter: blur(4px);
      transition: var(--transition);
      cursor: pointer;
    }

    .cat-card:hover {
      border-color: var(--accent);
      transform: translateY(-6px);
      background: rgba(15, 22, 39, 0.9);
      box-shadow: 0 20px 30px -12px rgba(0, 224, 255, 0.1);
    }

    .cat-card .icon {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 12px;
    }

    /* Products Grid */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 26px;
    }

    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius-card);
      border: 1px solid var(--border-dim);
      transition: var(--transition);
      overflow: hidden;
      display: flex;
      flex-direction: column;
    }

    .product-card:hover {
      transform: translateY(-5px);
      border-color: var(--accent);
      box-shadow: 0 20px 32px -15px rgba(0, 224, 255, 0.2);
    }

    .product-img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      transition: 0.3s;
    }

    .product-info {
      padding: 18px 16px;
      flex: 1;
    }

    .product-title {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 8px;
    }

    .price-wrap {
      display: flex;
      align-items: baseline;
      gap: 10px;
      margin: 12px 0;
    }

    .current-price {
      font-size: 1.4rem;
      font-weight: 700;
      color: var(--accent);
    }

    .old-price {
      text-decoration: line-through;
      color: var(--text-muted);
      font-size: 0.85rem;
    }

    .rating {
      color: #ffcd4a;
      font-size: 0.8rem;
      margin-bottom: 12px;
    }

    .add-to-cart {
      background: linear-gradient(95deg, #1a2a44, #0f1622);
      border: 1px solid var(--border-dim);
      color: white;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .add-to-cart:hover {
      background: var(--accent);
      color: #070b17;
      border-color: var(--accent);
    }

    /* Deal Section (flash) */
    .deal-card {
      display: flex;
      background: linear-gradient(125deg, #0c1322, #070b17);
      border-radius: 42px;
      border: 1px solid rgba(0, 224, 255, 0.3);
      overflow: hidden;
      align-items: center;
      flex-wrap: wrap;
    }

    .deal-img {
      flex: 1.2;
      min-width: 280px;
      height: 320px;
      object-fit: cover;
    }

    .deal-content {
      flex: 1;
      padding: 36px;
    }

    .timer {
      display: flex;
      gap: 14px;
      margin: 24px 0;
    }

    .time-block {
      background: #03060e;
      border-radius: 20px;
      padding: 12px 0;
      text-align: center;
      min-width: 75px;
      border: 1px solid var(--border-dim);
    }

    .time-block div:first-child {
      font-size: 1.8rem;
      font-weight: 800;
      color: var(--accent);
    }

    /* Testimonials */
    .testimonials-slider {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px;
    }

    .testimonial-card {
      min-width: 320px;
      background: var(--bg-card);
      border-radius: 28px;
      padding: 24px;
      border: 1px solid var(--border-dim);
    }

    /* Newsletter */
    .newsletter-area {
      background: radial-gradient(circle at left, #0a1222, #03060c);
      border-radius: 48px;
      padding: 48px 32px;
      text-align: center;
      border: 1px solid var(--border-dim);
    }

    .newsletter-area input {
      background: var(--surface);
      border: 1px solid var(--border-dim);
      padding: 14px 24px;
      border-radius: 60px;
      width: 320px;
      max-width: 70%;
      color: white;
      margin-right: 12px;
    }

    footer {
      border-top: 1px solid var(--border-dim);
      padding: 48px 0 32px;
      margin-top: 20px;
      color: var(--text-muted);
    }

    @media (max-width: 1100px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
    }
    @media (max-width: 880px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .products-grid { grid-template-columns: repeat(2,1fr); }
      .grid-cats { grid-template-columns: repeat(3,1fr); }
      .hero h1 { font-size: 2.4rem; }
    }
    @media (max-width: 580px) {
      .products-grid { grid-template-columns: 1fr; }
      .grid-cats { grid-template-columns: 1fr; }
      .deal-img { height: 220px; }
      .deal-content { padding: 24px; }
    }
    .wish-btn-mini {
      background: transparent;
      border: none;
      color: var(--text-muted);
      font-size: 1.2rem;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display: flex; align-items: center; gap: 18px;">
        <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bolt"></i></button>
        <a class="brand" href="#">NEBULA<span>STORE</span></a>
      </div>
      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
          <li><a href="#" id="catMenuBtn"><i class="fas fa-cube"></i> Collections</a></li>
          <li><a href="#deals"><i class="fas fa-bolt"></i> Flash</a></li>
          <li><a href="#"><i class="fas fa-rocket"></i> Drops</a></li>
        </ul>
      </nav>
      <div style="display: flex; align-items: center; gap: 14px;">
        <div class="search">
          <i class="fas fa-search" style="color: var(--text-muted);"></i>
          <input type="text" id="searchInput" placeholder="Search products...">
        </div>
        <div class="header-actions">
          <button class="icon-btn" id="wishlistIcon"><i class="far fa-heart"></i></button>
          <div class="cart">
            <button class="icon-btn" id="cartBtn"><i class="fas fa-bag-shopping"></i></button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>
    <div id="mobileMenu" style="display: none; background: #0a1020; border-top:1px solid var(--border-dim); padding: 16px 24px;">
      <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
        <li><a href="#">Home</a></li><li><a href="#">Shop</a></li><li><a href="#deals">Deals</a></li><li><a href="#">Contact</a></li>
      </ul>
    </div>
  </header>

  <main>
    <section class="hero">
      <div class="container">
        <h1>Beyond the ordinary.<br><span style="color:var(--accent);">Future ready gear</span></h1>
        <p>Exclusive tech, streetwear, and accessories — crafted for the new age. Free shipping + 30-day returns.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-outline" id="exploreDeals">Flash sale <i class="fas fa-fire"></i></button>
        </div>
      </div>
    </section>

    <!-- Categories section -->
    <section class="section container">
      <div class="section-header">
        <h2>Discover realms</h2>
        <p>curated categories for digital explorers</p>
      </div>
      <div class="grid-cats" id="categoriesGrid"></div>
    </section>

    <!-- Products -->
    <section class="section container">
      <div class="section-header">
        <h2>✦ Trending drops ✦</h2>
        <p>most wanted this season</p>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </section>

    <!-- Flash sale deal -->
    <section id="deals" class="section container">
      <div class="section-header">
        <h2>⚡ Hyperflash deal ⚡</h2>
        <p>ends in</p>
      </div>
      <div class="deal-card">
        <img class="deal-img" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
        <div class="deal-content">
          <h3 style="font-size: 1.9rem;">MacBook Air M2</h3>
          <p style="color:var(--text-muted); margin: 6px 0 12px;">Next‑gen performance, stellar design.</p>
          <div class="timer">
            <div class="time-block"><div id="dealDays">0</div><span>Days</span></div>
            <div class="time-block"><div id="dealHours">00</div><span>Hours</span></div>
            <div class="time-block"><div id="dealMinutes">00</div><span>Mins</span></div>
            <div class="time-block"><div id="dealSeconds">00</div><span>Secs</span></div>
          </div>
          <div style="display: flex; align-items: baseline; gap: 16px; flex-wrap: wrap;">
            <div><span class="current-price" style="font-size: 2rem;">$999</span> <span class="old-price">$1,199</span></div>
            <span style="background: #ff4d6d; padding: 5px 12px; border-radius: 30px; font-weight: 700;">-17%</span>
          </div>
          <button class="btn btn-primary" id="buyDeal" style="margin-top: 22px;">Add to cart <i class="fas fa-bolt"></i></button>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="section container">
      <div class="section-header">
        <h2>VOICES OF THE FUTURE</h2>
        <p>trusted by early adopters</p>
      </div>
      <div class="testimonials-slider">
        <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Mind-blowing design and seamless experience. Absolutely next level."</p><div><strong>— Rhea S.</strong></div></div>
        <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Shipping was faster than light. Premium quality, will order again."</p><div><strong>— Liam C.</strong></div></div>
        <div class="testimonial-card"><div class="rating">★★★★☆</div><p>"Great catalog and the customer support is 10/10."</p><div><strong>— Zara M.</strong></div></div>
      </div>
    </section>

    <!-- Newsletter -->
    <section class="section container">
      <div class="newsletter-area">
        <h3 style="font-size: 1.8rem;">Gravity drop alert 📡</h3>
        <p style="margin-bottom: 20px;">Subscribe for early access & exclusive codes</p>
        <form id="newsletterForm" style="display: flex; justify-content: center; flex-wrap: wrap; gap: 12px;">
          <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
          <button class="btn btn-primary" type="submit">Subscribe <i class="fas fa-paper-plane"></i></button>
        </form>
        <div id="newsletterMsg" style="margin-top: 14px; display: none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 32px;">
      <div><div class="brand" style="font-size:1.6rem;">NEBULA<span>STORE</span></div><p class="muted" style="margin-top: 12px;">© <span id="year"></span> — futuristic commerce demo</p></div>
      <div style="display: flex; gap: 48px;"><div><strong>Navigate</strong><div style="margin-top: 8px;">Shop<br>Drops<br>About</div></div><div><strong>Support</strong><div style="margin-top: 8px;">FAQs<br>Warranty<br>Contact</div></div></div>
    </div>
  </footer>

  <script>
    // ---------- PRODUCT & CATALOG ----------
    const CATEGORIES = [
      { id: 'phones', name: 'Phantom Devices', icon: 'fa-microchip' },
      { id: 'wearables', name: 'Wearable Tech', icon: 'fa-clock' },
      { id: 'audio', name: 'Audio Gear', icon: 'fa-headphones' },
      { id: 'streetwear', name: 'Neo-Streetwear', icon: 'fa-tshirt' },
      { id: 'gaming', name: 'Hyper Gaming', icon: 'fa-gamepad' },
      { id: 'accessories', name: 'Cyber Accs', icon: 'fa-crown' }
    ];
    const PRODUCTS = [
      { id: 1, title: 'Nebula Phone Ultra', price: 1299, oldPrice: 1499, rating: 5, reviews: 204, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones', badge: '🔥' },
      { id: 2, title: 'SpectreBook Pro', price: 2199, rating: 5, reviews: 98, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'wearables', badge: '' },
      { id: 3, title: 'Orion Watch X', price: 389, oldPrice: 499, rating: 4, reviews: 312, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'wearables', badge: '-22%' },
      { id: 4, title: 'Aether Sneakers', price: 179, rating: 5, reviews: 87, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'streetwear', badge: '' },
      { id: 5, title: 'Sony A7 V', price: 2799, rating: 5, reviews: 63, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gaming', badge: 'Limited' },
      { id: 6, title: 'Void Headphones', price: 449, oldPrice: 599, rating: 5, reviews: 178, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'audio', badge: '-25%' }
    ];

    let cartCount = 0;
    const cartCountSpan = document.getElementById('cartCount');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const searchInput = document.getElementById('searchInput');

    function renderCategories() {
      categoriesGrid.innerHTML = CATEGORIES.map(cat => `
        <div class="cat-card" data-cat="${cat.name}">
          <div class="icon"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="muted" style="font-size:12px">explore</div>
        </div>
      `).join('');
      document.querySelectorAll('.cat-card').forEach(card => {
        card.addEventListener('click', () => {
          const catName = card.getAttribute('data-cat');
          searchInput.value = catName;
          filterProducts(catName);
          document.getElementById('prod-title')?.scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = list.map(p => `
        <div class="product-card">
          <img class="product-img" src="${p.img}" alt="${p.title}">
          <div class="product-info">
            <div class="product-title">${p.title}</div>
            <div class="price-wrap"><span class="current-price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
            <div class="rating">${'★'.repeat(Math.round(p.rating))} (${p.reviews})</div>
            <button class="add-to-cart" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to bag</button>
          </div>
        </div>
      `).join('');
      document.querySelectorAll('.add-to-cart').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = parseInt(btn.dataset.id);
          addToCartById(id);
        });
      });
    }

    function addToCartById(productId) {
      const product = PRODUCTS.find(p => p.id === productId);
      if (!product) return;
      cartCount++;
      cartCountSpan.textContent = cartCount;
      const btn = document.querySelector(`.add-to-cart[data-id="${productId}"]`);
      if(btn) {
        const original = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added!';
        setTimeout(() => { btn.innerHTML = original; }, 1000);
      }
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) return renderProducts(PRODUCTS);
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // search handlers
    document.getElementById('searchBtn')?.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });

    // DEAL COUNTDOWN (25h)
    (function startTimer() {
      const target = new Date().getTime() + (25 * 3600 * 1000);
      const interval = setInterval(() => {
        const now = new Date().getTime();
        const diff = target - now;
        if(diff <= 0) { clearInterval(interval); return; }
        document.getElementById('dealDays').innerText = Math.floor(diff / (24*3600*1000));
        document.getElementById('dealHours').innerText = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
        document.getElementById('dealMinutes').innerText = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
        document.getElementById('dealSeconds').innerText = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
      }, 1000);
    })();

    // UI interactions
    document.getElementById('shopNow').addEventListener('click', () => document.querySelector('.products-grid')?.scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals')?.scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDeal').addEventListener('click', () => { cartCount++; cartCountSpan.textContent = cartCount; alert('🔥 Flash deal added to cart'); });
    document.getElementById('mobileToggle').addEventListener('click', () => { const mm = document.getElementById('mobileMenu'); mm.style.display = mm.style.display === 'none' ? 'block' : 'none'; });
    document.getElementById('catMenuBtn').addEventListener('click', (e) => { e.preventDefault(); alert('✨ Click category cards below to explore'); });

    // Newsletter
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterMsg = document.getElementById('newsletterMsg');
    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      if(!email || !email.includes('@')) {
        newsletterMsg.style.display = 'block'; newsletterMsg.innerHTML = '⚠️ valid email required'; newsletterMsg.style.color = '#ff9f9f';
        return;
      }
      newsletterMsg.style.display = 'block'; newsletterMsg.innerHTML = '✓ You’re in — early access incoming!'; newsletterMsg.style.color = '#a5f0c0';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => newsletterMsg.style.display = 'none', 3000);
    });

    function init() {
      renderCategories();
      renderProducts(PRODUCTS);
      document.getElementById('year').innerText = new Date().getFullYear();
      cartCountSpan.textContent = 0;
    }
    init();
  </script>
</body>
</html>
