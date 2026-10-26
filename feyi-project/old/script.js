// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            e.preventDefault();
            target.scrollIntoView({ behavior: 'smooth', block: 'start' });
        }
    });
});

// Highlight active nav link on scroll
const sections = document.querySelectorAll('section[id]');
const navLinks = document.querySelectorAll('.nav-links a');

window.addEventListener('scroll', () => {
    let current = '';
    sections.forEach(section => {
        const sectionTop = section.offsetTop - 100;
        if (window.scrollY >= sectionTop) {
            current = section.getAttribute('id');
        }
    });
    navLinks.forEach(link => {
        link.style.color = '';
        if (link.getAttribute('href') === `#${current}`) {
            link.style.color = 'var(--teal)';
        }
    });
});

// Mobile menu toggle (simple: show/hide nav links)
const navContainer = document.querySelector('.nav-container');
const navLinksList = document.querySelector('.nav-links');

if (navContainer && navLinksList) {
    const toggleBtn = document.createElement('button');
    toggleBtn.innerHTML = '☰';
    toggleBtn.className = 'mobile-toggle';
    toggleBtn.setAttribute('aria-label', 'Toggle navigation menu');
    navContainer.appendChild(toggleBtn);

    toggleBtn.addEventListener('click', () => {
        navLinksList.classList.toggle('mobile-open');
    });
}