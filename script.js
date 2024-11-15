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
        cartItem.innerHTML = `
            <span>${item.name} - $${item.price.toFixed(2)}</span>
            <button class="btn btn-sm btn-danger" onclick="removeFromCart(${item.id})">Remove</button>
        `;
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
        productCard.innerHTML = `
            <div class="card product-card">
                <img src="${product.image}" class="card-img-top" alt="${product.name}">
                <div class="card-body">
                    <h5 class="card-title">${product.name}</h5>
                    <p class="card-text">${product.description}</p>
                    <p class="card-text"><strong>$${product.price.toFixed(2)}</strong></p>
                    <button class="btn btn-primary" onclick="addToCart(${product.id})">Add to Cart</button>
                </div>
            </div>
        `;
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
