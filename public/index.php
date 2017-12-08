<?php
define("BASEURL", "http://".$_SERVER['SERVER_NAME']);

define('PAYTM_ENVIRONMENT', 'DEV'); // PROD



$PAYTM_DOMAIN = "pguat.paytm.com";
if (PAYTM_ENVIRONMENT == 'PROD') {
    $PAYTM_DOMAIN = 'secure.paytm.in';
}

if (PAYTM_ENVIRONMENT == 'PROD') {
    $PAYTM_DOMAIN = 'secure.paytm.in';
    define('PAYTM_MERCHANT_KEY', 'T0xK5aXDPpdlJgiv'); //Change this constant's value with Merchant key downloaded from portal
    define('PAYTM_MERCHANT_MID', 'KRoutS01321525245753'); //Change this constant's value with MID (Merchant ID) received from Paytm
    define('PAYTM_MERCHANT_WEBSITE', 'KRoutSWEB'); //Change this constant's value with Website name received from Paytm
    define('INDUSTRY_TYPE_ID', 'Retail109'); //Change this constant's value with Website name received from Paytm
    define('CHANNEL_ID', 'WEB'); //Change this constant's value with Website name received from Paytm

} else {
   // echo "jhgjhdgjdshg"; exit;
    // for Testing Purposes
    define('PAYTM_MERCHANT_KEY', 'lj6x_KqXctJA0!8O'); //Change this constant's value with Merchant key downloaded from portal
    define('PAYTM_MERCHANT_MID', 'KRIOUT52017443355424'); //Change this constant's value with MID (Merchant ID) received from Paytm
    define('PAYTM_MERCHANT_WEBSITE', 'WEB_STAGING'); //Change this constant's value with Website name received from Paytm
    define('INDUSTRY_TYPE_ID', 'Retail'); //Change this constant's value with Website name received from Paytm
    define('CHANNEL_ID', 'WEB'); //Change this constant's value with Website name received from Paytm

}
define('PAYTM_CALLBACK_URL',"http://".$_SERVER['SERVER_NAME']."/cart/response");

define('PAYTM_REFUND_URL', 'https://'.$PAYTM_DOMAIN.'/oltp/HANDLER_INTERNAL/REFUND');
define('PAYTM_STATUS_QUERY_URL', 'https://'.$PAYTM_DOMAIN.'/oltp/HANDLER_INTERNAL/TXNSTATUS');
define('PAYTM_TXN_URL', 'https://'.$PAYTM_DOMAIN.'/oltp-web/processTransaction');


$basedir = dirname(__DIR__);

define('RESUME_DIR_PATH', __DIR__."/resume/");

// This is the mail config
define('MAIL_HOST', "md-in-34.webhostbox.net");
define('MAIL_USERNAME', "broadcast@jobstonaukri.com");
define('MAIL_PASSWORD', "naveen");
define('MAIL_CONNECTION', "ssl");
define('MAIL_PORT', "465");






//echo RESUME_DIR_PATH; exit;

/**
 * This makes our life easier when dealing with paths. Everything is relative
 * to the application root now.
 */
chdir(dirname(__DIR__));

// Decline static file requests back to the PHP built-in webserver
if (php_sapi_name() === 'cli-server') {
    $path = realpath(__DIR__ . parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
    if (__FILE__ !== $path && is_file($path)) {
        return false;
    }
    unset($path);
}

// Setup autoloading
require 'init_autoloader.php';

// Run the application!
Zend\Mvc\Application::init(require 'config/application.config.php')->run();
