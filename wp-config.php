<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         't+?TCy}@7N:Vh[t|bS|lTM$.%ef=zG%8.B@_gQmiE3IVFH.G]8E |4^9n,:Ee.hT');
define('SECURE_AUTH_KEY',  'Je.2Z![)RdYT}&7jg?u~U{p*WR17yJK6I6/J7!EI<}aF-.SqFQq )Jx6}l6B+Yf&');
define('LOGGED_IN_KEY',    'DuC%6--~UN5]nu{B~S>ep1x/-Wh+b)7[4SJB}!A|Ev`&e`2X_rmG369T-1?u}8fK');
define('NONCE_KEY',        '%1~I)o9OZ?!|x*`bmq=y(rd}!Q<b}2n2elVG%`l,3QsCo<)<v$o^QU!buJq7@+3A');
define('AUTH_SALT',        'D CeZEzKgx^|uE^+[-?sNJs2Sf/vTmKiOmJ*W2R<*6j2]b2]VsPqWiL]#$@}%T, ');
define('SECURE_AUTH_SALT', 'p-mz/C>$7}`lQ3]}h|(DUHI@x6:Vzp9>!&L8`+`9Sov.w#CGcQ0-`3@6g*kQ~O_Z');
define('LOGGED_IN_SALT',   'ReFR_Rdc$Cr-j`sx9vytkfZtr4jbamB`W4+#ya+ii8sk<)68|#mB#oA_*|m|i )-');
define('NONCE_SALT',       '.3Xh4mr#a@>Nj$iNiTXx:%j|PY}9J]vtr]cW;TMEm?]jI0{bq:_4+Zt--9xoA0H.');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_baza';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
