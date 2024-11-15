#!/bin/bash

# Function to display colorful messages
print_message() {
    echo -e "\e[1;35m$1\e[0m"
}

# Create index.html
print_message "Creating index.html with advanced features and modern design..."
cat << EOF > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RedQuests Advanced Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">RedQuests Store</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#products">Products</a></li>
                    <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" id="admin-link">Admin</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" id="cart-icon"><i class="fas fa-shopping-cart"></i> <span id="cart-count" class="badge bg-danger">0</span></a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main>
        <section id="home" class="hero">
            <div class="container text-center">
                <h1 class="display-4" data-aos="fade-up">Welcome to RedQuests Store</h1>
                <p class="lead" data-aos="fade-up" data-aos-delay="200">Discover amazing products for your epic quests!</p>
            </div>
        </section>

        <section id="products" class="py-5">
            <div class="container">
                <h2 class="text-center mb-4" data-aos="fade-up">Featured Products</h2>
                <div id="product-list" class="row"></div>
            </div>
        </section>

        <section id="about" class="py-5 bg-light">
            <div class="container">
                <h2 class="text-center mb-4" data-aos="fade-up">About Us</h2>
                <p class="text-center" data-aos="fade-up" data-aos-delay="200">RedQuests Store is your ultimate destination for all your adventuring needs. We offer a wide range of high-quality products to help you on your quests.</p>
            </div>
        </section>

        <section id="contact" class="py-5">
            <div class="container">
                <h2 class="text-center mb-4" data-aos="fade-up">Contact Us</h2>
                <form id="contact-form" data-aos="fade-up" data-aos-delay="200">
                    <div class="mb-3">
                        <input type="text" class="form-control" name="name" placeholder="Your Name" required>
                    </div>
                    <div class="mb-3">
                        <input type="email" class="form-control" name="email" placeholder="Your Email" required>
                    </div>
                    <div class="mb-3">
                        <textarea class="form-control" name="message" rows="4" placeholder="Your Message" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>
        </section>

        <section id="admin-panel" class="py-5" style="display: none;">
            <div class="container">
                <h2 class="text-center mb-4">Admin Panel</h2>
                <div class="row">
                    <div class="col-md-6">
                        <h3>Add New Product</h3>
                        <form id="product-form">
                            <div class="mb-3">
                                <input type="text" class="form-control" id="product-name" placeholder="Product Name" required>
                            </div>
                            <div class="mb-3">
                                <input type="number" class="form-control" id="product-price" placeholder="Price" step="0.01" required>
                            </div>
                            <div class="mb-3">
                                <textarea class="form-control" id="product-description" placeholder="Description" required></textarea>
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" id="product-image" placeholder="Image URL" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Add Product</button>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <h3>Edit Store</h3>
                        <button id="edit-hero" class="btn btn-secondary mb-2">Edit Hero Section</button>
                        <button id="edit-about" class="btn btn-secondary mb-2">Edit About Section</button>
                        <button id="edit-footer" class="btn btn-secondary">Edit Footer</button>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <div class="modal fade" id="cart-modal" tabindex="-1" aria-labelledby="cartModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cartModalLabel">Your Cart</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="cart-items"></div>
                    <p class="text-end">Total: $<span id="cart-total">0.00</span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="checkout-btn">Checkout</button>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white py-4">
        <div class="container text-center">
            <p>&copy; 2024 RedQuests Store. All rights reserved.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script src="script.js"></script>
</body>
</html>
EOF

# Create styles.css
print_message "Creating styles.css with modern design..."
cat << EOF > styles.css
body {
    padding-top: 56px;
}

.hero {
    background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('https://source.unsplash.com/1600x900/?fantasy') no-repeat center center;
    background-size: cover;
    height: 100vh;
    display: flex;
    align-items: center;
    color: white;
}

.product-card {
    transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
}

.product-card img {
    height: 200px;
    object-fit: cover;
}
EOF

# Create script.js
print_message "Creating script.js with advanced e-commerce functionality..."
cat << EOF > script.js
// Initialize AOS
AOS.init();

// Sample product data
let products = [
    { id: 1, name: "Enchanted Sword", price: 199.99, description: "A powerful sword imbued with magical properties", image: "https://via.placeholder.com/300x200.png?text=Enchanted+Sword" },
    { id: 2, name: "Healing Potion", price: 29.99, description: "Restores health and cures ailments", image: "https://via.placeholder.com/300x200.png?text=Healing+Potion" },
    { id: 3, name: "Dragon Scale Armor", price: 499.99, description: "Lightweight and durable armor made from dragon scales", image: "https://via.placeholder.com/300x200.png?text=Dragon+Scale+Armor" },
];

// Cart functionality
let cart = [];
const cartIcon = document.getElementById('cart-icon');
const cartModal = new bootstrap.Modal(document.getElementById('cart-modal'));
const cartItems = document.getElementById('cart-items');
const cartTotal = document.getElementById('cart-total');
const cartCount = document.getElementById('cart-count');
const checkoutBtn = document.getElementById('checkout-btn');

function updateCart() {
    cartItems.innerHTML = '';
    let total = 0;
    cart.forEach(item => {
        const cartItem = document.createElement('div');
        cartItem.classList.add('d-flex', 'justify-content-between', 'align-items-center', 'mb-2');
        cartItem.innerHTML = \`
            <span>\${item.name} - $\${item.price.toFixed(2)}</span>
            <button class="btn btn-sm btn-danger" onclick="removeFromCart(\${item.id})">Remove</button>
        \`;
        cartItems.appendChild(cartItem);
        total += item.price;
    });
    cartTotal.textContent = total.toFixed(2);
    cartCount.textContent = cart.length;
}

function addToCart(productId) {
    const product = products.find(p => p.id === productId);
    if (product) {
        cart.push(product);
        updateCart();
    }
}

function removeFromCart(productId) {
    const index = cart.findIndex(item => item.id === productId);
    if (index !== -1) {
        cart.splice(index, 1);
        updateCart();
    }
}

cartIcon.addEventListener('click', () => {
    cartModal.show();
});

checkoutBtn.addEventListener('click', () => {
    alert('Thank you for your purchase!');
    cart = [];
    updateCart();
    cartModal.hide();
});

// Product listing
const productList = document.getElementById('product-list');

function renderProducts() {
    productList.innerHTML = '';
    products.forEach(product => {
        const productCard = document.createElement('div');
        productCard.classList.add('col-md-4', 'mb-4');
        productCard.setAttribute('data-aos', 'fade-up');
        productCard.innerHTML = \`
            <div class="card product-card">
                <img src="\${product.image}" class="card-img-top" alt="\${product.name}">
                <div class="card-body">
                    <h5 class="card-title">\${product.name}</h5>
                    <p class="card-text">\${product.description}</p>
                    <p class="card-text"><strong>$\${product.price.toFixed(2)}</strong></p>
                    <button class="btn btn-primary" onclick="addToCart(\${product.id})">Add to Cart</button>
                </div>
            </div>
        \`;
        productList.appendChild(productCard);
    });
}

renderProducts();

// Admin functionality
const adminLink = document.getElementById('admin-link');
const adminPanel = document.getElementById('admin-panel');
const productForm = document.getElementById('product-form');
const editHeroBtn = document.getElementById('edit-hero');
const editAboutBtn = document.getElementById('edit-about');
const editFooterBtn = document.getElementById('edit-footer');

adminLink.addEventListener('click', (e) => {
    e.preventDefault();
    const password = prompt('Enter admin password:');
    if (password === 'admin') {
        adminPanel.style.display = 'block';
    } else {
        alert('Invalid password');
    }
});

productForm.addEventListener('submit', (e) => {
    e.preventDefault();
    const newProduct = {
        id: products.length + 1,
        name: document.getElementById('product-name').value,
        price: parseFloat(document.getElementById('product-price').value),
        description: document.getElementById('product-description').value,
        image: document.getElementById('product-image').value
    };
    products.push(newProduct);
    renderProducts();
    productForm.reset();
});

editHeroBtn.addEventListener('click', () => {
    const newHeroContent = prompt('Enter new hero content:');
    if (newHeroContent) {
        document.querySelector('.hero .container').innerHTML = newHeroContent;
    }
});

editAboutBtn.addEventListener('click', () => {
    const newAboutContent = prompt('Enter new about content:');
    if (newAboutContent) {
        document.querySelector('#about p').textContent = newAboutContent;
    }
});

editFooterBtn.addEventListener('click', () => {
    const newFooterContent = prompt('Enter new footer content:');
    if (newFooterContent) {
        document.querySelector('footer p').innerHTML = newFooterContent;
    }
});

// Contact form
const contactForm = document.getElementById('contact-form');

contactForm.addEventListener('submit', (e) => {
    e.preventDefault();
    alert('Thank you for your message. We will get back to you soon!');
    contactForm.reset();
});

// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});
EOF

# Create .gitignore
print_message "Creating .gitignore..."
echo "node_modules/" > .gitignore

# Initialize git repository
print_message "Initializing git repository..."
git init
git add .
git commit -m "Initial commit for RedQuests Store"

print_message "RedQuests Store setup complete!"
print_message "To view the website, open index.html in your web browser."
print_message "To deploy to GitHub Pages:"
print_message "1. Create a new repository on GitHub"
print_message "2. Push this repository to GitHub"
print_message "3. Go to repository settings and enable GitHub Pages"
print_message "Admin login: password 'admin'"
print_message "WARNING: Remember to change the default admin password for security reasons in a production environment."

