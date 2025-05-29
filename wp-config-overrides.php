<?php
// wp-config-overrides.php

// Use the PHP PDO PG driver
define('DB_DRIVER', 'pgsql');

// Example: Add OpenAI API Key constant for your AI plugin
if ( getenv('OPENAI_API_KEY') ) {
    define('OPENAI_API_KEY', getenv('OPENAI_API_KEY'));
}

// Optional: load a custom AI-authoring plugin from vendor
// require_once ABSPATH . 'wp-content/plugins/ai-writer/loader.php';
