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
            row.innerHTML = `
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>$${product.price.toFixed(2)}</td>
                <td class="action-buttons">
                    <button class="edit-button" data-id="${product.id}">Edit</button>
                    <button class="delete-button" data-id="${product.id}">Delete</button>
                </td>
            `;
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
