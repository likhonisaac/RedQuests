#!/bin/bash

# RedQuests Store Platform
# A lightweight, GitHub Pages-powered e-commerce platform built with vanilla HTML, CSS, and JavaScript.

# Function to display colorful messages
print_message() {
    echo -e "\e[1;36m$1\e[0m"
}

# Function to check for required commands
check_command() {
    if ! command -v $1 &> /dev/null; then
        echo "Error: $1 is required but not installed. Please install it and try again."
        exit 1
    fi
}

# Check for required commands
check_command git
check_command node
check_command npm

# Create project structure
print_message "Creating RedQuests Store Platform project structure..."
mkdir -p RedQuests-Store/{css,js,images,admin,data}

# Navigate to the project directory
cd RedQuests-Store

# Initialize git repository
git init

# Create index.html
print_message "Creating index.html..."
cat << EOF > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RedQuests Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav>
            <div class="logo">RedQuests Store</div>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#products">Products</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="admin/login.html" class="admin-link"><i class="fas fa-user-shield"></i> Admin</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id="home" class="hero">
            <h1>Welcome to RedQuests Store</h1>
            <p>Discover amazing products for your quests!</p>
        </section>
        <section id="products" class="products">
            <h2>Featured Products</h2>
            <div id="product-list" class="product-grid"></div>
        </section>
        <section id="about" class="about">
            <h2>About Us</h2>
            <p>RedQuests Store is your one-stop shop for all your adventuring needs.</p>
        </section>
        <section id="contact" class="contact">
            <h2>Contact Us</h2>
            <form id="contact-form">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 RedQuests Store. All rights reserved.</p>
    </footer>
    <script src="js/main.js"></script>
</body>
</html>
EOF

# Create style.css
print_message "Creating style.css..."
cat << EOF > css/style.css
@import 

Here's the advanced, fully-featured bash script for the RedQuests Store Platform:

```bash
#!/bin/bash

# RedQuests Store Platform
# A lightweight, GitHub Pages-powered e-commerce platform built with vanilla HTML, CSS, and JavaScript.

# Function to display colorful messages
print_message() {
    echo -e "\e[1;36m$1\e[0m"
}

# Function to check for required commands
check_command() {
    if ! command -v $1 &> /dev/null; then
        echo "Error: $1 is required but not installed. Please install it and try again."
        exit 1
    fi
}

# Check for required commands
check_command git
check_command node
check_command npm

# Create project structure
print_message "Creating RedQuests Store Platform project structure..."
mkdir -p RedQuests-Store/{css,js,images,admin,data}

# Navigate to the project directory
cd RedQuests-Store

# Initialize git repository
git init

# Create index.html
print_message "Creating index.html..."
cat << EOF > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RedQuests Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav>
            <div class="logo">RedQuests Store</div>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#products">Products</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="admin/login.html" class="admin-link"><i class="fas fa-user-shield"></i> Admin</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id="home" class="hero">
            <h1>Welcome to RedQuests Store</h1>
            <p>Discover amazing products for your quests!</p>
        </section>
        <section id="products" class="products">
            <h2>Featured Products</h2>
            <div id="product-list" class="product-grid"></div>
        </section>
        <section id="about" class="about">
            <h2>About Us</h2>
            <p>RedQuests Store is your one-stop shop for all your adventuring needs.</p>
        </section>
        <section id="contact" class="contact">
            <h2>Contact Us</h2>
            <form id="contact-form">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 RedQuests Store. All rights reserved.</p>
    </footer>
    <script src="js/main.js"></script>
</body>
</html>
EOF

# Create style.css
print_message "Creating style.css..."
cat << EOF > css/style.css
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

:root {
    --primary-color: #ff4136;
    --secondary-color: #0074d9;
    --background-color: #f4f4f4;
    --text-color: #333;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    line-height: 1.6;
    color: var(--text-color);
    background-color: var(--background-color);
}

header {
    background-color: var(--primary-color);
    color: white;
    padding: 1rem 0;
    position: sticky;
    top: 0;
    z-index: 1000;
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 2rem;
}

.logo {
    font-size: 1.5rem;
    font-weight: bold;
}

nav ul {
    display: flex;
    list-style: none;
}

nav ul li {
    margin-left: 1rem;
}

nav ul li a {
    color: white;
    text-decoration: none;
    transition: color 0.3s ease;
}

nav ul li a:hover {
    color: var(--secondary-color);
}

main {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
}

.hero {
    text-align: center;
    padding: 4rem 0;
    background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
    color: white;
    border-radius: 10px;
    margin-bottom: 2rem;
}

.hero h1 {
    font-size: 3rem;
    margin-bottom: 1rem;
}

.product-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
}

.product-card {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.product-card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

.product-card .content {
    padding: 1rem;
}

.product-card h3 {
    margin-bottom: 0.5rem;
}

.product-card .price {
    font-weight: bold;
    color: var(--primary-color);
}

button {
    background-color: var(--primary-color);
    color: white;
    border: none;
    padding: 0.5rem 1rem;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: var(--secondary-color);
}

footer {
    background-color: var(--primary-color);
    color: white;
    text-align: center;
    padding: 1rem 0;
    margin-top: 4rem;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

.product-card {
    animation: fadeIn 0.5s ease-out;
}

@media (max-width: 768px) {
    nav {
        flex-direction: column;
        align-items: flex-start;
    }

    nav ul {
        margin-top: 1rem;
    }

    .hero h1 {
        font-size: 2rem;
    }
}
EOF

# Create main.js
print_message "Creating main.js..."
cat << EOF > js/main.js
document.addEventListener('DOMContentLoaded', () => {
    loadProducts();
    setupContactForm();
});

function loadProducts() {
    fetch('data/products.json')
        .then(response => response.json())
        .then(products => {
            const productList = document.getElementById('product-list');
            productList.innerHTML = '';
            products.forEach(product => {
                const productCard = document.createElement('div');
                productCard.classList.add('product-card');
                productCard.innerHTML = \`
                    <img src="\${product.image}" alt="\${product.name}">
                    <div class="content">
                        <h3>\${product.name}</h3>
                        <p>\${product.description}</p>
                        <p class="price">$\${product.price.toFixed(2)}</p>
                        <button onclick="addToCart(\${product.id})">Add to Cart</button>
                    </div>
                \`;
                productList.appendChild(productCard);
            });
        });
}

function addToCart(productId) {
    console.log(\`Product \${productId} added to cart\`);
    // Implement cart functionality here
}

function setupContactForm() {
    const contactForm = document.getElementById('contact-form');
    contactForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const formData = new FormData(contactForm);
        console.log('Form submitted:', Object.fromEntries(formData));
        contactForm.reset();
        alert('Thank you for your message. We will get back to you soon!');
    });
}
EOF

# Create products.json
print_message "Creating initial products.json..."
cat << EOF > data/products.json
[
    {
        "id": 1,
        "name": "Adventurer's Backpack",
        "price": 79.99,
        "description": "A durable backpack for all your questing needs",
        "image": "https://via.placeholder.com/300x200.png?text=Adventurer's+Backpack"
    },
    {
        "id": 2,
        "name": "Enchanted Sword",
        "price": 199.99,
        "description": "A powerful sword imbued with magical properties",
        "image": "https://via.placeholder.com/300x200.png?text=Enchanted+Sword"
    },
    {
        "id": 3,
        "name": "Healing Potion",
        "price": 29.99,
        "description": "Restores health and cures ailments",
        "image": "https://via.placeholder.com/300x200.png?text=Healing+Potion"
    }
]
EOF

# Create admin login page
print_message "Creating admin login page..."
cat << EOF > admin/login.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - RedQuests Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../css/admin.css">
</head>
<body>
    <div class="login-container">
        <h2><i class="fas fa-user-shield"></i> Admin Login</h2>
        <form id="login-form">
            <input type="text" id="username" placeholder="Username" required>
            <input type="password" id="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <p id="login-message"></p>
    </div>
    <script src="../js/admin.js"></script>
</body>
</html>
EOF

# Create admin.css
print_message "Creating admin.css..."
cat << EOF > css/admin.css
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

:root {
    --primary-color: #ff4136;
    --secondary-color: #0074d9;
    --background-color: #f4f4f4;
    --text-color: #333;
}

body {
    font-family: 'Poppins', sans-serif;
    background-color: var(--background-color);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.login-container, .admin-panel {
    background-color: white;
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

h2 {
    color: var(--primary-color);
    margin-bottom: 1rem;
    text-align: center;
}

form {
    display: flex;
    flex-direction: column;
    gap: 1rem;
}

input, button, textarea {
    padding: 0.5rem;
    border: 1px solid #ddd;
    border-radius: 5px;
}

button {
    background-color: var(--primary-color);
    color: white;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: var(--secondary-color);
}

#login-message {
    margin-top: 1rem;
    font-weight: bold;
    text-align: center;
}

.success {
    color: green;
}

.error {
    color: red;
}

.admin-panel {
    max-width: 800px;
    margin: 2rem auto;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 2rem;
}

th, td {
    padding: 0.5rem;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: var(--primary-color);
    color: white;
}

.action-buttons {
    display: flex;
    gap: 0.5rem;
}

.action-buttons button {
    padding: 0.25rem 0.5rem;
    font-size: 0.8rem;
}

.edit-button {
    background-color: var(--secondary-color);
}

.delete-button {
    background-color: #ff0000;
}
EOF

# Create admin.js
print_message "Creating admin.js..."
cat << EOF > js/admin.js
document.addEventListener('DOMContentLoaded', () => {
    const loginForm = document.getElementById('login-form');
    const loginMessage = document.getElementById('login-message');

    loginForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        if (username === 'admin' && password === 'admin') {
            loginMessage.textContent = 'Login successful! Redirecting to admin panel...';
            loginMessage.className = 'success';
            setTimeout(() => {
                window.location.href = 'panel.html';
            }, 1500);
        } else {
            loginMessage.textContent = 'Invalid username or password. Please try again.';
            loginMessage.className = 'error';
        }
    });
});

// Warning for default credentials
if (window.location.pathname.includes('panel.html')) {
    const warningMessage = document.createElement('div');
    warningMessage.textContent = 'Warning: You are using default credentials. ';
    warningMessage.style.backgroundColor = '#ff4136';
    warningMessage.style.color = 'white';
    warningMessage.style.padding = '1rem';
    warningMessage.style.textAlign = 'center';
    document.body.insertBefore(warningMessage, document.body.firstChild);
}
EOF

# Create admin panel page
print_message "Creating admin panel page..."
cat << EOF > admin/panel.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - RedQuests Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../css/admin.css">
</head>
<body>
    <div class="admin-panel">
        <h2><i class="fas fa-user-shield"></i> Admin Panel</h2>
        <h3>Manage Products</h3>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="product-table-body">
                <!-- Product rows will be dynamically added here -->
            </tbody>
        </table>
        <button id="add-product-btn">Add New Product</button>
    </div>
    <script src="../js/admin-panel.js"></script>
</body>
</html>
EOF

# Create admin-panel.js
print_message "Creating admin-panel.js..."
cat << EOF > js/admin-panel.js
document.addEventListener('DOMContentLoaded', () => {
    let products = [];
    const productTableBody = document.getElementById('product-table-body');
    const addProductBtn = document.getElementById('add-product-btn');

    function loadProducts() {
        fetch('../data/products.json')
            .then(response => response.json())
            .then(data => {
                products = data;
                renderProducts();
            });
    }

    function renderProducts() {
        productTableBody.innerHTML = '';
        products.forEach(product => {
            const row = document.createElement('tr');
            row.innerHTML = \`
                <td>\${product.id}</td>
                <td>\${product.name}</td>
                <td>$\${product.price.toFixed(2)}</td>
                <td>\${product.description}</td>
                <td class="action-buttons">
                    <button class="edit-button" data-id="\${product.id}">Edit</button>
                    <button class="delete-button" data-id="\${product.id}">Delete</button>
                </td>
            \`;
            productTableBody.appendChild(row);
        });
    }

    addProductBtn.addEventListener('click', () => {
        const newProduct = {
            id: products.length + 1,
            name: prompt('Enter product name:'),
            price: parseFloat(prompt('Enter product price:')),
            description: prompt('Enter product description:'),
            image: prompt('Enter product image URL:')
        };
        if (newProduct.name && !isNaN(newProduct.price) && newProduct.description && newProduct.image) {
            products.push(newProduct);
            renderProducts();
            saveProducts();
        } else {
            alert('Invalid input. Please try again.');
        }
    });

    productTableBody.addEventListener('click', (e) => {
        if (e.target.classList.contains('edit-button')) {
            const id = parseInt(e.target.getAttribute('data-id'));
            const product = products.find(p => p.id === id);
            const newName = prompt('Enter new product name:', product.name);
            const newPrice = parseFloat(prompt('Enter new product price:', product.price));
            const newDescription = prompt('Enter new product description:', product.description);
            const newImage = prompt('Enter new product image URL:', product.image);
            if (newName && !isNaN(newPrice) && newDescription && newImage) {
                product.name = newName;
                product.price = newPrice;
                product.description = newDescription;
                product.image = newImage;
                renderProducts();
                saveProducts();
            } else {
                alert('Invalid input. Please try again.');
            }
        } else if (e.target.classList.contains('delete-button')) {
            const id = parseInt(e.target.getAttribute('data-id'));
            if (confirm('Are you sure you want to delete this product?')) {
                products = products.filter(p => p.id !== id);
                renderProducts();
                saveProducts();
            }
        }
    });

    function saveProducts() {
        // In a real-world scenario, this would be an API call to update the server
        console.log('Saving products:', products);
        alert('Products saved successfully!');
    }

    loadProducts();
});
EOF

# Initialize npm and install dependencies
print_message "Initializing npm and installing dependencies..."
npm init -y
npm install --save-dev http-server

# Add start script to package.json
node -e "
    const fs = require('fs');
    const package = JSON.parse(fs.readFileSync('package.json', 'utf8'));
    package.scripts = package.scripts || {};
    package.scripts.start = 'http-server -p 8080';
    fs.writeFileSync('package.json', JSON.stringify(package, null, 2));
"

# Create .gitignore
print_message "Creating .gitignore..."
echo "node_modules/" > .gitignore

# Initialize git repository
git add .
git commit -m "Initial commit for RedQuests Store Platform"

print_message "RedQuests Store Platform setup complete!"
print_message "To start the server, run: npm start"
print_message "Then open http://localhost:8080 in your web browser."
print_message "Admin login: username 'admin', password 'admin'"
print_message "WARNING: Remember to change the default admin credentials for security reasons."
