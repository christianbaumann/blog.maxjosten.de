<?php
define( 'WP_MEMORY_LIMIT', '256M' );
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'd0330cd7' );

/** MySQL database username */
define( 'DB_USER', 'd0330cd7' );

/** MySQL database password */
define( 'DB_PASSWORD', 'tyVVCt5uACtUqmgTbQRd' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '^r_C#QMAvF7]j@J&b]j{%c+}P*:9LhW!uInA1R{!o2DtE#z4jW`hzG]85f6OB4@F' );
define( 'SECURE_AUTH_KEY',  'CDg;<Y,IE%[2M`u7u;C1MU6VeC,dxWCuJ4r&a^cViL@$<W[,/|vu6$l[h5>Wbg}U' );
define( 'LOGGED_IN_KEY',    '{.tfcm^%Ju78nV(H6#sb$}{?4x8tq*&ovekP>mLzUC}QVK_J$@-y:`sJ6d39)?)R' );
define( 'NONCE_KEY',        'z1C%(K1DyB:R`#4;HPFC</K?nA@6Y`_HcI5JxbJ=$TVoJiXB|xFd,T1Zp}qcuewm' );
define( 'AUTH_SALT',        'F5Opi-@(p3r%?H@)Ta.Wo`*jAsJg50Jm],v,*H00DSEXY0987W]^f_sog3wCid?L' );
define( 'SECURE_AUTH_SALT', 'BN1SMM2*r/bDS*h]v&?;#zJsUaVy&uKZO]4[^n^]czLtlLGR$!7J6}k8l.YS2zE;' );
define( 'LOGGED_IN_SALT',   ']$nh=}Ywq@!T%l9l1c.s`7/ofB2y>d9W5tD*kx4hTdT{]bELj334RF)$GLoOb0*%' );
define( 'NONCE_SALT',       '/F0}7bk@*I/Y5q5x3_Y+?-[[Wck+5f.VzMBKhM|Tb!j%Mf?D@%NOILYIwa]wg}P4' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'c1wwi_';
define( 'WP_POST_REVISIONS', 10 );

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';