# My Portfolio Website

A simple, modern, and responsive portfolio website built with HTML, CSS, and JavaScript.

## Features

- 🎨 Clean and modern design
- 🌓 Dark/Light theme toggle
- 📱 Fully responsive
- ⚡ Smooth scrolling navigation
- 🎭 Smooth animations
- 💾 Theme preference saved in localStorage

## Technologies Used

- HTML5
- CSS3
- JavaScript (ES6+)

## How to Use

1. Clone this repository
2. Open `index.html` in your browser
3. Customize the content with your own information

## Customization

- Edit `index.html` to change the content
- Modify `style.css` to adjust colors and styling
- Update `script.js` for additional functionality

## Deployment

### Docker Deployment

**Using Docker Compose (Recommended):**
```bash
docker-compose up -d
```
Access at: http://localhost:8080

**Using Docker only:**
```bash
# Build the image
docker build -t portfolio-website .

# Run the container
docker run -d -p 8080:80 --name portfolio portfolio-website
```

**Docker Commands:**
```bash
# Stop container
docker-compose down

# View logs
docker-compose logs -f

# Rebuild after changes
docker-compose up -d --build
```

### Other Deployment Options
This site can be easily deployed on:
- Docker (containerized)
- GitHub Pages
- Netlify
- Vercel
- Any static hosting service

## Author

Vishal
- GitHub: [@vishal702](https://github.com/vishal702)

## License

Feel free to use this template for your own portfolio!