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
        productCard.innerHTML = `
            <img src="${product.image}" alt="${product.name}">
            <div class="content">
                <h3>${product.name}</h3>
                <p class="price">$${product.price.toFixed(2)}</p>
                <button class="add-to-cart" data-id="${product.id}">Add to Cart</button>
            </div>
        `;
        productList.appendChild(productCard);
    });

    // Add to cart functionality (placeholder)
    document.querySelectorAll('.add-to-cart').forEach(button => {
        button.addEventListener('click', () => {
            const productId = button.getAttribute('data-id');
            alert(`Product ${productId} added to cart!`);
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
