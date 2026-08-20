// 1. Dark/Light Mode Toggle
const themeToggleBtn = document.getElementById('theme-toggle');

themeToggleBtn.addEventListener('click', () => {
  document.body.classList.toggle('dark-mode');
  
  if (document.body.classList.contains('dark-mode')) {
    themeToggleBtn.textContent = '☀️ Light Mode';
  } else {
    themeToggleBtn.textContent = '🌙 Dark Mode';
  }
});

// 2. Interactive Form Submission
const contactForm = document.getElementById('contact-form');
const feedback = document.getElementById('form-feedback');

contactForm.addEventListener('submit', (e) => {
  e.preventDefault();
  
  const nameInput = document.getElementById('name').value;
  feedback.textContent = `Thanks for reaching out, ${nameInput}! Your message has been sent.`;
  feedback.style.color = 'var(--primary-color)';
  
  contactForm.reset();
});