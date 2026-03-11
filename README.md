# 2048 Game

A modern, responsive implementation of the classic 2048 puzzle game, built with Nuxt 4, Nuxt UI, and Tailwind CSS.

> **Note**
> This project is for educational and demonstration purposes, showcasing clean architecture, composable logic, and a delightful user experience.

---

## 🚀 Features

- **Classic 2048 gameplay**: Merge tiles to reach 2048!
- **Keyboard & touch controls**: Play with arrow keys, WASD, or swipe on mobile.
- **Responsive design**: Optimized for desktop and mobile devices.
- **Persistent best score**: Your best score is saved locally.
- **Modern UI**: Built with Nuxt UI and Tailwind CSS for a sleek look.
- **No server required**: 100% client-side, no backend needed.

---

## 🖥️ Preview

![2048 Game Screenshot](public/preview.png)

---

## 🛠️ Getting Started

### Prerequisites
- [Node.js](https://nodejs.org/) (v18+ recommended)
- [pnpm](https://pnpm.io/) (preferred)

### Installation

```sh
pnpm install
```

### Run in Development

```sh
pnpm dev
```

The app will be available at [http://localhost:3000](http://localhost:3000).

### Build for Production

```sh
pnpm build
```

### Preview Production Build

```sh
pnpm preview
```

---

## 📁 Project Structure

```
app/
  components/game/    # Game UI components (Board, Tile, Header, etc.)
  composables/        # Game logic and state management
  pages/              # Main page (index.vue)
  assets/css/         # Tailwind and custom styles
public/               # Static files (robots.txt, preview.png)
nuxt.config.ts        # Nuxt configuration
```

---

## 🎮 How to Play

- **Move tiles**: Use arrow keys, WASD, or swipe on mobile.
- **Merge tiles**: Tiles with the same number merge into one when they touch.
- **Goal**: Reach the 2048 tile!
- **Restart**: Click "New Game" or "Play Again" to reset.

> [!TIP]
> Try to reach the highest score possible. Your best score is saved in your browser.

---

## 📦 Built With

- [Nuxt 4](https://nuxt.com/)
- [Nuxt UI](https://ui.nuxt.com/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Vue 3](https://vuejs.org/)

---

## 🙏 Acknowledgements

- Inspired by the original [2048](https://play2048.co/) by Gabriele Cirulli.
- [Nuxt](https://nuxt.com/) and [Nuxt UI](https://ui.nuxt.com/) teams for their amazing frameworks.

---

> [!NOTE]
> For questions or feedback, please open an issue or discussion in this repository.
# test
# test PR update
