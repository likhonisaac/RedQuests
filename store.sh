#!/bin/bash

# Function to display colorful messages
print_message() {
  echo -e "\e[1;34m$1\e[0m"
}

# Check for required commands
check_command() {
  if ! command -v $1 &> /dev/null; then
    echo "Error: $1 is required but not installed. Please install it and try again."
    exit 1
  fi
}

# Check for required commands
check_command python3
check_command curl

# Create project structure
print_message "Creating project structure..."
mkdir -p {css,js,images,admin}

# Create index.html
print_message "Creating index.html..."
cat << EOF > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav>
            <div class="logo">Modern Store</div>
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
            <h1>Welcome to Modern Store</h1>
            <p>Discover our amazing products!</p>
        </section>
        <section id="products" class="products">
            <h2>Our Products</h2>
            <div id="product-list" class="product-grid"></div>
        </section>
        <section id="about" class="about">
            <h2>About Us</h2>
            <p>We are passionate about delivering high-quality products to our customers.</p>
        </section>
        <section id="contact" class="contact">
            <h2>Contact Us</h2>
            <form id="contact-form">
                <input type="text" placeholder="Name" required>
                <input type="email" placeholder="Email" required>
                <textarea placeholder="Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Modern Store. All rights reserved.</p>
    </footer>
    <script src="js/main.js"></script>
</body>
</html>
EOF

# Create style.css
print_message "Creating style.css..."
cat << EOF > css/style.css
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');

:root {
    --primary-color: #3498db;
    --secondary-color: #2ecc71;
    --background-color: #f4f4f4;
    --text-color: #333;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Roboto', sans-serif;
    line-height: 1.6;
    color: var(--text-color);
    background-color: var(--background-color);
}

header {
    background-color: var(--primary-color);
    color: white;
    padding: 1rem 0;
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

.admin-link {
    background-color: var(--secondary-color);
    padding: 0.5rem 1rem;
    border-radius: 5px;
}

main {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
}

.hero {
    text-align: center;
    padding: 4rem 0;
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
    transition: transform 0.3s ease;
}

.product-card:hover {
    transform: translateY(-5px);
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

.about, .contact {
    margin-top: 4rem;
}

form {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    max-width: 500px;
    margin: 0 auto;
}

input, textarea, button {
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

footer {
    background-color: var(--primary-color);
    color: white;
    text-align: center;
    padding: 1rem 0;
    margin-top: 4rem;
}
EOF

# Create main.js
print_message "Creating main.js..."
cat << EOF > js/main.js
document.addEventListener('DOMContentLoaded', () => {
    const products = [
        { id: 1, name: "Modern Chair", price: 199.99, image: "https://via.placeholder.com/300x200.png?text=Modern+Chair" },
        { id: 2, name: "Elegant Lamp", price: 89.99, image: "https://via.placeholder.com/300x200.png?text=Elegant+Lamp" },
        { id: 3, name: "Stylish Table", price: 299.99, image: "https://via.placeholder.com/300x200.png?text=Stylish+Table" },
        { id: 4, name: "Cozy Sofa", price: 599.99, image: "https://via.placeholder.com/300x200.png?text=Cozy+Sofa" },
    ];

    const productList = document.getElementById('product-list');
    
    products.forEach(product => {
        const productCard = document.createElement('div');
        productCard.classList.add('product-card');
        productCard.innerHTML = \`
            <img src="\${product.image}" alt="\${product.name}">
            <div class="content">
                <h3>\${product.name}</h3>
                <p class="price">$\${product.price.toFixed(2)}</p>
                <button class="add-to-cart" data-id="\${product.id}">Add to Cart</button>
            </div>
        \`;
        productList.appendChild(productCard);
    });

    // Add to cart functionality (placeholder)
    document.querySelectorAll('.add-to-cart').forEach(button => {
        button.addEventListener('click', () => {
            const productId = button.getAttribute('data-id');
            alert(\`Product \${productId} added to cart!\`);
        });
    });

    // Contact form submission (placeholder)
    const contactForm = document.getElementById('contact-form');
    contactForm.addEventListener('submit', (e) => {
        e.preventDefault();
        alert('Thank you for your message. We will get back to you soon!');
        contactForm.reset();
    });
});
EOF

# Create admin login page
print_message "Creating admin login page..."
cat << EOF > admin/login.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');

body {
    font-family: 'Roboto', sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.login-container {
    background-color: white;
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
}

h2 {
    color: #3498db;
    margin-bottom: 1rem;
}

form {
    display: flex;
    flex-direction: column;
    gap: 1rem;
}

input, button {
    padding: 0.5rem;
    border: 1px solid #ddd;
    border-radius: 5px;
}

button {
    background-color: #3498db;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #2980b9;
}

#login-message {
    margin-top: 1rem;
    font-weight: bold;
}

.success {
    color: #2ecc71;
}

.error {
    color: #e74c3c;
}

.admin-panel {
    max-width: 800px;
    margin: 0 auto;
    padding: 2rem;
}

.admin-panel h2 {
    margin-bottom: 2rem;
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
    background-color: #3498db;
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
    background-color: #f39c12;
}

.delete-button {
    background-color: #e74c3c;
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
    warningMessage.textContent = 'Warning: You are using default credentials. Please change them for security reasons.';
    warningMessage.style.backgroundColor = '#f39c12';
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
    <title>Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../css/admin.css">
</head>
<body>
    <div class="admin-panel">
        <h2><i class="fas fa-user-shield"></i> Admin Panel</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
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
    const products = [
        { id: 1, name: "Modern Chair", price: 199.99 },
        { id: 2, name: "Elegant Lamp", price: 89.99 },
        { id: 3, name: "Stylish Table", price: 299.99 },
        { id: 4, name: "Cozy Sofa", price: 599.99 },
    ];

    const productTableBody = document.getElementById('product-table-body');
    const addProductBtn = document.getElementById('add-product-btn');

    function renderProducts() {
        productTableBody.innerHTML = '';
        products.forEach(product => {
            const row = document.createElement('tr');
            row.innerHTML = \`
                <td>\${product.id}</td>
                <td>\${product.name}</td>
                <td>$\${product.price.toFixed(2)}</td>
                <td class="action-buttons">
                    <button class="edit-button" data-id="\${product.id}">Edit</button>
                    <button class="delete-button" data-id="\${product.id}">Delete</button>
                </td>
            \`;
            productTableBody.appendChild(row);
        });
    }

    renderProducts();

    addProductBtn.addEventListener('click', () => {
        const newProduct = {
            id: products.length + 1,
            name: prompt('Enter product name:'),
            price: parseFloat(prompt('Enter product price:'))
        };
        if (newProduct.name && !isNaN(newProduct.price)) {
            products.push(newProduct);
            renderProducts();
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
            if (newName && !isNaN(newPrice)) {
                product.name = newName;
                product.price = newPrice;
                renderProducts();
            } else {
                alert('Invalid input. Please try again.');
            }
        } else if (e.target.classList.contains('delete-button')) {
            const id = parseInt(e.target.getAttribute('data-id'));
            if (confirm('Are you sure you want to delete this product?')) {
                const index = products.findIndex(p => p.id === id);
                products.splice(index, 1);
                renderProducts();
            }
        }
    });
});
EOF

# Start Python HTTP server
print_message "Starting Python HTTP server..."
python3 -m http.server 8000 &

# Open the website in the default browser
print_message "Opening the website in your default browser..."
sleep 2
if command -v xdg-open &> /dev/null; then
    xdg-open http://localhost:8000
elif command -v open &> /dev/null; then
    open http://localhost:8000
else
    echo "Please open http://localhost:8000 in your web browser."
fi

print_message "Setup complete! The website is now running at http://localhost:8000"
print_message "Admin login: username 'admin', password 'admin'"
print_message "WARNING: Remember to change the default admin credentials for security reasons."
