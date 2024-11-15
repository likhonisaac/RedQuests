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
