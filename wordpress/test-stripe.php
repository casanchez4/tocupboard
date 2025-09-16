<?php
// Definimos ABSPATH para que wp-config.php no explote
define('ABSPATH', __DIR__ . '/');

// Incluimos wp-config.php pero evitamos cargar wp-settings.php
ob_start();
include '/var/www/html/wp-config.php';
ob_end_clean();

// Mostramos solo las constantes de Stripe
echo "Stripe PK: " . STRIPE_TEST_PK . PHP_EOL;
echo "Stripe SK: " . STRIPE_TEST_SK . PHP_EOL;
?>