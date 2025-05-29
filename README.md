# WordPress-Docker-AI

Turnkey Docker stack bundling WordPress (PHP+Apache), PostgreSQL (8-core tuned), WP-CLI and ChatGPT-powered AI authoring.

## Setup

1. Copy `.env.example` to `.env` and fill in:
   ```ini
   WORDPRESS_DB_USER=wp_user
   WORDPRESS_DB_PASSWORD=wp_pass
   WORDPRESS_DB_NAME=wordpress
   OPENAI_API_KEY=your_openai_key
   # IDX_BROKER_API_KEY=your_idx_broker_key
