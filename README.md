![Plastine Coffee House cover](docs/cover.svg)

# Plastine Coffee House Menu

[Live menu](https://abonaeem657.github.io/menu-for-coffeshop1/) | [Screenshots](#screenshots) | [Run locally](#run-locally)


A responsive coffee shop menu with a photo-led landing section, three menu cards, and expandable item lists. `index.html` is a static page with local photos and CSS. `project.php` is a separate database backed version that reads categories from MySQL.

## Live site

The canonical version is published with GitHub Pages at [Plastine Coffee House](https://abonaeem657.github.io/menu-for-coffeshop1/).

## Run locally

Open `index.html` in a browser; it works without a server or login. For the PHP version, install PHP with the mysqli extension and MySQL, import `coffee_shop.sql`, configure the local host and database account in `project.php`, then serve the directory with `php -S 127.0.0.1:8000`. Avoid putting database passwords in Git.

## Features

- Responsive navigation, category cards, and clear item prices.
- Keyboard-accessible expandable lists using native HTML `details` elements.
- Local photography and a warm visual style with no external dependencies.
- Optional database backed menu via PHP and MySQL.

## Screenshots

Captured from the static menu in desktop and narrow layouts:

| Desktop menu | Narrow layout |
| --- | --- |
| ![Coffee shop menu on desktop](docs/screenshots/menu-new.png) | ![Coffee shop menu on a narrow screen](docs/screenshots/menu-mobile.png) |
